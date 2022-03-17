Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EAE4DCEE4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C72110E704;
	Thu, 17 Mar 2022 19:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD27A10E704
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647545811; x=1679081811;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Dhsgwf7Vjb1lxUALmqNhqn793X3ek8Jas1eg//ZYwbg=;
 b=FfYlQSdy3u353ITJd120aWYuElQ4461A3mOPRDsUZMn9Gh27hH/MXhr6
 mTVPQ47wOyzAUtbB1l4SpLVsHac4hioWS44Dtt8b4zGU2uWQhpmYuqJFl
 6RRJa3Bs0WSJo5fylOKMnPUYQt4G88WRgCsKb/j9aotM8oxW7yiT71AWE
 gcY0haZH4BCQQQsLCx9FDxGtf3NcbX0QSSPXhL4j1kOY4alGfnCX9UVJz
 bkrBAJq0K8YrywjRWPOzC4Y+//hJVirOz0GNBd/AOkmeS8U4k4Qe9OtP+
 LU/zT4NJ54wQ4Jook84UgTWKwyy+F/ucL2F5nO1aNLKkGdni1e+gGnj/K w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343400257"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343400257"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:36:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="513551674"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:36:50 -0700
Date: Thu, 17 Mar 2022 12:36:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317193648.jxjnjuyd535hsrtk@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <6142e2f8e495bfb9373ee908af16352f5c9e9464.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <6142e2f8e495bfb9373ee908af16352f5c9e9464.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/dmc: move assert_dmc_loaded()
 to intel_dmc.c
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

On Thu, Mar 17, 2022 at 08:36:14PM +0200, Jani Nikula wrote:
>Start localizing DMC register and data access to intel_dmc.c.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_power.c | 12 ------------
> drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +++++++++++
> drivers/gpu/drm/i915/display/intel_dmc.h           |  2 ++
> 3 files changed, 13 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index b3efe345567f..6a5695008f7c 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -905,18 +905,6 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
> 	intel_pps_unlock_regs_wa(dev_priv);
> }
>
>-static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
>-{
>-	drm_WARN_ONCE(&dev_priv->drm,
>-		      !intel_de_read(dev_priv,
>-				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>-				     "DMC program storage start is NULL\n");
>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
>-		      "DMC SSP Base Not fine\n");
>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_HTP_SKL),
>-		      "DMC HTP Not fine\n");
>-}
>-
> /**
>  * intel_display_power_set_target_dc_state - Set target dc state.
>  * @dev_priv: i915 device
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 66fd69259e73..63ae16622c3e 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -305,6 +305,17 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> 	gen9_set_dc_state_debugmask(dev_priv);
> }
>
>+void assert_dmc_loaded(struct drm_i915_private *i915)
>+{
>+	drm_WARN_ONCE(&i915->drm,
>+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>+		      "DMC program storage start is NULL\n");
>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
>+		      "DMC SSP Base Not fine\n");
>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_HTP_SKL),
>+		      "DMC HTP Not fine\n");
>+}
>+
> static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
> 				     const struct stepping_info *si)
> {
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>index 7c590309a3a9..326f80ad0f31 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.h
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>@@ -55,4 +55,6 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> bool intel_dmc_has_payload(struct drm_i915_private *i915);
>
>+void assert_dmc_loaded(struct drm_i915_private *i915);


intel_dmc_assert_loaded()?

Lucas De Marchi

>+
> #endif /* __INTEL_DMC_H__ */
>-- 
>2.30.2
>
