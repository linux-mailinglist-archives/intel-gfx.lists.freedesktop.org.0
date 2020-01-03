Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C9912F818
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 13:18:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68FD96E2E1;
	Fri,  3 Jan 2020 12:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FAE86E2E1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 12:18:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19759454-1500050 for multiple; Fri, 03 Jan 2020 12:17:59 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
References: <20200103121505.1862904-1-chris@chris-wilson.co.uk>
Message-ID: <157805387736.10181.3309027688829519130@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 03 Jan 2020 12:17:57 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Extend mmap support for
 lmem
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-03 12:15:04)
> From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> 
> Local memory objects are similar to our usual scatterlist, but instead
> of using the struct page stored therein, we need to use the
> sg->dma_address.
> 
> Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 21 ++++++++++-----
>  drivers/gpu/drm/i915/i915_drv.h          |  6 ++---
>  drivers/gpu/drm/i915/i915_mm.c           | 34 +++++++++++++++---------
>  3 files changed, 39 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index ed0d9a2f0e7b..37efd95c086d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -217,6 +217,7 @@ static vm_fault_t i915_error_to_vmf_fault(int err)
>  
>         case -ENOSPC: /* shmemfs allocation failure */
>         case -ENOMEM: /* our allocation failure */
> +       case -ENXIO:

Why not SIGBUS?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
