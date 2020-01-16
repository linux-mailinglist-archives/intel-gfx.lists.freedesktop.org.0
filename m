Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782E413F998
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAC86EEAD;
	Thu, 16 Jan 2020 19:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86C86EEAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:34:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19907102-1500050 for multiple; Thu, 16 Jan 2020 19:34:25 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200116192809.843138-1-matthew.auld@intel.com>
 <20200116192809.843138-2-matthew.auld@intel.com>
In-Reply-To: <20200116192809.843138-2-matthew.auld@intel.com>
Message-ID: <157920326324.7612.14701492451440992233@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 19:34:23 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/userptr: fix size calculation
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

Quoting Matthew Auld (2020-01-16 19:28:09)
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 077b8f7cf6cb..0d7820c49f5b 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -379,6 +379,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>         pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
>         vaddr = kmap_atomic_px(i915_pt_entry(pd, gen8_pd_index(idx, 1)));
>         do {
> +               GEM_BUG_ON(iter->sg->length < PAGE_SIZE);

s/PAGE_SIZE/I915_GTT_PAGE_SIZE/

>                 vaddr[gen8_pd_index(idx, 0)] = pte_encode | iter->dma;
>  
>                 iter->dma += I915_GTT_PAGE_SIZE;
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
