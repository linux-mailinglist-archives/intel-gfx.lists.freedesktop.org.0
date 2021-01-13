Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D2B2F4D5C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:40:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D5C6EA1E;
	Wed, 13 Jan 2021 14:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5E96EA1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:40:53 +0000 (UTC)
IronPort-SDR: Q9GDFeG+idK2U6xZj2qNyA1Zf36CtiGYB106strupyV8+Rpmj/eWq0BGVBvnC1H3Z2HoN48nQE
 avuqt7OerbyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157986112"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="157986112"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:40:52 -0800
IronPort-SDR: rNLZ/Eanu/JiHwubQTjRqk+3j3AFR2hvXE9slh/gkw6mEA+oqs8rugpOrDZVhk7st167WyGrKa
 pdOfyyWC4SnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="345601211"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 13 Jan 2021 06:40:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Jan 2021 16:40:48 +0200
Date: Wed, 13 Jan 2021 16:40:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X/8GcN3sCtcPd9JG@intel.com>
References: <20210113143726.19701-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113143726.19701-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove useless use of
 inline
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

On Wed, Jan 13, 2021 at 04:37:26PM +0200, Jani Nikula wrote:
> skl_scaler_get_filter_select() isn't static and can't be inline.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0189d379a55e..cf9860ff9a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5810,7 +5810,7 @@ static void cnl_program_nearest_filter_coefs(struct=
 drm_i915_private *dev_priv,
>  	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set), 0);
>  }
>  =

> -inline u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, =
int set)
> +u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
>  {
>  	if (filter =3D=3D DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
>  		return (PS_FILTER_PROGRAMMED |
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
