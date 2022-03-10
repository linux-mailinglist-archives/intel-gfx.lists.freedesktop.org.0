Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2DE4D4373
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 216AF10FDFE;
	Thu, 10 Mar 2022 09:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849E410FDF7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646904347; x=1678440347;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MKMw3/EfobyAeOD7tlfDTJi0y3r/M82WH/6kygnNVNk=;
 b=jMQmg14ZelEIzf6F/CtwbxmWiggJt899mHQoxeIGbeqLpporAbI/r7+G
 Lc28BieRQkrgUfJBm+ax9hjqKVYHjqFFg+keQPF/BuUenMH7wHEvXMZxV
 ML/X5CguzROZZZOY9aMNzcAjJ7XL7dBuuNqBrSMRs8iISJ33oIbOCqbtI
 K/SJhhSEmdx8qE98BBCM8j4+4ATTQEjhDeN5PU4d40JvmScwgB5p8QpZs
 ExuDubzXLUomNL0K/Iy64dJhLfxzj+M1FfQ6XrfCgkiC+/JFavHDlH9GQ
 74SMjUcitEzuVyC5h9hNPQpoWkgBN4v4CC7pejNA4ow3j+RcZQBbICDPG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="341632077"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="341632077"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:25:45 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="538379417"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:25:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-3-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:25:40 +0200
Message-ID: <871qzayx9n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915: Constify intel_drrs_init()
 args
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pass the fixed_mode as const to intel_drrs_init() since it's
> not supposed to mutate the mode.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_drrs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 146f2cf7d01a..3b871a51eb55 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -421,7 +421,7 @@ void intel_drrs_page_flip(struct intel_atomic_state *=
state,
>   */
>  struct drm_display_mode *
>  intel_drrs_init(struct intel_connector *connector,
> -		struct drm_display_mode *fixed_mode)
> +		const struct drm_display_mode *fixed_mode)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct intel_encoder *encoder =3D connector->encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index 9ec9c447211a..6bca7692f59f 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -31,6 +31,6 @@ void intel_drrs_compute_config(struct intel_dp *intel_d=
p,
>  			       struct intel_crtc_state *pipe_config,
>  			       int output_bpp, bool constant_n);
>  struct drm_display_mode *intel_drrs_init(struct intel_connector *connect=
or,
> -					 struct drm_display_mode *fixed_mode);
> +					 const struct drm_display_mode *fixed_mode);
>=20=20
>  #endif /* __INTEL_DRRS_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
