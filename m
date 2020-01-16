Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024F413FB40
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 22:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1C06E2CF;
	Thu, 16 Jan 2020 21:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680F76E2CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 21:19:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19908101-1500050 for multiple; Thu, 16 Jan 2020 21:19:42 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200116203150.923826-1-matthew.auld@intel.com>
 <20200116203150.923826-2-matthew.auld@intel.com>
In-Reply-To: <20200116203150.923826-2-matthew.auld@intel.com>
Message-ID: <157920957985.7612.3210808611851053700@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 21:19:39 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/userptr: fix size
 calculation
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

Quoting Matthew Auld (2020-01-16 20:31:50)
> If we create a rather large userptr object(e.g 1ULL << 32) we might
> shift past the type-width of num_pages: (int)num_pages << PAGE_SHIFT,
> resulting in a totally bogus sg_table, which fortunately will eventually
> manifest as:
> 
> gen8_ppgtt_insert_huge:463 GEM_BUG_ON(iter->sg->length < page_size)
> kernel BUG at drivers/gpu/drm/i915/gt/gen8_ppgtt.c:463!
> 
> v2: more unsigned long
>     prefer I915_GTT_PAGE_SIZE
> 
> Fixes: 5cc9ed4b9a7a ("drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>

Split into 2 and
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
