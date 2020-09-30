Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37B227EA61
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 15:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE62B6E095;
	Wed, 30 Sep 2020 13:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354956E095
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 13:56:05 +0000 (UTC)
IronPort-SDR: KoGpa6RPbWNUr1w1aocBqI2NGtFvzPIcjjdUAaSJzfOd53cK+VrD8DyYmeIzc6iTtoSuNt5nbX
 PNLXudxZWi1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159834506"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159834506"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 06:56:04 -0700
IronPort-SDR: PhSR4KAsZxoRi9V49TIeA4Rj9tMRkJSnIbX/F9JQ48cFwBRZ3p40bsocwclTMEDxCpcc+0wQVE
 LrezehaBCptA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="497660564"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 06:56:03 -0700
Date: Wed, 30 Sep 2020 16:56:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930135600.GA867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: s/pre_empemph/preemph/
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

On Wed, Sep 30, 2020 at 02:34:39AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> I managed to fumble some functions names. Fix them.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 54a4b81ea3ff..ff96540c8612 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4167,12 +4167,12 @@ static u8 intel_dp_voltage_max_3(struct intel_dp =
*intel_dp)
>  	return DP_TRAIN_VOLTAGE_SWING_LEVEL_3;
>  }
>  =

> -static u8 intel_dp_pre_empemph_max_2(struct intel_dp *intel_dp)
> +static u8 intel_dp_preemph_max_2(struct intel_dp *intel_dp)
>  {
>  	return DP_TRAIN_PRE_EMPH_LEVEL_2;
>  }
>  =

> -static u8 intel_dp_pre_empemph_max_3(struct intel_dp *intel_dp)
> +static u8 intel_dp_preemph_max_3(struct intel_dp *intel_dp)
>  {
>  	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
> @@ -7953,10 +7953,10 @@ bool intel_dp_init(struct drm_i915_private *dev_p=
riv,
>  =

>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv) ||
>  	    (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
> -		dig_port->dp.preemph_max =3D intel_dp_pre_empemph_max_3;
> +		dig_port->dp.preemph_max =3D intel_dp_preemph_max_3;
>  		dig_port->dp.voltage_max =3D intel_dp_voltage_max_3;
>  	} else {
> -		dig_port->dp.preemph_max =3D intel_dp_pre_empemph_max_2;
> +		dig_port->dp.preemph_max =3D intel_dp_preemph_max_2;
>  		dig_port->dp.voltage_max =3D intel_dp_voltage_max_2;
>  	}
>  =

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
