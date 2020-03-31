Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71101999E0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 17:37:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C0189ACC;
	Tue, 31 Mar 2020 15:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BF5389ACC
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 15:37:29 +0000 (UTC)
IronPort-SDR: zhvYYAaFNzg7IAhhxFFWSzuzhVjkVyf50Z+m6IZxKDDK8lomBcQ1sP0w33IeWqQ1+AnkItzfzx
 jJSZSMwqKJsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 08:37:29 -0700
IronPort-SDR: km2IsLtWje0TjsYWQ6+Qj7ssjxbMPtiTPmxTbqd3FPHfGxXi0BR1hpQd/FcoXFzVLAluEdNUFD
 l/fANNuzvXzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="284034572"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 31 Mar 2020 08:37:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Mar 2020 18:37:26 +0300
Date: Tue, 31 Mar 2020 18:37:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200331153726.GQ13686@intel.com>
References: <20200330210044.130510-1-jose.souza@intel.com>
 <20200330210044.130510-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330210044.130510-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/dp/ehl: Update vswing table
 for HBR and RBR
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

On Mon, Mar 30, 2020 at 02:00:43PM -0700, Jos=E9 Roberto de Souza wrote:
> EHL has now only one table for all DP rates.
> =

> BSpec: 21257
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

1-2 are
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 053b21c11b0c..dedb86712a98 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -568,7 +568,7 @@ static const struct cnl_ddi_buf_trans icl_combo_phy_d=
di_translations_hdmi[] =3D {
>  	{ 0x6, 0x7F, 0x35, 0x00, 0x0A },	/* 600   850      3.0   */
>  };
>  =

> -static const struct cnl_ddi_buf_trans ehl_combo_phy_ddi_translations_hbr=
2_hbr3[] =3D {
> +static const struct cnl_ddi_buf_trans ehl_combo_phy_ddi_translations_dp[=
] =3D {
>  						/* NT mV Trans mV db    */
>  	{ 0xA, 0x33, 0x3F, 0x00, 0x00 },	/* 350   350      0.0   */
>  	{ 0xA, 0x47, 0x36, 0x00, 0x09 },	/* 350   500      3.1   */
> @@ -947,10 +947,9 @@ static const struct cnl_ddi_buf_trans *
>  ehl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
>  			int *n_entries)
>  {
> -	if (type !=3D INTEL_OUTPUT_HDMI && type !=3D INTEL_OUTPUT_EDP &&
> -	    rate > 270000) {
> -		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_hbr2_hbr3);
> -		return ehl_combo_phy_ddi_translations_hbr2_hbr3;
> +	if (type !=3D INTEL_OUTPUT_HDMI && type !=3D INTEL_OUTPUT_EDP) {
> +		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_dp);
> +		return ehl_combo_phy_ddi_translations_dp;
>  	}
>  =

>  	return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
> -- =

> 2.26.0
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
