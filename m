Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C559C2320C2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 16:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9226E4F9;
	Wed, 29 Jul 2020 14:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B72636E0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 14:39:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21970229-1500050 for multiple; Wed, 29 Jul 2020 15:39:03 +0100
MIME-Version: 1.0
In-Reply-To: <0b558bfe-7baa-4373-abfe-e739971ee288@linux.intel.com>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
 <54de929a-9449-8ac2-a8bd-641a61d0525e@linux.intel.com>
 <159594649917.665.6631422765642650487@build.alporthouse.com>
 <3274fa3b-7c34-1925-2cd6-145c73acb63b@linux.intel.com>
 <159603012686.8877.9862976259674771406@build.alporthouse.com>
 <0b558bfe-7baa-4373-abfe-e739971ee288@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 15:39:03 +0100
Message-ID: <159603354384.25916.14908984948603768019@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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

Quoting Tvrtko Ursulin (2020-07-29 15:22:26)
> 
> On 29/07/2020 14:42, Chris Wilson wrote:
> >>          parent = NULL;
> >>          p = &ref->tree.rb_node;
> >>          while (*p) {
> >>                  parent = *p;
> >>
> >>                  node = rb_entry(parent, struct active_node, node);
> >>                  if (node->timeline == idx) {
> >>                          kmem_cache_free(global.slab_cache, prealloc);
> >>                          goto out;
> >>                  }
> >>
> >>                  if (node->timeline < idx)
> >>                          p = &parent->rb_right;
> >>                  else
> >>                          p = &parent->rb_left;
> >>                          WRITE_ONCE(ref->cache, it);
> >>                          break;
> >>                  }
> >>          }
> >> ...
> >>
> >> Tree walk could be consolidated between the two.
> > 
> > This tree walk is subtly different, as we aren't just interested in the
> > node, but its parent. The exact repetitions have been consolidated into
> > __active_lookup.
> 
> It returns the previous/parent node if idx is not found so yeah, common 
> helper would need to have two out parameters. One returns the match, or 
> NULL, another returns the previous/parent node. You think that is not 
> worth it?

I remember in the past wanting to keep the lookup separate from
insertion as the compiler generated better code if we didn't track the
parent pointer.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
