Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIFYMu1D1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:02:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6679E3BBABD
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E0B10E0D5;
	Wed,  8 Apr 2026 12:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGE2NLMf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680C510E0D5;
 Wed,  8 Apr 2026 12:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775649769; x=1807185769;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YNtUFL0yTBrxzQVzWCC57bJs+G6Njz9xioBBgli3IC0=;
 b=GGE2NLMfh1qa2OplI7jPQWm+UIM3SfdS0I1qQbRkajPVlIDDYgvZAdWS
 rTQliIr5jVNAEbqQCJjJ5IfaszRlje/kvq9ljY4lnAJ/hqzliSd529na6
 jPmjHedFpbshFWhp/xLcDhRMefWeJwbeEcMNVAyj2NeixuQfOCkBFh2iv
 nFsXkNETRbfm45mijDmA/YJ6szFgqoZqzQuzp6b4446HGFT4eXRG4w/XR
 60RJWbDoV9m62BZ2Po0bzFzSJDLOjfjLuvRmq6MQDuGVrh/0nX75uRPjK
 iSiJ27ZGETN66CKF/u5NH60AsGzKYl/uG//VIibs99tUShwW+7mknlJpz g==;
X-CSE-ConnectionGUID: y7oIK2sYSXySEk+XBljK6g==
X-CSE-MsgGUID: H+JhNFp7Tri6UltgMwPGig==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="99256465"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="99256465"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:02:49 -0700
X-CSE-ConnectionGUID: d8of8FbaTgaH2ceHvcW0gg==
X-CSE-MsgGUID: X9GJWjhLR+iiJOwF3qGO/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233327547"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:02:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915: Walk crtcs in pipe order
In-Reply-To: <20251120192137.5968-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251120144910.13028-1-ville.syrjala@linux.intel.com>
 <20251120192137.5968-1-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 15:02:44 +0300
Message-ID: <94c5c732225f4281f258c5cdb0f2d4a0ee0e2ebf@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6679E3BBABD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 20 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently our crtcs are registered in pipe order, and thus
> all the for_intel_crtc*() iterators walk the crtcs in pipe
> order. There are a bunch of places that more or less depend
> on that. Eg. during plane updates and such we want joined
> pipes to be processed back-to-back to give a better chance
> of an atomic update across the whole set.
>
> When we start to register crtcs in a different order we don't
> want to change the order in which the pipes get handled.
> Decouple the for_each_intel_crtc*() iterators from the crtc
> registration order by using a separate list which will be
> sorted by the pipe rather than the crtc index.
>
> We could priobably use a simple array or something, but that
> would require some kind of extra iterator variable for the
> macros, and thus would require a lot more changes. Using
> a linked list keeps the fallout minimal. We can look at
> using a more optimal data structure later.
>
> I also added this extra junk to the atomic state iterators:
> "(__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i)"
> even though the macro itself no longer needs the "__i" iterator.
> This in case the "__i" is used by the caller, and to
> avoid compiler warnings if it's completely unused now.

Ville, care to rebase and resend this for merging?

BR,
Jani.



