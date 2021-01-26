Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02CC3042BA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0248D6E0D0;
	Tue, 26 Jan 2021 15:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1D46E0D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:39:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23705211-1500050 for multiple; Tue, 26 Jan 2021 15:39:21 +0000
MIME-Version: 1.0
In-Reply-To: <20210126151259.253885-5-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
 <20210126151259.253885-5-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:39:22 +0000
Message-ID: <161167556285.2943.15699055590999105925@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915/dg1: Reserve first 1MB of
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

Quoting Matthew Auld (2021-01-26 15:12:56)
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
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 52 +++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 4da808e35ecb..3b66221abe01 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -138,6 +138,48 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
>         return mem;
>  }
>  
> +static void get_legacy_lowmem_region(struct intel_uncore *uncore,
> +                                    u64 *start, u32 *size)
> +{
> +       *start = 0;
> +       *size = 0;
> +
> +       if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
> +               return;
> +
> +       *size = SZ_1M;
> +
> +       drm_dbg(&uncore->i915->drm, "LMEM: reserved legacy low-memory [0x%llx-0x%llx]\n",
> +               *start, *start + *size);
> +}
> +
> +static int reserve_lowmem_region(struct intel_uncore *uncore,
> +                                struct intel_memory_region *mem)
> +{
> +       u64 reserve_start;
> +       u64 reserve_end;
> +       u64 region_start;
> +       u32 region_size;
> +       int ret;
> +
> +       get_legacy_lowmem_region(uncore, &region_start, &region_size);
> +       reserve_start = region_start;
> +       reserve_end = region_start + region_size;

I'll bite. Why the impedance mismatch with a function introduced for
exactly this purpose?

if (!legacy_lowmem_region(uncore, &start, &end))
	return 0;

-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
