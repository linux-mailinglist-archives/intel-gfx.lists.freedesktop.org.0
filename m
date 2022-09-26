Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE725EAD24
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27BC10E475;
	Mon, 26 Sep 2022 16:49:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061E710E475
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664210959; x=1695746959;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e66efFjiH5gNWAcZSgr09xT9CLEYkgIz/xewAY6uO3E=;
 b=ea6mHoaiTFNUC8ZxJrTnO6aiYhUfHbWIWEcjVk/ohS9vwhbeYMdY8UY2
 KFIaC1lLEyFPpgZTCXLzXKB0inScG2kZVzg+NghhQMGNwJIBLS63PlZj3
 ph7XzdyQE57rrgycaLDbZ3a3cMt+IfeYl9NG+uqZHjMTk0xDkHwguDjr/
 EFPFVSzbQ2u2TBnAK9H6Qv3hoyQBvVGHBpHsRYRviTM/nh3AWvgJaZHi6
 Kxtd+Kky25+DckQDTQssES6nuKMx11FSLSoqhG35kUqxRca72FqQDyKX7
 lR48OozqiGbYx3t1q66l5uBx9We/wnubhreA7RuVFPx4ASWFZyTgvTZdU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301062103"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="301062103"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:49:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="866196430"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="866196430"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:49:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220916212512.9112-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916063720.422321-1-khaled.almahallawy@intel.com>
 <20220916212512.9112-1-khaled.almahallawy@intel.com>
Date: Mon, 26 Sep 2022 19:48:58 +0300
Message-ID: <871qry2i9x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
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

On Fri, 16 Sep 2022, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> Bspecs has updated recently to remove the restriction to disable
> DDI/Transcoder before setting PHY test pattern. This update is to
> address PHY compliance test failures observed on a port with LTTPR.
> The issue is that when Transc. is disabled, the main link signals fed
> to LTTPR will be dropped invalidating link training, which will affect
> the quality of the phy test pattern when the transcoder is enabled again.

And how about platforms prior to display 12? The requirement is still
there AFAICT.

BR,
Jani.


>
> v2: Update commit message (Clint)
>
> Bspec: 50482
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Clint Taylor <clinton.a.taylor@intel.com>
> Cc: Or Cochvi <or.cochvi@intel.com>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------------
>  1 file changed, 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c9be61d2348e..2bf323f3f155 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3675,61 +3675,6 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
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
> @@ -3748,14 +3693,10 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
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
