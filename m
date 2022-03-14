Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5554D802B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE2F10E11B;
	Mon, 14 Mar 2022 10:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3929C10E11B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647254743; x=1678790743;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s612ypXK9pN1yYxehNRmXQRyNBLtVe0BM61zkJgCUIg=;
 b=kLRJS8SOxTN4Xsf3kCncOtSXF4O835uqUdbx42j2wkcNapQVFT7Zr5PK
 1rZghOo35SIS6WmmdLXZEnkEX/fIZY4pAfBH9DM8NHOh9ROid7dsOV/Qr
 cUCqYVa0Htm0gz1GZ8mfFzX4ew9PmLAhjlI3atD8ITc/4RnKf7/jvIXv5
 4QO6DOv966X3ZkDCfewzDsgdNKHEr9E79U4GbbSKxImzGlg4+QCtdzHD5
 F5Ky93XCw1Mv4eMfrtCEkE2Gzsbb7lEJzRfSG+L3u9rRrEnREvZHpke8T
 6UK5+SG3JmZ8Jj/C6rih5wKEZ+hS7Ekw/6s5xZKwh+jILFULF9IuAR8R+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="319216717"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="319216717"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:45:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556357076"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:45:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311202215.20991-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-17-ville.syrjala@linux.intel.com>
 <20220311202215.20991-1-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:45:38 +0200
Message-ID: <87fsnkvmlp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 16/16] drm/i915: Convert
 fixed_mode/downclock_mode into a list
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Store the fixed_mode and downclock_mode as a real list,
> in preparation for exposing other supported modes as well.
>
> v2: Init the list in intel_sdvo_connector_alloc() too
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Even for the two mode case this makes stuff cleaner!

