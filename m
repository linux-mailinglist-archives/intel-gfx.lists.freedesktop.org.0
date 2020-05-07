Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 042D41C8AAA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 14:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEED6E0F0;
	Thu,  7 May 2020 12:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708546E0F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 12:24:26 +0000 (UTC)
IronPort-SDR: 8bB62AeNNz8SRQK5ad9KhjpDeGwKWMYfuqur7J1Kn4kTMMH4PbIrDMVHXr8S7oM3wQRrpciKzy
 uUeg21xiO6cw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 05:24:25 -0700
IronPort-SDR: EB6bGGOG/B1H6NNLZIueg1IkbqtgBHQaRoVKCKrxD9nvM+wn0R9oUGOBT3jYxmYuINsjzXCrX3
 wBDaRIbqfBUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="250079334"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 07 May 2020 05:24:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 May 2020 15:24:22 +0300
Date: Thu, 7 May 2020 15:24:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200507122422.GF6112@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504225227.464666-7-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 06/22] drm/i915/rkl: Update memory
 bandwidth parameters
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

On Mon, May 04, 2020 at 03:52:11PM -0700, Matt Roper wrote:
> The RKL platform has different memory characteristics from past
> platforms.  Update the values used by our memory bandwidth calculations
> accordingly.
> =

> Bspec: 53998
> Cc: James Ausmus <james.ausmus@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 6e7cc3a4f1aa..d435cc6019e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -176,6 +176,12 @@ static const struct intel_sa_info tgl_sa_info =3D {
>  	.displayrtids =3D 256,
>  };
>  =

> +static const struct intel_sa_info rkl_sa_info =3D {
> +	.deburst =3D 16,
> +	.deprogbwlimit =3D 20, /* GB/s */
> +	.displayrtids =3D 128,
> +};

Numbers appear to match the spec.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const stru=
ct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi =3D {};
> @@ -271,7 +277,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_pr=
iv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  =

> -	if (IS_GEN(dev_priv, 12))
> +	if (IS_ROCKETLAKE(dev_priv))
> +		icl_get_bw_info(dev_priv, &rkl_sa_info);
> +	else if (IS_GEN(dev_priv, 12))
>  		icl_get_bw_info(dev_priv, &tgl_sa_info);
>  	else if (IS_GEN(dev_priv, 11))
>  		icl_get_bw_info(dev_priv, &icl_sa_info);
> -- =

> 2.24.1
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
