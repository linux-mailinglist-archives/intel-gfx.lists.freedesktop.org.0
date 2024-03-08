Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7636A876131
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 10:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC3F113831;
	Fri,  8 Mar 2024 09:46:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UEPwkOvh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B85113839
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 09:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709891171; x=1741427171;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XxoPxXXwkRQzhwR9Z1NZSEJqcJvxGvZxJ3XqjCC5iqM=;
 b=UEPwkOvht1j0aU3C8KI5m3hapSDclIV4w04SilJ4rOJY+T0bqMfb0LhK
 R4UaXuTrhFFtcWoUuhNNCg5jeI27Gop8cPReopp6ocwBqh2P7P1XX7MRs
 oJ6/VBweUW0zYCA4YuETvQNesq1iG71vKqqK4RTEMgT3jo8pyca6X/fHO
 GitCOdPoOBbX3X4xuAfOri4mxxC1RqbcoWqmaezZD8w4d9+TXkOnSwpKM
 IzJMuui7JFpKe9Q4v8p0VvPIRgewpsR9GhH2Vs5j7ojHaA/dCohODfHPH
 dKxy4fQ6BaA0PRo7b3clpMUc8KQV45iS1Z1O1OZ1nPI1o+bXo7+0IQXuV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="15745817"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15745817"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:46:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15084300"
Received: from unknown (HELO localhost) ([10.252.34.187])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:46:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915: Use container_of_const() for states
In-Reply-To: <20240307151810.24208-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
 <20240307151810.24208-4-ville.syrjala@linux.intel.com>
