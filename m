Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAC73051D6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB0A6E511;
	Wed, 27 Jan 2021 05:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF0D6E511
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 05:18:13 +0000 (UTC)
IronPort-SDR: oytUFERD/vckux0xJPR/lmHgPasrvJI6ZMFwSMNM9nDf/IAuN1a9GPVI2xJPiyGkzlvRSSgqqa
 b/d1jRPA6sTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="159794202"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="159794202"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:18:12 -0800
IronPort-SDR: XpE+3/TpyddDJXG++CY6fW3ib1nXRbKwYL9m8PJCa5KQz71OATfZwut3xtFPGxAuOX9IYjuM56
 Qas++94zv4ow==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="504786932"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:18:11 -0800
Date: Tue, 26 Jan 2021 21:18:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127051810.GK787460@mdroper-desk1.amr.corp.intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-8-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127041159.136409-8-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/adl_s: Update memory bandwidth
 parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 26, 2021 at 08:11:57PM -0800, Aditya Swarup wrote:
> From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> =

> Just like RKL, the ADL_S platform also has different memory
> characteristics from past platforms.  Update the values used
> by our memory bandwidth calculations accordingly.
> =

> Bspec: 64631
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.c=
om>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index bd060404d249..32522ec1ffb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -205,6 +205,12 @@ static const struct intel_sa_info rkl_sa_info =3D {
>  	.displayrtids =3D 128,
>  };
>  =

> +static const struct intel_sa_info adls_sa_info =3D {
> +	.deburst =3D 16,
> +	.deprogbwlimit =3D 38, /* GB/s */
> +	.displayrtids =3D 256,
> +};
> +
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const stru=
ct intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi =3D {};
> @@ -317,6 +323,8 @@ void intel_bw_init_hw(struct drm_i915_private *dev_pr=
iv)
>  =

>  	if (IS_ROCKETLAKE(dev_priv))
>  		icl_get_bw_info(dev_priv, &rkl_sa_info);
> +	else if (IS_ALDERLAKE_S(dev_priv))
> +		icl_get_bw_info(dev_priv, &adls_sa_info);

Minor nitpick: i915 convention is to always put the newest platform /
generation at the top of the if/else tree for consistency.


Matt

>  	else if (IS_GEN(dev_priv, 12))
>  		icl_get_bw_info(dev_priv, &tgl_sa_info);
>  	else if (IS_GEN(dev_priv, 11))
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
