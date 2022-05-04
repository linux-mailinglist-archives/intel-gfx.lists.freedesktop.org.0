Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A946351AFC4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979AA10E9D5;
	Wed,  4 May 2022 20:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C80310E9D5
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651697459; x=1683233459;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vk21T+ku/CrT13MPR3dUestok1QBEdvRw1GhgkqwMi4=;
 b=fBAeqxSRISbEhBJrSNpCP+HspNRrojUXuRbVj7sV2+n1vieR45NMGgjr
 GB/Yt/DlIos2tPZ9dDjte5cM6Pu8BNyBAvVpGrIeZlpo5tgYD6eghBofH
 Ztyh0wnNAmpX877sTgxmulpFNlVan1RDhkcNqm1DF+xa1kxKLwqe1bl4s
 Nx9/GxjekLwOh4b+49AZDfGVoxx+P+93Rf+y6Uzu1XwsWBlyxV8s0DRZI
 DTiREew4/RzRvs6XSR9F8BMxQnG1a+h1kUWIu2nMZoB90zxATL0XIkEeT
 Ukj2hzFb6yFhXymJYeTEZEhjMttaV5EzCJ1N0mCnnvIt1IH1vYV575w4x w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="354333672"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="354333672"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:50:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="549029807"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:50:58 -0700
Date: Wed, 4 May 2022 13:50:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLnMSGhgbXWcqcA@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-7-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-7-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915: Drop has_logical_ring_elsq
 from device info
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

On Wed, May 04, 2022 at 12:07:51PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as all platforms with graphics version 11 or newer has this feature.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 3 +--
>  drivers/gpu/drm/i915/i915_pci.c          | 4 +---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 602e056edd314..f23e5c5cbf82b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1247,8 +1247,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
>  		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
> -#define HAS_LOGICAL_RING_ELSQ(dev_priv) \
> -		(INTEL_INFO(dev_priv)->has_logical_ring_elsq)
> +#define HAS_LOGICAL_RING_ELSQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11)
>  
>  #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index b47f8b1ab9c6c..25aa8f5957f1e 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -804,8 +804,7 @@ static const struct intel_device_info cml_gt2_info = {
>  	.dbuf.size = 2048, \
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
>  	.display.has_dsc = 1, \
> -	.has_coherent_ggtt = false, \
> -	.has_logical_ring_elsq = 1
> +	.has_coherent_ggtt = false
>  
>  static const struct intel_device_info icl_info = {
>  	GEN11_FEATURES,
> @@ -989,7 +988,6 @@ static const struct intel_device_info adl_p_info = {
>  	.has_global_mocs = 1, \
>  	.has_llc = 1, \
>  	.has_logical_ring_contexts = 1, \
> -	.has_logical_ring_elsq = 1, \
>  	.has_mslices = 1, \
>  	.has_rps = 1, \
>  	.has_runtime_pm = 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 62c9616ea6a9c..7cf16b0315b54 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -151,7 +151,6 @@ enum intel_ppgtt_type {
>  	func(has_l3_dpf); \
>  	func(has_llc); \
>  	func(has_logical_ring_contexts); \
> -	func(has_logical_ring_elsq); \
>  	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_pxp); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
