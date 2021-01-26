Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4726A30474F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 20:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775576E086;
	Tue, 26 Jan 2021 18:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A366E086
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 18:59:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23707257-1500050 for multiple; Tue, 26 Jan 2021 18:59:50 +0000
MIME-Version: 1.0
In-Reply-To: <cc82f99e-9a78-215d-32ad-a1c9ac2afac9@linux.intel.com>
References: <20200106234703.645168-1-matthew.auld@intel.com>
 <cc82f99e-9a78-215d-32ad-a1c9ac2afac9@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 18:59:52 +0000
Message-ID: <161168759268.2943.16198172842245466140@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: split up i915_gem_gtt
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

Quoting Tvrtko Ursulin (2021-01-26 17:13:24)
> 
> 
> On 06/01/2020 23:47, Matthew Auld wrote:
> > Attempt to split i915_gem_gtt.[ch] into more manageable chunks.
> 
> > +void clear_pages(struct i915_vma *vma)
> > +{
> > +     GEM_BUG_ON(!vma->pages);
> > +
> > +     if (vma->pages != vma->obj->mm.pages) {
> > +             sg_free_table(vma->pages);
> > +             kfree(vma->pages);
> > +     }
> > +     vma->pages = NULL;
> > +
> > +     memset(&vma->page_sizes, 0, sizeof(vma->page_sizes));
> > +}
> 
> We probably want to add a prefix now that the function is exported.

Or follow through on eliminating the callback.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
