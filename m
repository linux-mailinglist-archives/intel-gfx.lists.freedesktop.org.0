Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3B030429F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 16:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE1A86E46B;
	Tue, 26 Jan 2021 15:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908166E46B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 15:31:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23705126-1500050 for multiple; Tue, 26 Jan 2021 15:31:18 +0000
MIME-Version: 1.0
In-Reply-To: <20210126151259.253885-3-matthew.auld@intel.com>
References: <20210126151259.253885-1-matthew.auld@intel.com>
 <20210126151259.253885-3-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 15:31:19 +0000
Message-ID: <161167507978.2943.12894973989711479272@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 3/8] drm/i915: reserve stolen for LMEM
 region
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

Quoting Matthew Auld (2021-01-26 15:12:54)
> From: CQ Tang <cq.tang@intel.com>
> 
> The lmem region needs to remove the stolen part, which should just be a
> case of snipping it off the end.
> 
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 12 ++++++++----
>  drivers/gpu/drm/i915/i915_reg.h             |  2 ++
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index b676dc67dc2a..4da808e35ecb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -141,17 +141,20 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)
>  static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>  {
>         struct drm_i915_private *i915 = gt->i915;
> +       struct intel_uncore *uncore = &i915->uncore;

gt->uncore

(See the plan is starting to come together!)

>         struct pci_dev *pdev = i915->drm.pdev;
>         struct intel_memory_region *mem;
>         resource_size_t io_start;
> -       resource_size_t size;
> +       resource_size_t lmem_size;
> +
> +       /* Stolen starts from GSMBASE on DG1 */
> +       lmem_size = intel_uncore_read64(uncore, GEN12_GSMBASE);
>  
>         io_start = pci_resource_start(pdev, 2);
> -       size = pci_resource_len(pdev, 2);

Trust nobody, certainly not the HW. Check that lmem_size is < size.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
