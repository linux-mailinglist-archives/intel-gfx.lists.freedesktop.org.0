Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6842A344AEB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4AE56E514;
	Mon, 22 Mar 2021 16:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432E36E514
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:18:29 +0000 (UTC)
IronPort-SDR: wZ8qUj6O25jXOB9sArv72BD2Y6RCh1eIsV3v++yTi/Q3S16PsRIq0EjHdLp92FkG5Mcdd5NpOr
 TA3yf+Ns72BQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="189704105"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="189704105"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 09:18:28 -0700
IronPort-SDR: sCfpJ0UBiUlrA0iBvTN4gnWVP5jPOpe/puvF7LkAVZ3ne1wgYD8WTYGp0RfyawM82rNJPcSnmr
 gMUp3Dw7AbrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407893214"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 22 Mar 2021 09:18:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 18:18:26 +0200
Date: Mon, 22 Mar 2021 18:18:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Message-ID: <YFjDUmSbSAUqkZoG@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
 <20210322143008.29250-5-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322143008.29250-5-bhanuprakash.modem@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/display: Extract chv_read_csc()
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

On Mon, Mar 22, 2021 at 08:00:05PM +0530, Bhanuprakash Modem wrote:
> For Cherryview, add hw read out to create hw blob of ctm coeff
> values.
> =

> Cc: Swati Sharma <swati2.sharma@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 47 ++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 54dfd3523272..15f97fbb77b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1943,6 +1943,52 @@ static void chv_read_luts(struct intel_crtc_state =
*crtc_state)
>  		i965_read_luts(crtc_state);
>  }
>  =

> +static struct drm_property_blob *chv_read_cgm_ctm(struct intel_crtc *crt=
c)
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
> +	temp =3D intel_de_read(dev_priv, CGM_PIPE_CSC_COEFF01(pipe));
> +	ctm->matrix[0] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[1] =3D temp & 0xffff;

We can't store hardware specific junk into the ctm. It needs to get
converted to the proper format.

Would also be a good time to fix the CHV CSC programming to handle
negative values correct, and should probably extend the test cases
to actually catch that particular failure...

> +
> +	temp =3D intel_de_read(dev_priv, CGM_PIPE_CSC_COEFF23(pipe));
> +	ctm->matrix[2] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[3] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, CGM_PIPE_CSC_COEFF45(pipe));
> +	ctm->matrix[4] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[5] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, CGM_PIPE_CSC_COEFF67(pipe));
> +	ctm->matrix[6] =3D (temp >> 16) & 0xffff;
> +	ctm->matrix[7] =3D temp & 0xffff;
> +
> +	temp =3D intel_de_read(dev_priv, CGM_PIPE_CSC_COEFF8(pipe));
> +	ctm->matrix[8] =3D (temp >> 16) & 0xffff;
> +
> +	return blob;
> +}
> +
> +static void chv_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
> +		crtc_state->hw.ctm =3D chv_read_cgm_ctm(crtc);
> +}
> +
>  static struct drm_property_blob *ilk_read_lut_8(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -2145,6 +2191,7 @@ void intel_color_init(struct intel_crtc *crtc)
>  			dev_priv->display.color_commit =3D i9xx_color_commit;
>  			dev_priv->display.load_luts =3D chv_load_luts;
>  			dev_priv->display.read_luts =3D chv_read_luts;
> +			dev_priv->display.read_csc =3D chv_read_csc;
>  		} else if (INTEL_GEN(dev_priv) >=3D 4) {
>  			dev_priv->display.color_check =3D i9xx_color_check;
>  			dev_priv->display.color_commit =3D i9xx_color_commit;
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
