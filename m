Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092F4313307
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 14:14:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611146E8C6;
	Mon,  8 Feb 2021 13:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8031E6E8C6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 13:14:23 +0000 (UTC)
IronPort-SDR: t6PIEGDJwentao5Rxyb3/UmrLAaaZqJcUldI2hKAloqYTudqh+4EqijKllGMFQPM2vj2vrQnWX
 mTWX/+c+RFNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9888"; a="160862750"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="160862750"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 05:14:23 -0800
IronPort-SDR: 3Ow6+z1DO+tlTjbPOJiP0iwk0NjGvVPCmNTshQeznWguEh4hsdI4JcA6F2o9ou1ur3TATQVg+m
 rVHNV7aBrv8g==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="418793327"
Received: from anveshag-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.209.119.193])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 05:14:22 -0800
Date: Mon, 8 Feb 2021 08:14:21 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210208131421.GF4798@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
 <20210206020925.36729-4-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210206020925.36729-4-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [RFC 03/14] drm/i915/pxp: define PXP device flag
 and kconfig
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 06:09:14PM -0800, Daniele Ceraolo Spurio wrote:
> Ahead of the PXP implementation, define the relevant define flag and
> kconfig option.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Kconfig             | 11 +++++++++++
>  drivers/gpu/drm/i915/i915_drv.h          |  4 ++++
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 1e1cb245fca7..c55e58bdbe0b 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -130,6 +130,17 @@ config DRM_I915_GVT_KVMGT
>  	  Choose this option if you want to enable KVMGT support for
>  	  Intel GVT-g.
>  
> +config DRM_I915_PXP
> +	bool "Enable Intel PXP support for Intel Gen12+ platform"
> +	depends on DRM_I915
> +	depends on INTEL_MEI && INTEL_MEI_PXP
> +	default y
> +	help
> +	  PXP (Protected Xe Path) is an i915 component, available on GEN12+
> +	  GPUs, that helps to establish the hardware protected session and
> +	  manage the status of the alive software session, as well as its life
> +	  cycle.
> +
>  menu "drm/i915 Debugging"
>  depends on DRM_I915
>  depends on EXPERT
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a2fd7e5039b3..fe1ff025f961 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1779,6 +1779,10 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>  
>  #define HAS_VRR(i915)	(INTEL_GEN(i915) >= 12)
>  
> +#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> +			   INTEL_INFO(dev_priv)->has_pxp) && \
> +			   VDBOX_MASK(&dev_priv->gt)
> +
>  /* Only valid when HAS_DISPLAY() is true */
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index e6ca1023ffcf..54891f7655e4 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,6 +127,7 @@ enum intel_ppgtt_type {
>  	func(has_logical_ring_elsq); \
>  	func(has_master_unit_irq); \
>  	func(has_pooled_eu); \
> +	func(has_pxp); \
>  	func(has_rc6); \
>  	func(has_rc6p); \
>  	func(has_rps); \
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
