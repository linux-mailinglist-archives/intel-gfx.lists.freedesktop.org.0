Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8A1C75C8C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 18:48:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8FC10E7A7;
	Thu, 20 Nov 2025 17:48:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gaUBfp3h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8749010E7A7;
 Thu, 20 Nov 2025 17:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763660879; x=1795196879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aIX4tLC5tlpAed0ZNcQP/OvHNU5mHpqyPnopvytoI5U=;
 b=gaUBfp3hjweUBuIrSsCQQLDPx/ypBeZLWTBee3gL01cjos6XFwe5xf+4
 9GzH+079CFjMHuJyETo/ANuSHUm3dH73jiN11TophLMGhMPp0bjlPMQXt
 Svc6ZH/4x5B2qdu43b5/I/peCU8aSFUL1zXtFWZDXUq4P+0dUj9tMjSu1
 MF8SjoisUK2tc53Lh1c7SH6E2qNPr0YyJuSXibd1mib9k3qdcyYwhkq7T
 OxV7tPC3UJnWowtcw1vtQw+Iio9w8RXqpg3Bt0E8ootr43iMN7hkUL7kG
 5COV8ZR7FZRj6XlA38uTUc7CNomHRry7bVIHbMZ3vMKWmfDNy8i89pawe A==;
X-CSE-ConnectionGUID: 0r+sJg5ISdK+wabnP7tfyw==
X-CSE-MsgGUID: m5rYAfddSoK33fGcPHjOyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="68349343"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="68349343"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:47:59 -0800
X-CSE-ConnectionGUID: 2kwd97mWTHGc0yY0EBdRrg==
X-CSE-MsgGUID: Hko9tWTgQgG2WbDyfQxTFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="196402461"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.6])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 09:47:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Walk crtcs in pipe order
In-Reply-To: <20251120144910.13028-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251120144910.13028-1-ville.syrjala@linux.intel.com>
Date: Thu, 20 Nov 2025 19:47:54 +0200
Message-ID: <add11487eaa3a418d199d8f9b851e4dfbad0cf25@intel.com>
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

I think the list works fine.

> I also added this extra junk to the atomic state iterators:
> "(__i) =3D drm_crtc_index(&(crtc)->base), (void)(__i)"
> even though the macro itself no longer needs the "__i" iterator.
> This in case the "__i" is used by the caller, and to
> avoid compiler warnings if it's completely unused now.

At a glance, I can't find any. Perhaps you could cook up some cocci to
remove the parameter as follow-up?

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
> index 153ff4b4b52c..7ebbde716238 100644
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
> +		if (iter->pipe > crtc->pipe) {

Nitpick, somehow I found it easier to think of this in reverse order,
"crtc->pipe < iter->pipe", but could be just me. *shrug*.

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
>=20=20
> -#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_m=
ask)	\
> -	list_for_each_entry_reverse((intel_crtc),				\
> -				    &(dev)->mode_config.crtc_list,		\
> -				    base.head)					\
> -		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))
> +#define for_each_intel_crtc_in_pipe_mask(dev, crtc, pipe_mask) \
> +	for_each_intel_crtc((dev), (crtc)) \
> +		for_each_if((pipe_mask) & BIT((crtc)->pipe))
> +
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

These were a PITA to go through, but I think it's fine. Knocks wood.

Thanks for doing this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

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
