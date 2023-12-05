Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0747080562E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F93210E533;
	Tue,  5 Dec 2023 13:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D9F10E533
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783439; x=1733319439;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8A6ZzGkANZH878JYIWSiI6RJuwMRpQVe5r9IG9CNNR4=;
 b=nea9MWEtg4fb27UYyWVwYyog1md0bz7ZHf52S67k/Xbx2D17RbXTGt0H
 2COgF+237j4RKZy39Qy2SE3YiofngOaKSB2WL3Uyvz3pYZfuLmAgB7qG2
 RCm+g5KZOTY6JkpH+A0IJKBZrwiCpEAoMmYtrFDD5e0gqiNQaHM3ARSdh
 XYgpY3sA0W2GIlQOcs0dqPJ7noXqSQk0hA2QJFrUK4AJT4jVkVchDaHPF
 C4f4QuLPfASozYHuLQN06ktuhRfTCpF/N3KYxmyDCWrtZQbZKM/nMfhjj
 fh+YIyNR+a2jMUx6px4K/SIPaYJetHyl2RQqGn94ZqmjtEGbtQEB/axw7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="787934"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="787934"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:37:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="836971439"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="836971439"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:37:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231130213103.214915-2-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231130213103.214915-1-khaled.almahallawy@intel.com>
 <20231130213103.214915-2-khaled.almahallawy@intel.com>
Date: Tue, 05 Dec 2023 15:37:03 +0200
Message-ID: <87v89c22kg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: Add TPS4 PHY test
 pattern support
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

On Thu, 30 Nov 2023, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Adding support for TPS4 (CP2520 Pattern 3) PHY pattern source tests.

A CTS connected to an older platform leads to invalid values being
written to the registers in question. In some cases probably also
invalid registers on the platform.

I understand that it's not likely someone's going to actually do that,
but from the kernel POV this is user input that can't be trusted.

> v2: rebase
>
> Bspec: 50482, 50484
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
>  drivers/gpu/drm/i915/i915_reg.h         |  4 ++++
>  2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a1e63ab5761b..8908221edfa9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4679,6 +4679,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  	struct drm_dp_phy_test_params *data =
>  			&intel_dp->compliance.test_data.phytest;
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	enum pipe pipe = crtc->pipe;
>  	u32 pattern_val;
>  
> @@ -4686,6 +4687,9 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  	case DP_LINK_QUAL_PATTERN_DISABLE:
>  		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
> +		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
> +			     DP_TP_CTL_LINK_TRAIN_NORMAL);
>  		break;
>  	case DP_LINK_QUAL_PATTERN_D10_2:
>  		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
> @@ -4733,6 +4737,13 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
>  			       pattern_val);
>  		break;
> +	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
> +		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
> +		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
> +		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
> +			DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
> +			DP_TP_CTL_TRAIN_PAT4_SEL_TP4a | DP_TP_CTL_LINK_TRAIN_PAT4);

Please fix indentation, see checkpatch results.

> +		break;
>  	default:
>  		WARN(1, "Invalid Phy Test Pattern\n");
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 27dc903f0553..7feb1e1478ee 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5652,6 +5652,10 @@ enum skl_power_gate {
>  #define  DP_TP_CTL_MODE_SST			(0 << 27)
>  #define  DP_TP_CTL_MODE_MST			(1 << 27)
>  #define  DP_TP_CTL_FORCE_ACT			(1 << 25)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4a		(0 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4b		(1 << 19)
> +#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4c		(2 << 19)

Please don't use lowercase in the macro names.

>  #define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
>  #define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
>  #define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)

-- 
Jani Nikula, Intel
