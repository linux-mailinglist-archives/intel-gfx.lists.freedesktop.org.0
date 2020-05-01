Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6651C1C6B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:59:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420816ED1D;
	Fri,  1 May 2020 17:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47AB6ED1D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:59:48 +0000 (UTC)
IronPort-SDR: Fskd9qbiN7fdSJTfUzrETrJSMwVYAUu9tS32hcILa6/IsT6bPEkzJl6W2OgWnq0veZkej2EJ1E
 Cvq7YdfRs/dQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:59:47 -0700
IronPort-SDR: AZj5x50DaTRLqs1RU6xXxurEzGDLHDU0K8E6hRaczXLlB3Udtto6y2gXdMc2c+vKDs7YwyUCLw
 Yp9Wl+BC4lAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250072997"
Received: from 5sfe.jf.intel.com (HELO 5sfe) ([10.165.21.196])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:59:47 -0700
Message-ID: <5b4e94dfcd44e160ef8f76134351ab4208af6416.camel@intel.com>
From: Caz Yokoyama <Caz.Yokoyama@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 01 May 2020 11:05:16 -0700
In-Reply-To: <20200501170748.358135-2-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
 <20200501170748.358135-2-matthew.d.roper@intel.com>
Organization: Intel
X-Mailer: Evolution 3.28.5 (3.28.5-2.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/rkl: Add RKL platform info
 and PCI ids
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Matt,
This patch used to have version information such "v7: Add missing pipe
mask". Why they are removed? For power on?

Otherwise
Acked-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

On Fri, 2020-05-01 at 10:07 -0700, Matt Roper wrote:
> Introduce the basic platform definition, macros, and PCI IDs.
> 
> Bspec: 44501
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Caz Yokoyama <caz.yokoyama@intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          |  8 ++++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 10 ++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  include/drm/i915_pciids.h                |  9 +++++++++
>  5 files changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> index 6af69555733e..1ba77283123d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1406,6 +1406,7 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
>  #define IS_ELKHARTLAKE(dev_priv)	IS_PLATFORM(dev_priv,
> INTEL_ELKHARTLAKE)
>  #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv,
> INTEL_TIGERLAKE)
> +#define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv,
> INTEL_ROCKETLAKE)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) ==
> 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> @@ -1514,6 +1515,13 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  #define IS_TGL_REVID(p, since, until) \
>  	(IS_TIGERLAKE(p) && IS_REVID(p, since, until))
>  
> +#define RKL_REVID_A0		0x0
> +#define RKL_REVID_B0		0x1
> +#define RKL_REVID_C0		0x4
> +
> +#define IS_RKL_REVID(p, since, until) \
> +	(IS_ROCKETLAKE(p) && IS_REVID(p, since, until))
> +
>  #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
>  #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) &&
> IS_LP(dev_priv))
>  #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) &&
> !IS_LP(dev_priv))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c
> b/drivers/gpu/drm/i915/i915_pci.c
> index 1faf9d6ec0a4..5a470bab2214 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -863,6 +863,15 @@ static const struct intel_device_info tgl_info =
> {
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) |
> BIT(VCS2),
>  };
>  
> +static const struct intel_device_info rkl_info = {
> +	GEN12_FEATURES,
> +	PLATFORM(INTEL_ROCKETLAKE),
> +	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +	.require_force_probe = 1,
> +	.engine_mask =
> +		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
> +};
> +
>  #define GEN12_DGFX_FEATURES \
>  	GEN12_FEATURES, \
>  	.is_dgfx = 1
> @@ -941,6 +950,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_ICL_11_IDS(&icl_info),
>  	INTEL_EHL_IDS(&ehl_info),
>  	INTEL_TGL_12_IDS(&tgl_info),
> +	INTEL_RKL_IDS(&rkl_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> b/drivers/gpu/drm/i915/intel_device_info.c
> index 91bb7891c70c..9862c1185059 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -61,6 +61,7 @@ static const char * const platform_names[] = {
>  	PLATFORM_NAME(ICELAKE),
>  	PLATFORM_NAME(ELKHARTLAKE),
>  	PLATFORM_NAME(TIGERLAKE),
> +	PLATFORM_NAME(ROCKETLAKE),
>  };
>  #undef PLATFORM_NAME
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index 69c9257c6c6a..a126984cef7f 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -80,6 +80,7 @@ enum intel_platform {
>  	INTEL_ELKHARTLAKE,
>  	/* gen12 */
>  	INTEL_TIGERLAKE,
> +	INTEL_ROCKETLAKE,
>  	INTEL_MAX_PLATFORMS
>  };
>  
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 662d8351c87a..bc989de2aac2 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -605,4 +605,13 @@
>  	INTEL_VGA_DEVICE(0x9AD9, info), \
>  	INTEL_VGA_DEVICE(0x9AF8, info)
>  
> +/* RKL */
> +#define INTEL_RKL_IDS(info) \
> +	INTEL_VGA_DEVICE(0x4C80, info), \
> +	INTEL_VGA_DEVICE(0x4C8A, info), \
> +	INTEL_VGA_DEVICE(0x4C8B, info), \
> +	INTEL_VGA_DEVICE(0x4C8C, info), \
> +	INTEL_VGA_DEVICE(0x4C90, info), \
> +	INTEL_VGA_DEVICE(0x4C9A, info)
> +
>  #endif /* _I915_PCIIDS_H */

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
