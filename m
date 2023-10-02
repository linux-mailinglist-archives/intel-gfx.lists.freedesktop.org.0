Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6237B54CB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A13489A94;
	Mon,  2 Oct 2023 14:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091B510E2ED
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696256231; x=1727792231;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CKYseWHWNxx6C1HfqwBCFRKW1BhJ6XqrZX3V310KsKw=;
 b=lyFFKP2V6k/wBQ29g237cHgFKdEsWuYdoI7pqOc1i4M+l2kZodnIkCDc
 x7K8ulJ6MluxTrmaUNnPUh5hbwpGUlKcGFraK1ARo20FB5Ym3nM+e0zAO
 o5sCFABJiviwuBNxxH7FKnOxBPD46qJ9yHT0cV+YC+wseCSVpqlqLUcyB
 d5i2vK8SPG2EYsxyD0fZ9tSOjvRw0gesM1h24FauCLRRyIMGqA4fzmbl0
 XNUY2WHcthAHT6FcVeUvOeqYTBasVTBOl4C1btvBQ7yw5RSzCqyUd0LY9
 W3Y2WXbqApCPFAayVO9qL/Ywr6cKmKyrxsZ/5KvLQPVpP5iYrhWeC55gX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="362918310"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="362918310"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:06:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="997626884"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="997626884"
Received: from nsusbilx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.161.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:06:42 -0700
Date: Mon, 2 Oct 2023 16:06:36 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZRrObIgBABk4wDpX@ashyti-mobl2.lan>
References: <20230929201837.849299-1-jonathan.cavitt@intel.com>
 <20230929201837.849299-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230929201837.849299-4-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Invalidate the TLBs on
 each GT
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, umesh.nirlige.ramappa@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Fri, Sep 29, 2023 at 01:18:37PM -0700, Jonathan Cavitt wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> With multi-GT devices, the object may have been bound on each GT and so
> we need to invalidate the TLBs across all GT before releasing the pages
> back to the system.
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

As Nirmoy has been needing this on a different context, could you
please send just this one as a separate e-mail?

This should also fix d6c531ab4820 ("drm/i915: Invalidate the TLBs
on each GT")

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> index 6b6d22c194110..0ba955611dfb5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> @@ -198,7 +198,7 @@ static void flush_tlb_invalidate(struct drm_i915_gem_object *obj)
>  
>  	for_each_gt(gt, i915, id) {
>  		if (!obj->mm.tlb[id])
> -			return;
> +			continue;
>  
>  		intel_gt_invalidate_tlb_full(gt, obj->mm.tlb[id]);
>  		obj->mm.tlb[id] = 0;
> -- 
> 2.25.1
