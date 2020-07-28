Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1AD230C4D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 16:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9006E2DD;
	Tue, 28 Jul 2020 14:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B176E2DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 14:22:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21958832-1500050 for multiple; Tue, 28 Jul 2020 15:22:23 +0100
MIME-Version: 1.0
In-Reply-To: <56599d70-6c62-4246-ab85-398ae24f8353@linux.intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-7-chris@chris-wilson.co.uk>
 <56599d70-6c62-4246-ab85-398ae24f8353@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 15:22:23 +0100
Message-ID: <159594614375.665.4500041049846050920@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 07/66] drm/i915: Keep the most recently used
 active-fence upon discard
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-17 13:38:01)
> 
> On 15/07/2020 12:50, Chris Wilson wrote:
> > +     /* Even if we have not used the cache, we may still have a barrier */
> > +     if (!ref->cache)
> > +             ref->cache = fetch_node(ref->tree.rb_node);
> > +
> > +     /* Keep the MRU cached node for reuse */
> > +     if (ref->cache) {
> > +             /* Discard all other nodes in the tree */
> > +             rb_erase(&ref->cache->node, &ref->tree);
> > +             root = ref->tree;
> > +
> > +             /* Rebuild the tree with only the cached node */
> > +             rb_link_node(&ref->cache->node, NULL, &ref->tree.rb_node);
> > +             rb_insert_color(&ref->cache->node, &ref->tree);
> > +             GEM_BUG_ON(ref->tree.rb_node != &ref->cache->node);
> > +     }
> >   
> >       spin_unlock_irqrestore(&ref->tree_lock, flags);
> >   
> > @@ -156,6 +168,7 @@ __active_retire(struct i915_active *ref)
> >       /* ... except if you wait on it, you must manage your own references! */
> >       wake_up_var(ref);
> >   
> > +     /* Finally free the discarded timeline tree  */
> >       rbtree_postorder_for_each_entry_safe(it, n, &root, node) {
> >               GEM_BUG_ON(i915_active_fence_isset(&it->base));
> >               kmem_cache_free(global.slab_cache, it);
> 
> Here it frees everything.. so how does ref->cache, being in the tree, 
> survives?

This is the old root which does not contain ref->cache, as we moved that
to become the new tree.

             /* Discard all other nodes in the tree */
             rb_erase(&ref->cache->node, &ref->tree);
             root = ref->tree;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
