Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3BE1EEAD6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 21:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1016E57A;
	Thu,  4 Jun 2020 19:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 359996E57A;
 Thu,  4 Jun 2020 19:06:16 +0000 (UTC)
IronPort-SDR: AJro/mDByUG4/0WXw5iSFWvfKy3LKCRj8+j9D4VM/PI51PR/iMCGGEALmBbfSr4I7OC3Tio4pS
 75fAaTsxrUpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:06:15 -0700
IronPort-SDR: pgfZZVPFsM4zMRXGE0LoMI3xeW+PRzoOobTJf4kPrWrUkpjxPZudXI51Ckhc1JSmw3DnSLt2/z
 VGyy6lMSwVww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="378505748"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 04 Jun 2020 12:06:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 22:06:12 +0300
Date: Thu, 4 Jun 2020 22:06:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Message-ID: <20200604190612.GI6112@intel.com>
References: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: DP PHY compliance for JSL
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 04, 2020 at 10:33:48AM +0530, Vidya Srinivas wrote:
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 40 ++++++++++++++++++++++++++-=
------
>  1 file changed, 32 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7223367171d1..44663e8ac9a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5470,22 +5470,32 @@ intel_dp_autotest_phy_ddi_disable(struct intel_dp=
 *intel_dp)
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(intel_dig_port->base.base.crt=
c);
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
> +	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value, trans_=
ddi_port_mask;
> +	enum port port =3D intel_dig_port->base.port;
> +	i915_reg_t dp_tp_reg;
> +
> +	if (IS_ELKHARTLAKE(dev_priv)) {
> +		dp_tp_reg =3D DP_TP_CTL(port);
> +		trans_ddi_port_mask =3D TRANS_DDI_PORT_MASK;
> +	} else if (IS_TIGERLAKE(dev_priv)) {
> +		dp_tp_reg =3D TGL_DP_TP_CTL(pipe);
> +		trans_ddi_port_mask =3D TGL_TRANS_DDI_PORT_MASK;
> +	}
>  =

>  	trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
>  						 TRANS_DDI_FUNC_CTL(pipe));
>  	trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
> -	dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
>  =

> +	dp_tp_ctl_value =3D intel_de_read(dev_priv, dp_tp_reg);
>  	trans_ddi_func_ctl_value &=3D ~(TRANS_DDI_FUNC_ENABLE |
> -				      TGL_TRANS_DDI_PORT_MASK);
> +					trans_ddi_port_mask);
>  	trans_conf_value &=3D ~PIPECONF_ENABLE;
>  	dp_tp_ctl_value &=3D ~DP_TP_CTL_ENABLE;
>  =

>  	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
>  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
>  		       trans_ddi_func_ctl_value);
> -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> +	intel_de_write(dev_priv, dp_tp_reg, dp_tp_ctl_value);

All this ad-hoc modeset code really should not exist. It's going to
have different bugs than the norma modeset paths, so compliance testing
this special code proves absolutely nothing about the normal modeset
code. IMO someone needs to take up the task of rewrtiting all this to
just perform normal modesets.

>  }
>  =

>  static void
> @@ -5497,20 +5507,28 @@ intel_dp_autotest_phy_ddi_enable(struct intel_dp =
*intel_dp, uint8_t lane_cnt)
>  	enum port port =3D intel_dig_port->base.port;
>  	struct intel_crtc *crtc =3D to_intel_crtc(intel_dig_port->base.base.crt=
c);
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value;
> +	u32 trans_ddi_func_ctl_value, trans_conf_value, dp_tp_ctl_value, trans_=
ddi_sel_port;
> +	i915_reg_t dp_tp_reg;
> +
> +	if (IS_ELKHARTLAKE(dev_priv)) {
> +		dp_tp_reg =3D DP_TP_CTL(port);
> +		trans_ddi_sel_port =3D TRANS_DDI_SELECT_PORT(port);
> +	} else if (IS_TIGERLAKE(dev_priv)) {
> +		dp_tp_reg =3D TGL_DP_TP_CTL(pipe);
> +		trans_ddi_sel_port =3D TGL_TRANS_DDI_SELECT_PORT(port);
> +	}
>  =

>  	trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
>  						 TRANS_DDI_FUNC_CTL(pipe));
>  	trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
>  	dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
> -
>  	trans_ddi_func_ctl_value |=3D TRANS_DDI_FUNC_ENABLE |
> -				    TGL_TRANS_DDI_SELECT_PORT(port);
> +				    trans_ddi_sel_port;
>  	trans_conf_value |=3D PIPECONF_ENABLE;
>  	dp_tp_ctl_value |=3D DP_TP_CTL_ENABLE;
>  =

>  	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
> -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> +	intel_de_write(dev_priv, dp_tp_reg, dp_tp_ctl_value);
>  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
>  		       trans_ddi_func_ctl_value);
>  }
> @@ -5557,6 +5575,7 @@ static u8 intel_dp_autotest_phy_pattern(struct inte=
l_dp *intel_dp)
>  static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv =3D i915;
>  	u8 response =3D DP_TEST_NAK;
>  	u8 request =3D 0;
>  	int status;
> @@ -5582,6 +5601,11 @@ static void intel_dp_handle_test_request(struct in=
tel_dp *intel_dp)
>  		response =3D intel_dp_autotest_edid(intel_dp);
>  		break;
>  	case DP_TEST_LINK_PHY_TEST_PATTERN:
> +		if (!IS_ELKHARTLAKE(dev_priv) || !IS_TIGERLAKE(dev_priv)) {
> +			drm_dbg_kms(&i915->drm,
> +				"PHY compliance for platform not supported\n");
> +			return;
> +		}
>  		drm_dbg_kms(&i915->drm, "PHY_PATTERN test requested\n");
>  		response =3D intel_dp_autotest_phy_pattern(intel_dp);
>  		break;
> -- =

> 2.7.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
