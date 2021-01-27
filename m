Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B62C305C52
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 14:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2556D6E81B;
	Wed, 27 Jan 2021 13:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9DB6E81B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 13:00:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23714236-1500050 for multiple; Wed, 27 Jan 2021 12:59:55 +0000
MIME-Version: 1.0
In-Reply-To: <20210127124809.384080-5-matthew.auld@intel.com>
References: <20210127124809.384080-1-matthew.auld@intel.com>
 <20210127124809.384080-5-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:59:57 +0000
Message-ID: <161175239786.2943.3294052798583479032@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v4 5/8] drm/i915/dg1: Reserve first 1MB of
 local memory
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

Quoting Matthew Auld (2021-01-27 12:48:06)
>  static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>  {
>         struct drm_i915_private *i915 = gt->i915;
> @@ -167,6 +202,16 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>                                          I915_GTT_PAGE_SIZE_4K,
>                                          io_start,
>                                          &intel_region_lmem_ops);
> +       if (!IS_ERR(mem)) {
> +               int err;
> +
> +               err = reserve_lowmem_region(uncore, mem);
> +               if (err) {
> +                       intel_memory_region_put(mem);
> +                       return ERR_PTR(err);

Just a worry here, are we likely to antagonise Joonas by having multiple
error paths?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
