Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6617C14BCDC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662E16EE78;
	Tue, 28 Jan 2020 15:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEE76EE78
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:29:44 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 07:29:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222784623"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 28 Jan 2020 07:29:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 17:29:40 +0200
Date: Tue, 28 Jan 2020 17:29:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200128152940.GJ13686@intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-14-ville.syrjala@linux.intel.com>
 <cb61046b5a0238b6cf2bf4bd078d521ef8efde0d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb61046b5a0238b6cf2bf4bd078d521ef8efde0d.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 13/17] drm/i915: Intrduce better global
 state handling
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 28, 2020 at 02:44:04PM +0000, Lisovskiy, Stanislav wrote:
> On Mon, 2020-01-20 at 19:47 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Our current global state handling is pretty ad-hoc. Let's try to
> > make it better by imitating the standard drm core private object
> > approach.
> > =

> > The reason why we don't want to directly use the private objects
> > is locking; Each private object has its own lock so if we
> > introduce any global private objects we get serialized by that
> > single lock across all pipes. The global state apporoach instead
> > uses a read/write lock type of approach where each individual
> > crtc lock counts as a read lock, and grabbing all the crtc locks
> > allows one write access.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Looks like, I would prefer to get your global changes landed first
> as you have almost all patches reviewed by now. Once those land, =

> I will fetch those changes and use new global state handling in =

> my SAGV patches.
> =

> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_atomic.c   |   7 +-
> >  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +-
> >  drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
> >  .../drm/i915/display/intel_display_types.h    |   4 +
> >  .../gpu/drm/i915/display/intel_global_state.c | 223
> > ++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_global_state.h |  87 +++++++
> >  drivers/gpu/drm/i915/i915_drv.h               |   3 +
> >  10 files changed, 342 insertions(+), 12 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_global_state.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_global_state.h
> > =

> > =

> =

> =

> > +
> > +int intel_atomic_lock_global_state(struct intel_global_state
> > *obj_state)
> > +{
> > +	struct intel_atomic_state *state =3D obj_state->state;
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	struct intel_crtc *crtc;
> > +
> > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +		int ret;
> > +
> > +		ret =3D drm_modeset_lock(&crtc->base.mutex,
> > +				       state->base.acquire_ctx);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +
> > +	obj_state->changed =3D true;
> > +
> > +	return 0;
> > +}
> > +
> > +int intel_atomic_serialize_global_state(struct intel_global_state
> > *obj_state)
> > +{
> > +	struct intel_atomic_state *state =3D obj_state->state;
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	struct intel_crtc *crtc;
> > +
> > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +		struct intel_crtc_state *crtc_state;
> > +
> > +		crtc_state =3D intel_atomic_get_crtc_state(&state->base,
> > crtc);
> > +		if (IS_ERR(crtc_state))
> > +			return PTR_ERR(crtc_state);
> > +	}
> > +
> > +	obj_state->changed =3D true;
> > +
> > +	return 0;
> > +}
> =

> Just out of curiousity, aren't we supposed to lock global state,
> by just grabbing crtcs always? One for read, all for write. I see now
> you have two alternate ways of doing this, i.e either call
> intel_atomic_lock_global_state or intel_atomic_serialize_global_state.
> To me it seems better to have somewhat unified approach for global
> state locking, however may be I'm missing something here.

One just locks things which means other nonblocking commits can still
execute in parallel once the locks are dropped. The serialize variant
adds all the crtcs to the state meaning their other commits will get
serialized against the current commit no matter on which wq they
execute. So just an attempt to avoid needless serialization and the
resulting framerate stutters.

> =

> Anyways,
> =

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> =

> > diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h
> > b/drivers/gpu/drm/i915/display/intel_global_state.h
> > new file mode 100644
> > index 000000000000..e6163a469029
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> > @@ -0,0 +1,87 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright =A9 2020 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_GLOBAL_STATE_H__
> > +#define __INTEL_GLOBAL_STATE_H__
> > +
> > +#include <linux/list.h>
> > +
> > +struct drm_i915_private;
> > +struct intel_atomic_state;
> > +struct intel_global_obj;
> > +struct intel_global_state;
> > +
> > +struct intel_global_state_funcs {
> > +	struct intel_global_state *(*atomic_duplicate_state)(struct
> > intel_global_obj *obj);
> > +	void (*atomic_destroy_state)(struct intel_global_obj *obj,
> > +				     struct intel_global_state *state);
> > +};
> > +
> > +struct intel_global_obj {
> > +	struct list_head head;
> > +	struct intel_global_state *state;
> > +	const struct intel_global_state_funcs *funcs;
> > +};
> > +
> > +#define intel_for_each_global_obj(obj, dev_priv) \
> > +	list_for_each_entry(obj, &(dev_priv)->global_obj_list, head)
> > +
> > +#define for_each_new_global_obj_in_state(__state, obj,
> > new_obj_state, __i) \
> > +	for ((__i) =3D 0; \
> > +	     (__i) < (__state)->num_global_objs && \
> > +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> > +		      (new_obj_state) =3D (__state)-
> > >global_objs[__i].new_state, 1); \
> > +	     (__i)++) \
> > +		for_each_if(obj)
> > +
> > +#define for_each_old_global_obj_in_state(__state, obj,
> > new_obj_state, __i) \
> > +	for ((__i) =3D 0; \
> > +	     (__i) < (__state)->num_global_objs && \
> > +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> > +		      (new_obj_state) =3D (__state)-
> > >global_objs[__i].old_state, 1); \
> > +	     (__i)++) \
> > +		for_each_if(obj)
> > +
> > +#define for_each_oldnew_global_obj_in_state(__state, obj,
> > old_obj_state, new_obj_state, __i) \
> > +	for ((__i) =3D 0; \
> > +	     (__i) < (__state)->num_global_objs && \
> > +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> > +		      (old_obj_state) =3D (__state)-
> > >global_objs[__i].old_state, \
> > +		      (new_obj_state) =3D (__state)-
> > >global_objs[__i].new_state, 1); \
> > +	     (__i)++) \
> > +		for_each_if(obj)
> > +
> > +struct intel_global_state {
> > +	struct intel_atomic_state *state;
> > +	bool changed;
> > +};
> > +
> > +struct __intel_global_objs_state {
> > +	struct intel_global_obj *ptr;
> > +	struct intel_global_state *state, *old_state, *new_state;
> > +};
> > +
> > +void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
> > +				  struct intel_global_obj *obj,
> > +				  struct intel_global_state *state,
> > +				  const struct intel_global_state_funcs
> > *funcs);
> > +void intel_atomic_global_obj_cleanup(struct drm_i915_private
> > *dev_priv);
> > +
> > +struct intel_global_state *
> > +intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
> > +				  struct intel_global_obj *obj);
> > +struct intel_global_state *
> > +intel_atomic_get_old_global_obj_state(struct intel_atomic_state
> > *state,
> > +				      struct intel_global_obj *obj);
> > +struct intel_global_state *
> > +intel_atomic_get_new_global_obj_state(struct intel_atomic_state
> > *state,
> > +				      struct intel_global_obj *obj);
> > +
> > +void intel_atomic_swap_global_state(struct intel_atomic_state
> > *state);
> > +void intel_atomic_clear_global_state(struct intel_atomic_state
> > *state);
> > +int intel_atomic_lock_global_state(struct intel_global_state
> > *obj_state);
> > +int intel_atomic_serialize_global_state(struct intel_global_state
> > *obj_state);
> > +
> > +#endif
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h
> > index 1787bfdd057f..b558e68b4dbd 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -71,6 +71,7 @@
> >  #include "display/intel_dpll_mgr.h"
> >  #include "display/intel_dsb.h"
> >  #include "display/intel_frontbuffer.h"
> > +#include "display/intel_global_state.h"
> >  #include "display/intel_gmbus.h"
> >  #include "display/intel_opregion.h"
> >  =

> > @@ -1100,6 +1101,8 @@ struct drm_i915_private {
> >  	 */
> >  	struct mutex dpll_lock;
> >  =

> > +	struct list_head global_obj_list;
> > +
> >  	/*
> >  	 * For reading active_pipes, cdclk_state holding any crtc
> >  	 * lock is sufficient, for writing must hold all of them.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