>
> v2: Flip the pipe comparison (Jani)
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 20 +++++
>  drivers/gpu/drm/i915/display/intel_display.h  | 90 ++++++++-----------
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +
>  .../drm/i915/display/intel_display_driver.c   |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/xe/display/xe_display.c       |  1 +
>  6 files changed, 64 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 153ff4b4b52c..709a8fb56736 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -209,6 +209,8 @@ static struct intel_crtc *intel_crtc_alloc(void)
>  	crtc->base.state =3D &crtc_state->uapi;
>  	crtc->config =3D crtc_state;
>=20=20
> +	INIT_LIST_HEAD(&crtc->pipe_head);
> +
>  	return crtc;
>  }
>=20=20
> @@ -222,6 +224,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>=20=20
> +	list_del(&crtc->pipe_head);
> +
>  	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
>=20=20
>  	drm_crtc_cleanup(&crtc->base);
> @@ -308,6 +312,20 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs =
=3D {
>  	.get_vblank_timestamp =3D intel_crtc_get_vblank_timestamp,
>  };
>=20=20
> +static void add_crtc_to_pipe_list(struct intel_display *display, struct =
intel_crtc *crtc)
> +{
> +	struct intel_crtc *iter;
> +
> +	list_for_each_entry(iter, &display->pipe_list, pipe_head) {
> +		if (crtc->pipe < iter->pipe) {
> +			list_add_tail(&crtc->pipe_head, &iter->pipe_head);
> +			return;
> +		}
> +	}
> +
> +	list_add_tail(&crtc->pipe_head, &display->pipe_list);
> +}
> +
>  int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>  {
>  	struct intel_plane *primary, *cursor;
> @@ -398,6 +416,8 @@ int intel_crtc_init(struct intel_display *display, en=
um pipe pipe)
>  	if (HAS_CASF(display))
>  		drm_crtc_create_sharpness_strength_property(&crtc->base);
>=20=20
> +	add_crtc_to_pipe_list(display, crtc);
> +
>  	return 0;
>=20=20
>  fail:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index bcc6ccb69d2b..ac83d4f09bb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -238,22 +238,23 @@ enum phy_fia {
>  			    base.head)					\
>  		for_each_if((intel_plane)->pipe =3D=3D (intel_crtc)->pipe)
>=20=20
> -#define for_each_intel_crtc(dev, intel_crtc)				\
> -	list_for_each_entry(intel_crtc,					\
> -			    &(dev)->mode_config.crtc_list,		\
> -			    base.head)
> +#define for_each_intel_crtc(dev, crtc) \
> +	list_for_each_entry((crtc), \
> +			    &to_intel_display(dev)->pipe_list, \
> +			    pipe_head)
>=20=20
> -#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
> -	list_for_each_entry(intel_crtc,					\
> -			    &(dev)->mode_config.crtc_list,		\
> -			    base.head)					\
> -		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
> +#define for_each_intel_crtc_reverse(dev, crtc) \
> +	list_for_each_entry_reverse((crtc), \
> +				    &to_intel_display(dev)->pipe_list, \
> +				    pipe_head)
> +
> +#define for_each_intel_crtc_in_pipe_mask(dev, crtc, pipe_mask) \
> +	for_each_intel_crtc((dev), (crtc)) \
> +		for_each_if((pipe_mask) & BIT((crtc)->pipe))
>=20=20
> -#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_m=
ask)	\
> -	list_for_each_entry_reverse((intel_crtc),				\
> -				    &(dev)->mode_config.crtc_list,		\
> -				    base.head)					\
> -		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))
> +#define for_each_intel_crtc_in_pipe_mask_reverse(dev, crtc, pipe_mask) \
> +	for_each_intel_crtc_reverse((dev), (crtc)) \
> +		for_each_if((pipe_mask) & BIT((crtc)->pipe))
>=20=20
>  #define for_each_intel_encoder(dev, intel_encoder)		\
>  	list_for_each_entry(intel_encoder,			\
> @@ -295,14 +296,6 @@ enum phy_fia {
>  	     (__i)++) \
>  		for_each_if(plane)
>=20=20
> -#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, =
__i) \
> -	for ((__i) =3D 0; \
> -	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
> -		     ((crtc) =3D to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> -		      (old_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[_=
_i].old_state), 1); \
> -	     (__i)++) \
> -		for_each_if(crtc)
> -
>  #define for_each_new_intel_plane_in_state(__state, plane, new_plane_stat=
e, __i) \
>  	for ((__i) =3D 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> @@ -311,22 +304,6 @@ enum phy_fia {
>  	     (__i)++) \
>  		for_each_if(plane)
>=20=20
> -#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, =
__i) \
> -	for ((__i) =3D 0; \
> -	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
> -		     ((crtc) =3D to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> -		      (new_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[_=
_i].new_state), 1); \
> -	     (__i)++) \
> -		for_each_if(crtc)
> -
> -#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc=
_state, __i) \
> -	for ((__i) =3D (__state)->base.dev->mode_config.num_crtc - 1; \
> -	     (__i) >=3D 0  && \
> -	     ((crtc) =3D to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> -	      (new_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[__=
i].new_state), 1); \
> -	     (__i)--) \
> -		for_each_if(crtc)
> -
>  #define for_each_oldnew_intel_plane_in_state(__state, plane, old_plane_s=
tate, new_plane_state, __i) \
>  	for ((__i) =3D 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> @@ -336,23 +313,32 @@ enum phy_fia {
>  	     (__i)++) \
>  		for_each_if(plane)
>=20=20
> +#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, =
__i) \
> +	for_each_intel_crtc((__state)->base.dev, (crtc)) \
> +		for_each_if(((__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i), \
> +			     (old_crtc_state) =3D intel_atomic_get_old_crtc_state((__state), =
(crtc))))
> +
> +#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, =
__i) \
> +	for_each_intel_crtc((__state)->base.dev, (crtc)) \
> +		for_each_if(((__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i), \
> +			     (new_crtc_state) =3D intel_atomic_get_new_crtc_state((__state), =
(crtc))))
> +
> +#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc=
_state, __i) \
> +	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
> +		for_each_if(((__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i), \
> +			     (new_crtc_state) =3D intel_atomic_get_new_crtc_state((__state), =
(crtc))))
> +
>  #define for_each_oldnew_intel_crtc_in_state(__state, crtc, old_crtc_stat=
e, new_crtc_state, __i) \
> -	for ((__i) =3D 0; \
> -	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
> -		     ((crtc) =3D to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> -		      (old_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[_=
_i].old_state), \
> -		      (new_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[_=
_i].new_state), 1); \
> -	     (__i)++) \
> -		for_each_if(crtc)
> +	for_each_intel_crtc((__state)->base.dev, (crtc)) \
> +		for_each_if(((__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i), \
> +			     (old_crtc_state) =3D intel_atomic_get_old_crtc_state((__state), =
(crtc)), \
> +			     (new_crtc_state) =3D intel_atomic_get_new_crtc_state((__state), =
(crtc))))
>=20=20
>  #define for_each_oldnew_intel_crtc_in_state_reverse(__state, crtc, old_c=
rtc_state, new_crtc_state, __i) \
> -	for ((__i) =3D (__state)->base.dev->mode_config.num_crtc - 1; \
> -	     (__i) >=3D 0  && \
> -	     ((crtc) =3D to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> -	      (old_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[__=
i].old_state), \
> -	      (new_crtc_state) =3D to_intel_crtc_state((__state)->base.crtcs[__=
i].new_state), 1); \
> -	     (__i)--) \
> -		for_each_if(crtc)
> +	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
> +		for_each_if(((__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i), \
> +			     (old_crtc_state) =3D intel_atomic_get_old_crtc_state((__state), =
(crtc)), \
> +			     (new_crtc_state) =3D intel_atomic_get_new_crtc_state((__state), =
(crtc))))
>=20=20
>  #define intel_atomic_crtc_state_for_each_plane_state( \
>  		  plane, plane_state, \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 9b8414b77c15..4f4d5c314394 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -294,6 +294,9 @@ struct intel_display {
>  	/* Parent, or core, driver functions exposed to display */
>  	const struct intel_display_parent_interface *parent;
>=20=20
> +	/* list of all intel_crtcs sorted by pipe */
> +	struct list_head pipe_list;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 7e000ba3e08b..32726906e550 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -119,6 +119,7 @@ static void intel_mode_config_init(struct intel_displ=
ay *display)
>=20=20
>  	drm_mode_config_init(display->drm);
>  	INIT_LIST_HEAD(&display->global.obj_list);
> +	INIT_LIST_HEAD(&display->pipe_list);
>=20=20
>  	mode_config->min_width =3D 0;
>  	mode_config->min_height =3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 38702a9e0f50..1c2bd9445795 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1441,6 +1441,7 @@ struct intel_flipq {
>=20=20
>  struct intel_crtc {
>  	struct drm_crtc base;
> +	struct list_head pipe_head;
>  	enum pipe pipe;
>  	/*
>  	 * Whether the crtc and the connected output pipeline is active. Implies
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index e3320d9e6314..cfcbc7dd8638 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -22,6 +22,7 @@
>  #include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_display.h"
> +#include "intel_display_core.h"
>  #include "intel_display_device.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_irq.h"

--=20
Jani Nikula, Intel
