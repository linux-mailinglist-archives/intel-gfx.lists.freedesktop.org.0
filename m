Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF8E305C43
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 13:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668EA6E5BB;
	Wed, 27 Jan 2021 12:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E195C6E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 12:58:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23714225-1500050 for multiple; Wed, 27 Jan 2021 12:58:27 +0000
MIME-Version: 1.0
In-Reply-To: <20210127124809.384080-5-matthew.auld@intel.com>
References: <20210127124809.384080-1-matthew.auld@intel.com>
 <20210127124809.384080-5-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 12:58:30 +0000
Message-ID: <161175231008.2943.16638950071766028679@build.alporthouse.com>
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
> From: Imre Deak <imre.deak@intel.com>
> 
> On DG1 A0/B0 steppings the first 1MB of local memory must be reserved.
> One reason for this is that the 0xA0000-0xB0000 range is not accessible
> by the display, probably since this region is redirected to another
> memory location for legacy VGA compatibility.
> 
> BSpec: 50586
> Testcase: igt/kms_big_fb/linear-64bpp-rotate-0
> 
> v2:
> - Reserve the memory on B0 as well.
> 
> v3: replace DRM_DEBUG/DRM_ERROR with drm_dbg/drm_err
> 
> v4: fix the insanity
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 45 +++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 71bb38706dbf..763b21980d74 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -143,6 +143,41 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
>         return mem;
>  }
>  
> +static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
> +                                    u64 *start, u32 *size)
> +{
> +       if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
> +               return false;
> +
> +       *start = 0;
> +       *size = SZ_1M;
> +
> +       drm_dbg(&uncore->i915->drm, "LMEM: reserved legacy low-memory [0x%llx-0x%llx]\n",
> +               *start, *start + *size);
> +
> +       return true;
> +}
> +
> +static int reserve_lowmem_region(struct intel_uncore *uncore,
> +                                struct intel_memory_region *mem)
> +{
> +       u64 reserve_start;
> +       u32 reserve_size;
> +       int ret;
> +
> +       if (!get_legacy_lowmem_region(uncore, &reserve_start, &reserve_size))
> +               return 0;
> +
> +       if (!reserve_size)
> +               return 0;

We can remove this check now as well since we can be assured it is
handled for us by get_legacy_lowmem_region()

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
