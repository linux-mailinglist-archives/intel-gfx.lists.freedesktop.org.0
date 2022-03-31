Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C767E4EDA99
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE59B10E175;
	Thu, 31 Mar 2022 13:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB4210E175
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733666; x=1680269666;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6opc3eV7wC3iVdWukHco95RomebxqmyVER0rjUFryp4=;
 b=cvMbApxeNJ8PIiwgp7kglEagjI6djkbgFFkUm+VlVcM3ZoaTdpU6eNG9
 7lxv7PQef7l8mhVbeUJXVP5R9tDvxmPR5vWoPNS72jSOiY4ttKw4b/sPo
 25+R6A2OaAENiHhoeJEAiM/qhwbRrkM57Idyk6GwpDxcJJns4hkundZJw
 Im0vbg6fpni+KtbIBEjneDleIWGbhDd4hj8QQHVVsboI0XdelqmUNxhb6
 lxiGr4cWiIFoAFQquya0vuQOug1rGWztZ8tMyIku5RgtnFuKpBNfLBNdW
 4JS2bxhhGZd8NMLAVwEnGnx4du9jaOxowVi+nDr4ZMziYG/JC28xmvelk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="320531961"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="320531961"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:34:26 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566487723"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:34:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-7-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:34:22 +0300
Message-ID: <874k3e9rfl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/11] drm/i915: Stop duplicating the
 EDID fixed/downclock modes
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
> Instead of duplicating the fixed/downclock modes we can just grab
> the originals straight from the probed_modes list and keep them.
> The next .get_modes() is going to repopulate the probed_modes list
> anyway so whatever we leave there is just going to sit around until
> that time wasting memory. In fact let's clear out the probed modes
> list entirely to make sure we get 100% consistent behaviour starting
> already from the very first real .get_modes().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 62 ++++++++++------------
>  1 file changed, 29 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 3b1da9aa023f..5d08b2bf27ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -164,8 +164,7 @@ static void intel_panel_add_edid_downclock_mode(struc=
t intel_connector *connecto
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_preferred_fixed_mode(connector);
> -	const struct drm_display_mode *scan, *best_mode =3D NULL;
> -	struct drm_display_mode *downclock_mode;
> +	struct drm_display_mode *scan, *best_mode =3D NULL;
>  	int best_clock =3D fixed_mode->clock;
>=20=20
>  	list_for_each_entry(scan, &connector->base.probed_modes, head) {
> @@ -190,58 +189,54 @@ static void intel_panel_add_edid_downclock_mode(str=
uct intel_connector *connecto
>  	if (!best_mode)
>  		return;
>=20=20
> -	downclock_mode =3D drm_mode_duplicate(&dev_priv->drm, best_mode);
> -	if (!downclock_mode)
> -		return;
> -
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] using downclock mode from EDID: " DRM_MODE_FMT =
"\n",
> +		    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name,
> -		    DRM_MODE_ARG(downclock_mode));
> +		    DRM_MODE_ARG(best_mode));
>=20=20
> -	list_add_tail(&downclock_mode->head, &connector->panel.fixed_modes);
> +	list_move_tail(&best_mode->head, &connector->panel.fixed_modes);
>  }
>=20=20
>  static void intel_panel_add_edid_fixed_mode(struct intel_connector *conn=
ector)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -	const struct drm_display_mode *scan;
> -	struct drm_display_mode *fixed_mode;
> +	struct drm_display_mode *scan, *fixed_mode =3D NULL;
>=20=20
>  	if (list_empty(&connector->base.probed_modes))
>  		return;
>=20=20
> -	/* prefer fixed mode from EDID if available */
> +	/* make sure the preferred mode is first */
>  	list_for_each_entry(scan, &connector->base.probed_modes, head) {
> -		if ((scan->type & DRM_MODE_TYPE_PREFERRED) =3D=3D 0)
> -			continue;
> -
> -		fixed_mode =3D drm_mode_duplicate(&dev_priv->drm, scan);
> -		if (!fixed_mode)
> -			return;
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] using preferred mode from EDID: " DRM_MODE_FMT=
 "\n",
> -			    connector->base.base.id, connector->base.name,
> -			    DRM_MODE_ARG(fixed_mode));
> -
> -		list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> -		return;
> +		if (scan->type & DRM_MODE_TYPE_PREFERRED) {
> +			fixed_mode =3D scan;
> +			break;
> +		}
>  	}
>=20=20
> -	scan =3D list_first_entry(&connector->base.probed_modes,
> -				typeof(*scan), head);
> -	fixed_mode =3D drm_mode_duplicate(&dev_priv->drm, scan);
>  	if (!fixed_mode)
> -		return;
> +		fixed_mode =3D list_first_entry(&connector->base.probed_modes,
> +					      typeof(*fixed_mode), head);
>=20=20
> -	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
> +		    "[CONNECTOR:%d:%s] using %s EDID fixed mode: " DRM_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name,
> +		    fixed_mode->type & DRM_MODE_TYPE_PREFERRED ? "preferred" : "first",
>  		    DRM_MODE_ARG(fixed_mode));
>=20=20
> -	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> +	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> +
> +	list_move_tail(&fixed_mode->head, &connector->panel.fixed_modes);
> +}
> +
> +static void intel_panel_destroy_probed_modes(struct intel_connector *con=
nector)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct drm_display_mode *mode, *next;
> +
> +	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> +		list_del(&mode->head);
> +		drm_mode_destroy(&i915->drm, mode);
> +	}
>  }
>=20=20
>  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,=
 bool has_drrs)
> @@ -249,6 +244,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_co=
nnector *connector, bool ha
>  	intel_panel_add_edid_fixed_mode(connector);
>  	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
>  		intel_panel_add_edid_downclock_mode(connector);
> +	intel_panel_destroy_probed_modes(connector);
>  }
>=20=20
>  static void intel_panel_add_fixed_mode(struct intel_connector *connector,

--=20
Jani Nikula, Intel Open Source Graphics Center
