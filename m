Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5375E9B309B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:43:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595A710E499;
	Mon, 28 Oct 2024 12:43:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RTVInMJb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E5810E499
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730119430; x=1761655430;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g0BP5CSCQvH2ZrJ789UyLf2JUb7cgFakH4J7/zoAyjo=;
 b=RTVInMJbiGAbAddaRZsMbD340nfu41pDEWfzrnA+xBWl13Va/X/KeIp3
 vXRBuGFqJ5ySOwSFT1qmMiOBgM1nj3VT68NbbqHkpyhZGNhX+2jeehIDg
 793Hi0ioXCueuHKHiEu40siTyq8DJnwPiV2ZcvcB2NMxvw0fG9M5iaS8m
 Gm9+Z0SrKMIKr13RuagqFJeDxZ7K11KdgCFoDUI/HQhTrqkvkst6reyRN
 5xfsJWzBMEzIaqnOhdOPgG4vK8Yxwhvy1FW8wqzNp05Lo26KR9u1+yIq1
 0PiHg9pw182oPP+3OnxLkoNS28qlXBDTeqyb89gYZmkvWwcN7HJc6xBEz g==;
X-CSE-ConnectionGUID: KdWiIA/kRrKenR276MbuMw==
X-CSE-MsgGUID: jdce0B16S2mUc5CIQWehMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="41079628"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="41079628"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:43:48 -0700
X-CSE-ConnectionGUID: KzAiAWwWTp6fdXnu9EK5qA==
X-CSE-MsgGUID: dYcKK8JNT9Wv1Gc3sbvQUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="104925888"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:43:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
In-Reply-To: <20241028120829.78735-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241028120829.78735-1-vinod.govindapillai@intel.com>
Date: Mon, 28 Oct 2024 14:43:43 +0200
Message-ID: <87iktcpfcw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Oct 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> From LNL onwards there is a new hardware feature, which
> allows to detect if the driver wrongly allocated DBuf
> entries and they happen to overlap. If enabled this will
> cause a specific interrupt to occur.
> We now handle it in the driver, by writing correspondent
> error message to kernel log.
>
> v2: Initialize dbuf overlap flag in runtime_defaults (Jani Nikula)
>
> v3: Unmask the overlap detection interrupt (Uma)
>
> Bspec: 69450
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c |  5 +++++
>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                     |  2 ++
>  4 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index aa22189e3853..0ac9a35e5f7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1227,6 +1227,7 @@ static const struct intel_display_device_info xe2_lpd_display = {
>  	.__runtime_defaults.fbc_mask =
>  		BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) |
>  		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
> +	.__runtime_defaults.has_dbuf_overlap_detection = true,
>  };
>  
>  static const struct intel_display_device_info xe2_hpd_display = {
> @@ -1668,6 +1669,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		if (IS_DISPLAY_VER(i915, 10, 12) &&
>  		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
>  			display_runtime->has_dsc = 0;
> +
> +		if (DISPLAY_VER(i915) >= 20 &&

Always use display over i915 when possible:

DISPLAY_VER(display)

> +		    (dfsm & XE2LPD_DFSM_DBUF_OVERLAP_DISABLE))
> +			display_runtime->has_dbuf_overlap_detection = false;
>  	}
>  
>  	if (DISPLAY_VER(i915) >= 20) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..6bf5672d874d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -125,6 +125,7 @@ enum intel_display_subplatform {
>  #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>  #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
> +#define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
>  #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
>  #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
>  #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
> @@ -232,6 +233,7 @@ struct intel_display_runtime_info {
>  	bool has_hdcp;
>  	bool has_dmc;
>  	bool has_dsc;
> +	bool has_dbuf_overlap_detection;
>  };
>  
>  struct intel_display_device_info {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a4f42ed3f21a..3d3c0c1fd184 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -902,6 +902,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  	struct intel_display *display = &dev_priv->display;
>  	bool found = false;
>  
> +	if (HAS_DBUF_OVERLAP_DETECTION(dev_priv)) {

HAS_DBUF_OVERLAP_DETECTION(display)

> +		if (iir & XE2LPD_DBUF_OVERLAP_DETECTED) {
> +			drm_warn(&dev_priv->drm,  "DBuf overlap detected\n");

drm_warn(display->drm, ...)

So the end result is that we get a warning, and that's it?

> +			found = true;
> +		}
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> @@ -1789,6 +1796,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			de_port_masked |= DSI0_TE | DSI1_TE;
>  	}
>  
> +	if (HAS_DBUF_OVERLAP_DETECTION(dev_priv))

HAS_DBUF_OVERLAP_DETECTION(display)

> +		de_misc_masked |= XE2LPD_DBUF_OVERLAP_DETECTED;
> +
>  	if (HAS_DSB(dev_priv))
>  		de_pipe_masked |= GEN12_DSB_INT(INTEL_DSB_0) |
>  			GEN12_DSB_INT(INTEL_DSB_1) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 405f409e9761..327d1aa3f211 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2589,6 +2589,7 @@
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
>  #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
> +#define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
>  
>  #define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
>  						      GEN8_DE_MISC_IER, \
> @@ -2894,6 +2895,7 @@
>  #define   SKL_DFSM_PIPE_C_DISABLE	(1 << 28)
>  #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
>  #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
> +#define   XE2LPD_DFSM_DBUF_OVERLAP_DISABLE	(1 << 3)
>  
>  #define XE2LPD_DE_CAP			_MMIO(0x41100)
>  #define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)

-- 
Jani Nikula, Intel
