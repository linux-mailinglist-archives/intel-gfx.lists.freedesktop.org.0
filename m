Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA0D647F8B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 09:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57DFE10E4FB;
	Fri,  9 Dec 2022 08:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A6510E4FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 08:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670575814; x=1702111814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=n0Hk0Zi1C/LD4g2AnB3PeG19CRj/uLNhBaeTjrH9lN4=;
 b=ljQu+L1gdUe299BHhHCr/lJXHxzmvs22Iv7Q2wslGSiEmuUWNYO6pxm8
 u2q8M3vuP3khUysPn7pSYtgxnwcnYdAlG/zyJeNp4Z6AyOGuu9IKGJ6jW
 OHAWi4g6NlnN1W4Grcz63qlioQj7HOeuA5oCoUg2JyE8Yx6wGzTGNVS57
 ycF0mqVuEBRg6WwKgdyYx85PHFvG/OsTd9NMmmZDRS5Z4wQSZ3v0aqBga
 mrNFy3osT5hROeDrIWjbAn5NtF0J+xHaImLKBgIeTEG3rjVZ+i+boj39H
 HCnCty/iuKuPuQ27w3XX04QS6+HL12nGjkQgtn9HU88Zp3d4xpeksCGEP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="403671078"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="403671078"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:50:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="821665501"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="821665501"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:50:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221123220926.170034-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221123220926.170034-1-khaled.almahallawy@intel.com>
Date: Fri, 09 Dec 2022 10:50:08 +0200
Message-ID: <87pmctyn9b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Don't disable
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

On Wed, 23 Nov 2022, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Bspecs has updated recently to remove the restriction to disable
> DDI/Transcoder before setting PHY test pattern. This update is to
> address PHY compliance test failures observed on a port with LTTPR.
> The issue is that when Transc. is disabled, the main link signals fed
> to LTTPR will be dropped invalidating link training, which will affect
> the quality of the phy test pattern when the transcoder is enabled again.
>
> v2: Update commit message (Clint)
> v3: Add missing Signed-off in v2
> v4: Update Bspec and commit message for pre-gen12 (Jani)
>
> Bspec: 50482, 7555
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> CC: Jani Nikula <jani.nikula@intel.com>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Reviewed-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Thanks for the patch and review, pushed to drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
>  1 file changed, 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cf8a2f644bab..9ce3562d027d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3698,61 +3698,6 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
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
> @@ -3771,14 +3716,10 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
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
