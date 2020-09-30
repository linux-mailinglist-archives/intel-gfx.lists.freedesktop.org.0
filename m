Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AA727ED03
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0292C89B5F;
	Wed, 30 Sep 2020 15:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E8989B5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:31:35 +0000 (UTC)
IronPort-SDR: jd1yYImbdSYfHQPgwU0UwcPqSwE+RSY0nJmlFlC/T7B8OtaUFO59ATbCflRP3Xx1Mt4SI0vrV1
 EmLfuqDG89qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="161698384"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="161698384"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:31:34 -0700
IronPort-SDR: qCBg5awiPWgNjrVaD5feoSq7EduEWrCNHdW/2BGNwQf+ImJJ82DQWkKhXcrgR8aUk/xFjA+WGZ
 X97rsqCLLPOg==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="294641574"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:31:33 -0700
Date: Wed, 30 Sep 2020 18:31:29 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930153129.GI867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-10-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 09/11] drm/i915: Split TGL DKL PHY buf
 trans per output type
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 02:34:47AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Make the mess inside the buf trans funcs a bit more manageable by
> splitting along the lines of output type.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 31 ++++++++++++++++++------
>  1 file changed, 23 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index fea06c1b09d9..7032c367075a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1218,19 +1218,34 @@ tgl_get_combo_buf_trans(struct intel_encoder *enc=
oder, int type, int rate,
>  }
>  =

>  static const struct tgl_dkl_phy_ddi_buf_trans *
> -tgl_get_dkl_buf_trans(struct intel_encoder *encoder, int type, int rate,
> -		      int *n_entries)
> +tgl_get_dkl_buf_trans_hdmi(struct intel_encoder *encoder, int type, int =
rate,
> +			   int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_HDMI) {
> -		*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
> -		return tgl_dkl_phy_hdmi_ddi_trans;
> -	} else if (rate > 270000) {
> +	*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
> +	return tgl_dkl_phy_hdmi_ddi_trans;
> +}
> +
> +static const struct tgl_dkl_phy_ddi_buf_trans *
> +tgl_get_dkl_buf_trans_dp(struct intel_encoder *encoder, int type, int ra=
te,
> +			 int *n_entries)
> +{
> +	if (rate > 270000) {
>  		*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans_hbr2);
>  		return tgl_dkl_phy_dp_ddi_trans_hbr2;
> +	} else {
> +		*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
> +		return tgl_dkl_phy_dp_ddi_trans;
>  	}
> +}
>  =

> -	*n_entries =3D ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
> -	return tgl_dkl_phy_dp_ddi_trans;
> +static const struct tgl_dkl_phy_ddi_buf_trans *
> +tgl_get_dkl_buf_trans(struct intel_encoder *encoder, int type, int rate,
> +		      int *n_entries)
> +{
> +	if (type =3D=3D INTEL_OUTPUT_HDMI)
> +		return tgl_get_dkl_buf_trans_hdmi(encoder, type, rate, n_entries);
> +	else
> +		return tgl_get_dkl_buf_trans_dp(encoder, type, rate, n_entries);
>  }
>  =

>  static int intel_ddi_hdmi_level(struct intel_encoder *encoder)
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
