Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FEC502847
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 12:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C4310EF51;
	Fri, 15 Apr 2022 10:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C538B10EF51
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 10:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650018379; x=1681554379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=R1sL2gcqC3lM75W3zh1skPKP4GtWfCLDgpxcoGDwNC0=;
 b=QKzDDGxN7mBxEquhMmoZ+ero4XyuYVB5ife3bGJGVErOIMX7AJnBDteh
 uMSzIv0bqUhAHu2LJSxwSn9KwNbsYspLpG+kprVp6j5V1RvXr+D8q1zuE
 PysEo7np+/jeAl8vWx7j4YAnvKXshXlD7XEwCdk1zEGJ+K8lFAwbjGFke
 OQMNLMpRQcA0UbmuucKisyt2KO2gwyo3chaW+W9FhnYrMliJjHQ7KW0wT
 +oXUnj4Xg6TRoRghzEtKpY73s5Dn6iSfkRv0WGyITmcyl29ACpcl/AoM+
 rbgrXeKb3TghTHIaRuqTxWlDuSPfyuRgJewUaYcd7bKVtewKU3fTn753Y A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="260729916"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="260729916"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:26:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="508904052"
Received: from pgooneti-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.169])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:26:18 -0700
Date: Fri, 15 Apr 2022 06:26:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YllISPDPl17JgusP@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <8401d5f5a87035ce1dda28a663771cb867fdf928.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8401d5f5a87035ce1dda28a663771cb867fdf928.1649871650.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Introduce has_media_ratio_mode
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 11:11:02AM -0700, Ashutosh Dixit wrote:
> Media ratio mode (the ability for media IP to work at a different frequency
> from the GT) is available for a subset of dGfx platforms supporting
> GuC/SLPC. Introduce 'has_media_ratio_mode' flag in intel_device_info to
> identify these platforms and set it for XEHPSDV and DG2/ATS-M.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c          | 2 ++
>  drivers/gpu/drm/i915/intel_device_info.h | 1 +
>  3 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9274417cd87a..1573769b516f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1222,6 +1222,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define CCS_MASK(gt) \
>  	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
>  
> +#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
> +
>  /*
>   * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
>   * All later gens can run the final buffer from the ppgtt
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 736e04078f56..ddc72bb07259 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1032,6 +1032,7 @@ static const struct intel_device_info xehpsdv_info = {
>  	.display = { },
>  	.has_64k_pages = 1,
>  	.needs_compact_pt = 1,
> +	.has_media_ratio_mode = 1,
>  	.platform_engine_mask =
>  		BIT(RCS0) | BIT(BCS0) |
>  		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
> @@ -1051,6 +1052,7 @@ static const struct intel_device_info xehpsdv_info = {
>  	.has_64k_pages = 1, \
>  	.has_guc_deprivilege = 1, \
>  	.needs_compact_pt = 1, \
> +	.has_media_ratio_mode = 1, \
>  	.platform_engine_mask = \
>  		BIT(RCS0) | BIT(BCS0) | \
>  		BIT(VECS0) | BIT(VECS1) | \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index f9b955810593..bf4f2b27fd47 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -146,6 +146,7 @@ enum intel_ppgtt_type {
>  	func(has_llc); \
>  	func(has_logical_ring_contexts); \
>  	func(has_logical_ring_elsq); \
> +	func(has_media_ratio_mode); \
>  	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_pxp); \
> -- 
> 2.34.1
> 
