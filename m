Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA57262F405
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 12:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0580010E0E6;
	Fri, 18 Nov 2022 11:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E30D10E0E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 11:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668772192; x=1700308192;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L9tyxz+usTXcvRqcANdogQTlOADguGXJSlkCAJdbzZc=;
 b=YUQZvRMHlhrnAgIOE+iwBPADfcjvsqPV4tpE9C4UBJlrP6IxV4HJSWAt
 NIVQGBbnehMsOF94w4kOYrI1dyB/uT2QT2lAV7Bde6/TzRATUmyKdk0gY
 NA/HZgAac+rfLqrQ6g6P15L2PdHjU5xgUeLpHfNOHJL7NP87FSmyQl+ra
 URWgIW3bcF8OufvWciaXVRBAae71W28fzN1oknahuNpelhPFFH3a1Oh/R
 5MtNg47d94JZs12WL22SX0Xc2Wu13KhV75OatDjrD2E4z4iXbAAZALFdw
 DXynHptsiDdOkPbWCzxIC5VrEQLKX9Ri4luM0Cx2nmpefru7HYhSUYuyG g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="311822776"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="311822776"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:49:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="673175301"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="673175301"
Received: from mmilose-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.101])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:49:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221117061506.296392-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221117061506.296392-1-khaled.almahallawy@intel.com>
Date: Fri, 18 Nov 2022 13:49:47 +0200
Message-ID: <874juw1nz8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
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

On Wed, 16 Nov 2022, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Bspecs has updated recently to remove the restriction to disable
> DDI/Transcoder before setting PHY test pattern. This update is to
> address PHY compliance test failures observed on a port with LTTPR.
> The issue is that when Transc. is disabled, the main link signals fed
> to LTTPR will be dropped invalidating link training, which will affect
> the quality of the phy test pattern when the transcoder is enabled again.
>
> v2: Update commit message (Clint)
> v3: Add missing Signed-off in v2

Bspec 7555 for pre-gen12 still says "TRANS_CONF and TRANS_DDI_FUNC_CTL
must be disabled prior to enabling the test pattern."

All I have against that is your word [1], and it's not even recorded in
the commit message.

BR,
Jani.


[1] https://lore.kernel.org/r/8f0e921300db2b6a36497773d4508892e1ea5a43.camel@intel.com

>
> Bspec: 50482
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> CC: Jani Nikula <jani.nikula@intel.com>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Reviewed-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
>  1 file changed, 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 914161d7d122..16cf961b4d1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3679,61 +3679,6 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  	}
>  }
>  
> -static void
> -intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_device *dev = dig_port->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
> -	enum pipe pipe = crtc->pipe;
> -	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
> -
> -	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
> -						 TRANS_DDI_FUNC_CTL(pipe));
> -	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
> -	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
> -
> -	trans_ddi_func_ctl_value &= ~(TRANS_DDI_FUNC_ENABLE |
> -				      TGL_TRANS_DDI_PORT_MASK);
> -	trans_conf_value &= ~PIPECONF_ENABLE;
> -	dp_tp_ctl_value &= ~DP_TP_CTL_ENABLE;
> -
> -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
> -		       trans_ddi_func_ctl_value);
> -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> -}
> -
> -static void
> -intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
> -				 const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	struct drm_device *dev = dig_port->base.base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> -	enum port port = dig_port->base.port;
> -	struct intel_crtc *crtc = to_intel_crtc(dig_port->base.base.crtc);
> -	enum pipe pipe = crtc->pipe;
> -	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
> -
> -	trans_ddi_func_ctl_value = intel_de_read(dev_priv,
> -						 TRANS_DDI_FUNC_CTL(pipe));
> -	trans_conf_value = intel_de_read(dev_priv, PIPECONF(pipe));
> -	dp_tp_ctl_value = intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
> -
> -	trans_ddi_func_ctl_value |= TRANS_DDI_FUNC_ENABLE |
> -				    TGL_TRANS_DDI_SELECT_PORT(port);
> -	trans_conf_value |= PIPECONF_ENABLE;
> -	dp_tp_ctl_value |= DP_TP_CTL_ENABLE;
> -
> -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
> -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
> -		       trans_ddi_func_ctl_value);
> -}
> -
>  static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> @@ -3752,14 +3697,10 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
>  	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
>  				  link_status);
>  
> -	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
> -
>  	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
>  
>  	intel_dp_phy_pattern_update(intel_dp, crtc_state);
>  
> -	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
> -
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
>  			  intel_dp->train_set, crtc_state->lane_count);

-- 
Jani Nikula, Intel Open Source Graphics Center