One nitpick below, regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_connector.c    |  2 +
>  .../drm/i915/display/intel_display_debugfs.c  |  9 +-
>  .../drm/i915/display/intel_display_types.h    |  3 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    | 82 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +
>  5 files changed, 53 insertions(+), 45 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index c65f95a9a1ec..a5f5dd55b0cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -54,6 +54,8 @@ int intel_connector_init(struct intel_connector *connec=
tor)
>  	__drm_atomic_helper_connector_reset(&connector->base,
>  					    &conn_state->base);
>=20=20
> +	INIT_LIST_HEAD(&connector->panel.fixed_modes);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 35c27d67d584..b3d426cc3266 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -548,12 +548,15 @@ static void intel_encoder_info(struct seq_file *m,
>  static void intel_panel_info(struct seq_file *m,
>  			     struct intel_connector *connector)
>  {
> -	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
> +	const struct drm_display_mode *fixed_mode;
>=20=20
> -	if (!fixed_mode)
> +	if (list_empty(&connector->panel.fixed_modes))
>  		return;
>=20=20
> -	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(fixed_mo=
de));
> +	seq_puts(m, "\tfixed modes:\n");
> +
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
> +		intel_seq_print_mode(m, 2, fixed_mode);
>  }
>=20=20
>  static void intel_hdcp_info(struct seq_file *m,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e34800ab6924..d84e82f3eab9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -280,8 +280,7 @@ struct intel_panel_bl_funcs {
>  };
>=20=20
>  struct intel_panel {
> -	struct drm_display_mode *fixed_mode;
> -	struct drm_display_mode *downclock_mode;
> +	struct list_head fixed_modes;
>=20=20
>  	/* backlight */
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 08a0612edd60..2d5c09b1ab72 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -48,59 +48,59 @@ bool intel_panel_use_ssc(struct drm_i915_private *i91=
5)
>  const struct drm_display_mode *
>  intel_panel_preferred_fixed_mode(struct intel_connector *connector)
>  {
> -	return connector->panel.fixed_mode;
> +	const struct drm_display_mode *fixed_mode;
> +
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head)
> +		return fixed_mode;
> +
> +	return NULL;

Nitpick, a bit verbose but self-documenting alternative:

	return list_first_entry_or_null(&connector->panel.fixed_modes, struct drm_=
display_mode, head);

>  }
>=20=20
>  const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode)
>  {
> -	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
> -	const struct drm_display_mode *downclock_mode =3D connector->panel.down=
clock_mode;
> +	const struct drm_display_mode *fixed_mode, *best_mode =3D NULL;
> +	int vrefresh =3D drm_mode_vrefresh(mode);
>=20=20
> -	/* pick the one that is closer in terms of vrefresh */
> -	/* FIXME make this a a list of modes so we can have more than two */
> -	if (fixed_mode && downclock_mode &&
> -	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
> -	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
> -		return downclock_mode;
> -	else
> -		return fixed_mode;
> +	/* pick the fixed_mode that is closest in terms of vrefresh */
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> +		if (!best_mode ||
> +		    abs(drm_mode_vrefresh(fixed_mode) - vrefresh) <
> +		    abs(drm_mode_vrefresh(best_mode) - vrefresh))
> +			best_mode =3D fixed_mode;
> +	}
> +
> +	return best_mode;
>  }
>=20=20
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *adjusted_mode)
>  {
> -	const struct drm_display_mode *downclock_mode =3D connector->panel.down=
clock_mode;
> +	const struct drm_display_mode *fixed_mode, *best_mode =3D NULL;
> +	int vrefresh =3D drm_mode_vrefresh(adjusted_mode);
>=20=20
> -	if (downclock_mode &&
> -	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(adjusted_mode=
))
> -		return downclock_mode;
> -	else
> -		return NULL;
> +	/* pick the fixed_mode with the lowest refresh rate */
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> +		if (drm_mode_vrefresh(fixed_mode) < vrefresh) {
> +			vrefresh =3D drm_mode_vrefresh(fixed_mode);
> +			best_mode =3D fixed_mode;
> +		}
> +	}
> +
> +	return best_mode;
>  }
>=20=20
>  int intel_panel_get_modes(struct intel_connector *connector)
>  {
> +	const struct drm_display_mode *fixed_mode;
>  	int num_modes =3D 0;
>=20=20
> -	if (connector->panel.fixed_mode) {
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
>  		struct drm_display_mode *mode;
>=20=20
> -		mode =3D drm_mode_duplicate(connector->base.dev,
> -					  connector->panel.fixed_mode);
> -		if (mode) {
> -			drm_mode_probed_add(&connector->base, mode);
> -			num_modes++;
> -		}
> -	}
> -
> -	if (connector->panel.downclock_mode) {
> -		struct drm_display_mode *mode;
> -
> -		mode =3D drm_mode_duplicate(connector->base.dev,
> -					  connector->panel.downclock_mode);
> +		mode =3D drm_mode_duplicate(connector->base.dev, fixed_mode);
>  		if (mode) {
>  			drm_mode_probed_add(&connector->base, mode);
>  			num_modes++;
> @@ -114,7 +114,8 @@ enum drrs_type intel_panel_drrs_type(struct intel_con=
nector *connector)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
> -	if (!connector->panel.downclock_mode)
> +	if (list_empty(&connector->panel.fixed_modes) ||
> +	    list_is_singular(&connector->panel.fixed_modes))
>  		return DRRS_TYPE_NONE;
>=20=20
>  	return i915->vbt.drrs_type;
> @@ -608,8 +609,10 @@ int intel_panel_init(struct intel_panel *panel,
>  {
>  	intel_backlight_init_funcs(panel);
>=20=20
> -	panel->fixed_mode =3D fixed_mode;
> -	panel->downclock_mode =3D downclock_mode;
> +	if (fixed_mode)
> +		list_add_tail(&fixed_mode->head, &panel->fixed_modes);
> +	if (downclock_mode)
> +		list_add_tail(&downclock_mode->head, &panel->fixed_modes);
>=20=20
>  	return 0;
>  }
> @@ -618,13 +621,12 @@ void intel_panel_fini(struct intel_panel *panel)
>  {
>  	struct intel_connector *intel_connector =3D
>  		container_of(panel, struct intel_connector, panel);
> +	struct drm_display_mode *fixed_mode, *next;
>=20=20
>  	intel_backlight_destroy(panel);
>=20=20
> -	if (panel->fixed_mode)
> -		drm_mode_destroy(intel_connector->base.dev, panel->fixed_mode);
> -
> -	if (panel->downclock_mode)
> -		drm_mode_destroy(intel_connector->base.dev,
> -				panel->downclock_mode);
> +	list_for_each_entry_safe(fixed_mode, next, &panel->fixed_modes, head) {
> +		list_del(&fixed_mode->head);
> +		drm_mode_destroy(intel_connector->base.dev, fixed_mode);
> +	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 6e0a4f48d84d..158e750e5b4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2747,6 +2747,8 @@ static struct intel_sdvo_connector *intel_sdvo_conn=
ector_alloc(void)
>  	__drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
>  					    &conn_state->base.base);
>=20=20
> +	INIT_LIST_HEAD(&sdvo_connector->base.panel.fixed_modes);
> +
>  	return sdvo_connector;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
