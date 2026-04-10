Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOIZLRMa2WnfmAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:41:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF633D9847
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:41:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3066810E0D1;
	Fri, 10 Apr 2026 15:41:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OpRFDhYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 643CF10E0D1;
 Fri, 10 Apr 2026 15:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775835664; x=1807371664;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EtecRltQ268otp+QX6QOLAU0k1KrXVRxi+zU/1C9smA=;
 b=OpRFDhYmkOhF6MVcJMcj0v8HOWZzDkh6AmXMOay5u8/K+4vnCSSPTQay
 hfj2zHy3g3Avzx69RAoBOvxJ1YEOPrm8rCf+5vK0PzXZt6tSkkqHBV615
 9NV1/8J0ydn5J6pEmgya+BOcUdQm3rnyuvLD+0ONZ3EBgsdSI3QzlaLRi
 uXF9oaFVUMzNXUc0MIIO6+4WocO8ePlBJZIVAKA2ctEnMptiu/mAaUDee
 tTSeUfQw6H6hRen7ykLO86oJPs0Zqxy1NVGwRdKSx+Ht+T+tnR00BHTjR
 Rj7Es/y5isLdoZX9K2HlKhzEj4HrlpoyEzxPgh/R7e/QDlcX/eFX/PV4Z Q==;
X-CSE-ConnectionGUID: pqEsvKR0Q8KGPHg7DG6cVg==
X-CSE-MsgGUID: 9U1HlXuGTzah52WYq1xr7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="94250252"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="94250252"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:41:03 -0700
X-CSE-ConnectionGUID: kXL/qs/NTp2nFL7dpk28XQ==
X-CSE-MsgGUID: m7RPWI99RxmkNJrzXhvzWA==
X-ExtLoop1: 1
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:41:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 01/10] drm/i915: Introduce sanity to the plane_config
 pointer vs. array thing
In-Reply-To: <20260410150449.9699-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-2-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:40:58 +0300
Message-ID: <2a2c1b5eeeee55a530662b93403fd47cae9ffe26@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EDF633D9847
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The "plane_config" vs. "plane_configs" naming difference is very
> subtle, making it far too easy to use the wrong thing by accident.
> Introduce a separate type for the array, making it impossible to
> pass in the wrong thing. And while at it name the variable
> "all_plane_configs" to help the poor reader make sense of things.
>
> The .config_fini() prototype also mistakenly used the plural
> form despite only taking in a singular plane_config. So fix that
> one up as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Nice!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../drm/i915/display/intel_initial_plane.c    | 21 ++++++++++++-------
>  include/drm/intel/display_parent_interface.h  |  2 +-
>  2 files changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers=
/gpu/drm/i915/display/intel_initial_plane.c
> index ee545c033da6..4f51083dbd11 100644
> --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> @@ -11,6 +11,10 @@
>  #include "intel_initial_plane.h"
>  #include "intel_plane.h"
>=20=20
> +struct intel_initial_plane_configs {
> +	struct intel_initial_plane_config config[I915_MAX_PIPES];
> +};
> +
>  void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> @@ -20,7 +24,7 @@ void intel_initial_plane_vblank_wait(struct intel_crtc =
*crtc)
>=20=20
>  static const struct intel_plane_state *
>  intel_reuse_initial_plane_obj(struct intel_crtc *this,
> -			      const struct intel_initial_plane_config plane_configs[])
> +			      const struct intel_initial_plane_configs *all_plane_configs)
>  {
>  	struct intel_display *display =3D to_intel_display(this);
>  	struct intel_crtc *crtc;
> @@ -39,7 +43,8 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
>  		if (!plane_state->ggtt_vma)
>  			continue;
>=20=20
> -		if (plane_configs[this->pipe].base =3D=3D plane_configs[crtc->pipe].ba=
se)
> +		if (all_plane_configs->config[this->pipe].base =3D=3D
> +		    all_plane_configs->config[crtc->pipe].base)
>  			return plane_state;
>  	}
>=20=20
> @@ -69,10 +74,10 @@ intel_alloc_initial_plane_obj(struct intel_display *d=
isplay,
>=20=20
>  static void
>  intel_find_initial_plane_obj(struct intel_crtc *crtc,
> -			     struct intel_initial_plane_config plane_configs[])
> +			     struct intel_initial_plane_configs *all_plane_configs)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct intel_initial_plane_config *plane_config =3D &plane_configs[crtc=
->pipe];
> +	struct intel_initial_plane_config *plane_config =3D &all_plane_configs-=
>config[crtc->pipe];
>  	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
>  	struct intel_plane_state *plane_state =3D to_intel_plane_state(plane->b=
ase.state);
>  	struct drm_framebuffer *fb;
> @@ -93,7 +98,7 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	} else {
>  		const struct intel_plane_state *other_plane_state;
>=20=20
> -		other_plane_state =3D intel_reuse_initial_plane_obj(crtc, plane_config=
s);
> +		other_plane_state =3D intel_reuse_initial_plane_obj(crtc, all_plane_co=
nfigs);
>  		if (!other_plane_state)
>  			goto nofb;
>=20=20
> @@ -158,14 +163,14 @@ static void plane_config_fini(struct intel_display =
*display,
>=20=20
>  void intel_initial_plane_config(struct intel_display *display)
>  {
> -	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] =3D {};
> +	struct intel_initial_plane_configs all_plane_configs =3D {};
>  	struct intel_crtc *crtc;
>=20=20
>  	for_each_intel_crtc(display->drm, crtc) {
>  		const struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
>  		struct intel_initial_plane_config *plane_config =3D
> -			&plane_configs[crtc->pipe];
> +			&all_plane_configs.config[crtc->pipe];
>=20=20
>  		if (!crtc_state->hw.active)
>  			continue;
> @@ -183,7 +188,7 @@ void intel_initial_plane_config(struct intel_display =
*display)
>  		 * If the fb is shared between multiple heads, we'll
>  		 * just get the first one.
>  		 */
> -		intel_find_initial_plane_obj(crtc, plane_configs);
> +		intel_find_initial_plane_obj(crtc, &all_plane_configs);
>=20=20
>  		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_con=
fig))
>  			intel_initial_plane_vblank_wait(crtc);
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 258e6388ef77..9041897c772e 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -91,7 +91,7 @@ struct intel_display_initial_plane_interface {
>  	struct drm_gem_object *(*alloc_obj)(struct drm_device *drm, struct inte=
l_initial_plane_config *plane_config);
>  	int (*setup)(struct drm_plane_state *plane_state, struct intel_initial_=
plane_config *plane_config,
>  		     struct drm_framebuffer *fb, struct i915_vma *vma);
> -	void (*config_fini)(struct intel_initial_plane_config *plane_configs);
> +	void (*config_fini)(struct intel_initial_plane_config *plane_config);
>  };
>=20=20
>  struct intel_display_irq_interface {

--=20
Jani Nikula, Intel
