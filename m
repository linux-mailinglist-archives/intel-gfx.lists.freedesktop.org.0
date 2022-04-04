Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FB24F14B3
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 14:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AADD210E4EF;
	Mon,  4 Apr 2022 12:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3601C10E071
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 12:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649075101; x=1680611101;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7E72GSAjv33MNpT840QRztjfdUeXaYrqkJKgpsqtCk0=;
 b=DUObhmLOu2CZDXji0a1DJfOMzvij0rNXyRbAFYy5EHPdOi+V5IfcM7Hs
 9WeThpNBgxX/fKZDqYaQhRCxASc8nIzUBa5wc6jWmHNojlfAgSBoHOqDG
 Tby1M4fYEuooYEvyJxGf0uOfO22BNvfvO0WRgGpNvwlqNIPomuhIJBLcV
 eHFFh6hP5x5c60hGikodUnX83CJFsbakZbnQM5k7MEvGR7FrsdfOfJcw7
 9y7XjjkBytjROfyvMMnMgp+dBKVAOpaDBuTxH/7NuavjrrQT+cAVCiwPC
 JST2k9Rprne36sCpr1KFv2gDlU35tHr4EdINMO0OqYwOQGfTa/ttq7YHF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="258082473"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="258082473"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 05:25:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="523560223"
Received: from tszumski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.141.89])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 05:24:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-2-ville.syrjala@linux.intel.com>
Date: Mon, 04 Apr 2022 15:24:56 +0300
Message-ID: <87a6d16non.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: Extract
 intel_edp_has_drrs()
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull all the eDP specific platform/port checks out from
> intel_drrs_init() into intel_edp_has_drrs().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Whoops, forgot to reply to this one,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 35 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_drrs.c | 24 ----------------
>  2 files changed, 34 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 56c36c9ef173..2c23ec0a880a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4976,6 +4976,39 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>  						       fixed_mode->vdisplay);
>  }
>=20=20
> +static bool
> +intel_edp_has_drrs(struct intel_dp *intel_dp)
> +{
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
> +	if (DISPLAY_VER(i915) < 5) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
> +			    connector->base.base.id, connector->base.name);
> +		return false;
> +	}
> +
> +	if ((DISPLAY_VER(i915) < 8 && !HAS_GMCH(i915)) &&
> +	    encoder->port !=3D PORT_A) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
> +			    connector->base.base.id, connector->base.name,
> +			    encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	if (i915->vbt.drrs_type =3D=3D DRRS_TYPE_NONE) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
> +			    connector->base.base.id, connector->base.name);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  				     struct intel_connector *intel_connector)
>  {
> @@ -5041,7 +5074,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	intel_connector->edid =3D edid;
>=20=20
>  	fixed_mode =3D intel_panel_edid_fixed_mode(intel_connector);
> -	if (fixed_mode)
> +	if (fixed_mode && intel_edp_has_drrs(intel_dp))
>  		downclock_mode =3D intel_drrs_init(intel_connector, fixed_mode);
>=20=20
>  	/* MSO requires information from the EDID */
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index a5c7d58b36e0..1448c3029b8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -373,32 +373,8 @@ intel_drrs_init(struct intel_connector *connector,
>  		const struct drm_display_mode *fixed_mode)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	struct intel_encoder *encoder =3D connector->encoder;
>  	struct drm_display_mode *downclock_mode;
>=20=20
> -	if (DISPLAY_VER(dev_priv) < 5) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
> -			    connector->base.base.id, connector->base.name);
> -		return NULL;
> -	}
> -
> -	if ((DISPLAY_VER(dev_priv) < 8 && !HAS_GMCH(dev_priv)) &&
> -	    encoder->port !=3D PORT_A) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
> -			    connector->base.base.id, connector->base.name,
> -			    encoder->base.base.id, encoder->base.name);
> -		return NULL;
> -	}
> -
> -	if (dev_priv->vbt.drrs_type =3D=3D DRRS_TYPE_NONE) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
> -			    connector->base.base.id, connector->base.name);
> -		return NULL;
> -	}
> -
>  	downclock_mode =3D intel_panel_edid_downclock_mode(connector, fixed_mod=
e);
>  	if (!downclock_mode) {
>  		drm_dbg_kms(&dev_priv->drm,

--=20
Jani Nikula, Intel Open Source Graphics Center
