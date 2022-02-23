Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D914C0E3F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 09:29:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0891F10E461;
	Wed, 23 Feb 2022 08:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9538C10E461
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 08:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645604961; x=1677140961;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=I5mRBty6cUCU7qpDzpX48kOjtGwxb+p7SLySm4kMedo=;
 b=WQgcWD0rWZsRdmKF7PX5Pj+or88nNwr6ZesMHk0tM2TcMCkrZxGhjfgQ
 stLEyX9ysrfstJfsEHAL4EeJEkUainNo7dF4dzsEZajaW4Iyb+XGkpb05
 Wl0jaiJDWAIK5/VfenfFJENbuwt44PJrWFSgsoCAo6Dun4BZs2KSETFYM
 bXs4a7O3kCCskUBYiTm1H/vzSppZbuqGnJJypQFyTqqlHM5A6n7yrDfxP
 Jq0iWzRBjjrYb/vTRHd07eHCrFasvRVLno98P/DZATxTc2t4eC6lCcWQo
 gg9SqonMkPGpxvRJJca6g3DOaxHIGLuui1QEIpm/AP93C94Lik6e6aTGG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315140842"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="315140842"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 00:29:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548144044"
Received: from khagn-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.68])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2022 00:29:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220223081810.19917-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220223081810.19917-1-ville.syrjala@linux.intel.com>
Date: Wed, 23 Feb 2022 10:29:16 +0200
Message-ID: <87mtii6l5v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/display/vrr: Reset VRR
 capable property on a long hpd"
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

On Wed, 23 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This reverts commit 9bc34b4d0f3cb368241684cc5e0445d435dded44.
>
> Just oopses on most machines.
>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Auch, "ERROR: It appears as if the changes made in Patchwork_22288
prevented too many machines from booting." [1].

Acked-by: Jani Nikula <jani.nikula@intel.com>


[1] https://lore.kernel.org/r/164506400291.18053.4904919379639827273@emeril=
.freedesktop.org


> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 929e9b6febf1..1046e7fe310a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4455,12 +4455,6 @@ intel_dp_detect(struct drm_connector *connector,
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
>=20=20
> -		/* Reset VRR Capable property */
> -		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
> -			    connector->base.id, connector->name);
> -		drm_connector_set_vrr_capable_property(connector,
> -						       false);
> -
>  		if (intel_dp->is_mst) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "MST device may have disappeared %d vs %d\n",
> @@ -4575,18 +4569,15 @@ static int intel_dp_get_modes(struct drm_connecto=
r *connector)
>  {
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
>  	struct edid *edid;
> -	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>  	int num_modes =3D 0;
>=20=20
>  	edid =3D intel_connector->detect_edid;
>  	if (edid) {
> -		bool vrr_capable;
> -
>  		num_modes =3D intel_connector_update_modes(connector, edid);
> -		vrr_capable =3D intel_vrr_is_capable(connector);
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
> -			    connector->base.id, connector->name, yesno(vrr_capable));
> -		drm_connector_set_vrr_capable_property(connector, vrr_capable);
> +
> +		if (intel_vrr_is_capable(connector))
> +			drm_connector_set_vrr_capable_property(connector,
> +							       true);
>  	}
>=20=20
>  	/* Also add fixed mode, which may or may not be present in EDID */

--=20
Jani Nikula, Intel Open Source Graphics Center
