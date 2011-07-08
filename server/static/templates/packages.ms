            <div class="wrapper">
                <div class="side-bar">
                    <input type="search" results="5" class="s" placeholder="Search.." class="rounded-three">
                </div>
                
                <div class="pack-list">
                    {foreach $packages as $i => $pack}
                    <div class="pack">
                        <div class="categories">
                            {$categories=$pack.categories}
                            {foreach $categories as $i => $category}
                                {if $category eq "ADMIN"}
                                    {$category="ADMN"}
                                {/if}
                                <a href="#/category/{$category}" class="buttons small">{$category}</a>
                            {foreachelse}
                                ...
                            {/foreach}
                        </div>
                        <span class="name" onClick="window.location = '#/package/{$pack.name}';">{$pack.name}</span>
                        <div class="description" onClick="window.location = '#/package/{$pack.name}';">
                            <span class="maintainer">Maintained by: {$pack.maintainer}</span>
                            <span class="desc">{$pack.description}</span>
                        </div>
                    </div>
                    {foreachelse}
                    <div class="error">
                        <span class="description">No Results</span>
                    </div>
                    {/foreach}
                </div>
            </div>