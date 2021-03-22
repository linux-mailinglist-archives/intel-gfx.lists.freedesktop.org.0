Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A0E344B14
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:21:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B086E517;
	Mon, 22 Mar 2021 16:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856A86E517
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:21:00 +0000 (UTC)
IronPort-SDR: 0MAnBg/HKsFQJliyIo+cVpaanXreA9qqm+dU47ue7aBgYYMUi61hZO7kWYi/yn3mKCQ9Tbb1zh
 mG5Gp/XhG5sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="190331249"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="190331249"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 09:21:00 -0700
IronPort-SDR: fcvBmp2YK+HW0dGQnl7fOPCoHvqd3NrEOIlteI+08jcid3EfmuZBM330q6NfDj3hdDD2IXNiwz
 6c0NzXyxjReA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="451790876"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2021 09:20:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 18:20:57 +0200
Date: Mon, 22 Mar 2021 18:20:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Message-ID: <YFjD6WRb/XEAvZbu@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
 <20210322143008.29250-6-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322143008.29250-6-bhanuprakash.modem@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/display: Extract ilk_read_csc()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 08:00:06PM +0530, Bhanuprakash Modem wrote:
> For ilk+, add hw read out to create hw blob of ctm coeff values.

We need an explanation why this is safe given display w/a 1184...

> =

> Cc: Swati Sharma <swati2.sharma@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 52 ++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 15f97fbb77b3..877833f294bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -321,6 +321,54 @@ static void ilk_load_csc_matrix(const struct intel_c=
rtc_state *crtc_state)
>  		       crtc_state->csc_mode);
>  }
>  =

> +static struct drm_property_blob *ilk_read_csc_matrix(struct intel_crtc *=
crtc)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	struct drm_property_blob *blob;
> +	struct drm_color_ctm *ctm;
> +	u32 temp;
> +
> +	blob =3D drm_property_create_blob(&dev_priv->drm,
> +					sizeof(struct drm_color_ctm),
> +					NULL);
> +	if (IS_ERR(blob))
> +		return NULL;
> +
> +	ctm =3D blob->data;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe));
> +	ctm->matrix[0] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[1] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_BY(pipe));
> +	ctm->matrix[2] =3D (temp >> 16) & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe));
> +	ctm->matrix[3] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[4] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_BU(pipe));
> +	ctm->matrix[5] =3D (temp >> 16) & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe));
> +	ctm->matrix[6] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[7] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, PIPE_CSC_COEFF_BV(pipe));
> +	ctm->matrix[8] =3D (temp >> 16) & 0xffff;
> +
> +	return blob;
> +}
> +
> +static void ilk_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (crtc_state->csc_enable)
> +		crtc_state->hw.ctm =3D ilk_read_csc_matrix(crtc);
> +}
> +
>  static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_stat=
e)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2226,13 +2274,17 @@ void intel_color_init(struct intel_crtc *crtc)
>  		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
>  			dev_priv->display.load_luts =3D glk_load_luts;
>  			dev_priv->display.read_luts =3D glk_read_luts;
> +			dev_priv->display.read_csc =3D ilk_read_csc;
>  		} else if (INTEL_GEN(dev_priv) >=3D 8) {
>  			dev_priv->display.load_luts =3D bdw_load_luts;
> +			dev_priv->display.read_csc =3D ilk_read_csc;
>  		} else if (INTEL_GEN(dev_priv) >=3D 7) {
>  			dev_priv->display.load_luts =3D ivb_load_luts;
> +			dev_priv->display.read_csc =3D ilk_read_csc;
>  		} else {
>  			dev_priv->display.load_luts =3D ilk_load_luts;
>  			dev_priv->display.read_luts =3D ilk_read_luts;
> +			dev_priv->display.read_csc =3D ilk_read_csc;
>  		}
>  	}
>  =

> -- =

> 2.20.1
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
