Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF8481C957
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 12:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5C810E772;
	Fri, 22 Dec 2023 11:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A6410E772
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 11:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703245408; x=1734781408;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=rpz1TXYvsXtHJ4W5Y3tq67yHxSIncZ0VywwDIPt76Is=;
 b=VfQtS1Iwd6O8HKMFmFHH5GePeujd1Q0qbJirLwOy3bPDMGjpazw9HnBz
 4Q5q7p3749pAH/wF4SFwcwPP00yPqHhnsyS/XkgjbgRdE/1ZdHKujA8ve
 8CEWEpXCNaBKnfn7CEkUaSUptghPhwRUy+DYm5ofVhLElNc7aeywq2/eF
 yqA1zvoWhDQqMckPw/d8a1F6Zz837SwT07Yj+3Kq1Ty0GbeaCLmrX7orQ
 nGBmNGA3WscZ3xkJtUJHUJPweUxFyQtsJPIfQwUiVl0PzMYtH0RaPxxAI
 i3hOVMvFF4DIrnWEYRcvJGrzJiEk1x0id98lExZ+8Vku8rLOmjvCfBE1V Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="17677608"
X-IronPort-AV: E=Sophos;i="6.04,296,1695711600"; d="scan'208";a="17677608"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 03:43:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="726766366"
X-IronPort-AV: E=Sophos;i="6.04,296,1695711600"; d="scan'208";a="726766366"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 03:43:26 -0800
Date: Fri, 22 Dec 2023 13:43:34 +0200
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non
 legacy tc phys
Message-ID: <ZYV2Zri+2ZlAFiIK@ideak-desk.fi.intel.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <20231220221341.3248508-5-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231220221341.3248508-5-radhakrishna.sripada@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 20, 2023 at 02:13:41PM -0800, Radhakrishna Sripada wrote:
> Starting MTL and DG2 if a phy is not marked as USB-typeC or TBT capable
> by vbt  we should not consider it as a Legacy type-c phy.
> 
> The concept of Legacy-tc existed in platforms from Icelake to Alder lake
> where an external FIA can be routed to one of the phy's thus making the phy
> tc capable without being marked in the vbt.
> 
> Discrete cards have native ports and client products post MTL have a 1:1
> mapping with type-C subsystem which is advertised by the bios. So rely on
> the vbt info regarding type-c capability.
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  3 files changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 12a29363e5df..7d5b95f97d5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5100,7 +5100,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
>  	}
>  
>  	if (intel_phy_is_tc(dev_priv, phy)) {
> -		bool is_legacy =
> +		bool is_legacy = HAS_LEGACY_TC(dev_priv) &&

This doesn't make sense to me. PHYs are either TC or non-TC (aka combo
PHY) and TC PHYs can be configured to work either in legacy (a TC PHY
wired to a native DP connector) or non-legacy mode (a TC PHY wired to a
TC connector). So this would break the functionality on MTL native DP
connectors and all future platforms I looked at which also support this.

>  			!intel_bios_encoder_supports_typec_usb(devdata) &&
>  			!intel_bios_encoder_supports_tbt(devdata);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b10aad15a63d..03006c9af824 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1854,17 +1854,9 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>  		return false;
>  }
>  
> -bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> +static bool intel_phy_is_legacy_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	/*
> -	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
> -	 * as other platforms on the display engine side and rather rely on the
> -	 * SNPS PHY, that is programmed separately
> -	 */
> -	if (IS_DG2(dev_priv))
> -		return false;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> +	if (DISPLAY_VER(dev_priv) == 13)
>  		return phy >= PHY_F && phy <= PHY_I;
>  	else if (IS_TIGERLAKE(dev_priv))
>  		return phy >= PHY_D && phy <= PHY_I;
> @@ -1874,6 +1866,23 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  	return false;
>  }
>  
> +static bool intel_phy_is_vbt_tc(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +	const struct intel_bios_encoder_data *data =
> +		intel_bios_encoder_phy_data_lookup(dev_priv, phy);
> +
> +	return intel_bios_encoder_supports_typec_usb(data) &&
> +	       intel_bios_encoder_supports_tbt(data);

Based on the above, this doesn't look correct: a TC PHY can be
configured by the vendor (reflected by the above typec_usb and tbt flags
in VBT) in any of the following ways:

- legacy mode (wired to a native DP connector):         typec_usb:false, tbt:false
- tbt-alt + dp-alt support (wired to a TC connector):   typec_usb:true, tbt:true
- tbt-alt only support (wired to a TC connector):       typec_usb:false, tbt:true
- dp-alt only support (wired to a TC connector):        typec_usb:true, tbt:false

For all the above cases intel_phy_is_tc() should return true. So I don't
think this (is a PHY TC or non-TC) can be determined based on the above
VBT flags.

> +}
> +
> +bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> +{
> +	if (!HAS_LEGACY_TC(dev_priv))
> +		return intel_phy_is_vbt_tc(dev_priv, phy);
> +	else
> +		return intel_phy_is_legacy_tc(dev_priv, phy);
> +}
> +
>  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index fe4268813786..9450e263c873 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -58,6 +58,7 @@ struct drm_printer;
>  #define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
>  #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
> +#define HAS_LEGACY_TC(i915)		(IS_DISPLAY_VER(i915, 11, 13) && !IS_DGFX(i915))
>  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
>  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
> -- 
> 2.34.1
> 