Date: Fri, 08 Mar 2024 11:46:05 +0200
Message-ID: <87a5n9ukde.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 07 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> commit 64f6a5d1922b ("container_of: add container_of_const()
> that preserves const-ness of the pointer") is nice. Let's use
> it so that we don't accidentally cast away the const from our
> state pointers.
>
> The only thing I don't particularly like about container_of_const()
> is that it still accepts void* in addition to the proper pointer
> types, but that's how most other things in C work anyway so I
> guess we can live with it.
>
> And while at it rename the macro arguments to be a bit more
> descriptive than just 'x'.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> TODO: maybe convert *all* container_of() uses to container_of_const()?

I wish they'd made container_of() handle constness directly... but that
approach probably fails all over the place exactly because it loses
const. Oh well.

Not sure about changing all, but perhaps start with the ones that have
#define's for them (like everything in this patch) and the details are
hidden from the call site. It's a bit more obvious what's going on when
the container_of() is inline.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h            |  3 ++-
>  drivers/gpu/drm/i915/display/intel_cdclk.h         |  4 +++-
>  drivers/gpu/drm/i915/display/intel_display_types.h | 14 ++++++++++----
>  drivers/gpu/drm/i915/display/intel_pmdemand.h      |  5 ++---
>  drivers/gpu/drm/i915/display/intel_sdvo.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c            |  3 ++-
>  drivers/gpu/drm/i915/display/skl_watermark.h       |  4 +++-
>  7 files changed, 23 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 59cb4fc5db76..fa1e924ec961 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -52,7 +52,8 @@ struct intel_bw_state {
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
>=20=20
> -#define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
> +#define to_intel_bw_state(global_state) \
> +	container_of_const((global_state), struct intel_bw_state, base)
>=20=20
>  struct intel_bw_state *
>  intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index fa301495e7f1..d4d60c636d70 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -75,7 +75,9 @@ int intel_cdclk_atomic_check(struct intel_atomic_state =
*state,
>  struct intel_cdclk_state *
>  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>=20=20
> -#define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_sta=
te, base)
> +#define to_intel_cdclk_state(global_state) \
> +	container_of_const((global_state), struct intel_cdclk_state, base)
> +
>  #define intel_atomic_get_old_cdclk_state(state) \
>  	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->display.cdclk.obj))
>  #define intel_atomic_get_new_cdclk_state(state) \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e67cd5b02e84..8b9860cefaae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -661,7 +661,8 @@ struct intel_digital_connector_state {
>  	int broadcast_rgb;
>  };
>=20=20
> -#define to_intel_digital_connector_state(x) container_of(x, struct intel=
_digital_connector_state, base)
> +#define to_intel_digital_connector_state(conn_state) \
> +	container_of_const((conn_state), struct intel_digital_connector_state, =
base)
>=20=20
>  struct dpll {
>  	/* given values */
> @@ -1617,12 +1618,17 @@ struct intel_watermark_params {
>=20=20
>  #define to_intel_atomic_state(x) container_of(x, struct intel_atomic_sta=
te, base)
>  #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
> -#define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, =
uapi)
>  #define to_intel_connector(x) container_of(x, struct intel_connector, ba=
se)
>  #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
> -#define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer=
, base)
>  #define to_intel_plane(x) container_of(x, struct intel_plane, base)
> -#define to_intel_plane_state(x) container_of(x, struct intel_plane_state=
, uapi)
> +
> +#define to_intel_crtc_state(crtc_state) \
> +	container_of_const((crtc_state), struct intel_crtc_state, uapi)
> +#define to_intel_plane_state(plane_state) \
> +	container_of_const((plane_state), struct intel_plane_state, uapi)
> +#define to_intel_framebuffer(fb) \
> +	container_of_const((fb), struct intel_framebuffer, base)
> +
>  #define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
>=20=20
>  struct intel_hdmi {
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/=
drm/i915/display/intel_pmdemand.h
> index 2941a1a18b72..128fd61f8f14 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
> @@ -43,9 +43,8 @@ struct intel_pmdemand_state {
>  	struct pmdemand_params params;
>  };
>=20=20
> -#define to_intel_pmdemand_state(x) container_of((x), \
> -						struct intel_pmdemand_state, \
> -						base)
> +#define to_intel_pmdemand_state(global_state) \
> +	container_of_const((global_state), struct intel_pmdemand_state, base)
>=20=20
>  void intel_pmdemand_init_early(struct drm_i915_private *i915);
>  int intel_pmdemand_init(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 0cd9c183f621..2b00ca44c14c 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -193,7 +193,7 @@ to_intel_sdvo_connector(struct drm_connector *connect=
or)
>  }
>=20=20
>  #define to_intel_sdvo_connector_state(conn_state) \
> -	container_of((conn_state), struct intel_sdvo_connector_state, base.base)
> +	container_of_const((conn_state), struct intel_sdvo_connector_state, bas=
e.base)
>=20=20
>  static bool
>  intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo);
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
> index 2b77d399f1a1..ba5d2b7174b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -885,7 +885,8 @@ struct intel_tv_connector_state {
>  	bool bypass_vfilter;
>  };
>=20=20
> -#define to_intel_tv_connector_state(x) container_of(x, struct intel_tv_c=
onnector_state, base)
> +#define to_intel_tv_connector_state(conn_state) \
> +	container_of_const((conn_state), struct intel_tv_connector_state, base)
>=20=20
>  static struct drm_connector_state *
>  intel_tv_connector_duplicate_state(struct drm_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> index e3d1d74a7b17..3da93a019f46 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -64,7 +64,9 @@ struct intel_dbuf_state {
>  struct intel_dbuf_state *
>  intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
>=20=20
> -#define to_intel_dbuf_state(x) container_of((x), struct intel_dbuf_state=
, base)
> +#define to_intel_dbuf_state(global_state) \
> +	container_of_const((global_state), struct intel_dbuf_state, base)
> +
>  #define intel_atomic_get_old_dbuf_state(state) \
>  	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i9=
15(state->base.dev)->display.dbuf.obj))
>  #define intel_atomic_get_new_dbuf_state(state) \

--=20
Jani Nikula, Intel
