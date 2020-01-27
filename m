Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1DB14A6BB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 16:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E5C6EBD0;
	Mon, 27 Jan 2020 15:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42B26EBD0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 15:02:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:02:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="401354178"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:02:44 -0800
Date: Mon, 27 Jan 2020 17:02:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200127150235.GB2730@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-15-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-15-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 13/17] drm/i915: Introduce better global
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:24PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Our current global state handling is pretty ad-hoc. Let's try to
> make it better by imitating the standard drm core private object
> approach.
> =

> The reason why we don't want to directly use the private objects
> is locking; Each private object has its own lock so if we
> introduce any global private objects we get serialized by that
> single lock across all pipes. The global state apporoach instead
> uses a read/write lock type of approach where each individual
> crtc lock counts as a read lock, and grabbing all the crtc locks
> allows one write access.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Didn't spot any issues:
Reviewed-by: Imre Deak <imre.deak@intel.com>

Would be good to explain somewhere the difference between only locking
vs. serializing the state.

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   7 +-
>  drivers/gpu/drm/i915/display/intel_atomic.h   |   4 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
>  .../drm/i915/display/intel_display_types.h    |   4 +
>  .../gpu/drm/i915/display/intel_global_state.c | 223 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_global_state.h |  87 +++++++
>  drivers/gpu/drm/i915/i915_drv.h               |   3 +
>  10 files changed, 342 insertions(+), 12 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_global_state.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_global_state.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 3c88d7d8c764..787ffe669810 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -190,6 +190,7 @@ i915-y +=3D \
>  	display/intel_fbc.o \
>  	display/intel_fifo_underrun.o \
>  	display/intel_frontbuffer.o \
> +	display/intel_global_state.o \
>  	display/intel_hdcp.o \
>  	display/intel_hotplug.o \
>  	display/intel_lpe_audio.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 1c13423d4945..45842ebcdebd 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -37,6 +37,7 @@
>  #include "intel_atomic.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
> +#include "intel_global_state.h"
>  #include "intel_hdcp.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -500,6 +501,7 @@ void intel_atomic_state_free(struct drm_atomic_state =
*_state)
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
>  =

>  	drm_atomic_state_default_release(&state->base);
> +	kfree(state->global_objs);
>  =

>  	i915_sw_fence_fini(&state->commit_ready);
>  =

> @@ -511,6 +513,7 @@ void intel_atomic_state_clear(struct drm_atomic_state=
 *s)
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(s);
>  =

>  	drm_atomic_state_default_clear(&state->base);
> +	intel_atomic_clear_global_state(state);
>  =

>  	state->dpll_set =3D state->modeset =3D false;
>  	state->global_state_changed =3D false;
> @@ -530,7 +533,7 @@ intel_atomic_get_crtc_state(struct drm_atomic_state *=
state,
>  	return to_intel_crtc_state(crtc_state);
>  }
>  =

> -int intel_atomic_lock_global_state(struct intel_atomic_state *state)
> +int _intel_atomic_lock_global_state(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
> @@ -549,7 +552,7 @@ int intel_atomic_lock_global_state(struct intel_atomi=
c_state *state)
>  	return 0;
>  }
>  =

> -int intel_atomic_serialize_global_state(struct intel_atomic_state *state)
> +int _intel_atomic_serialize_global_state(struct intel_atomic_state *stat=
e)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 88133eea0a17..11146292b06f 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -56,8 +56,8 @@ int intel_atomic_setup_scalers(struct drm_i915_private =
*dev_priv,
>  			       struct intel_crtc *intel_crtc,
>  			       struct intel_crtc_state *crtc_state);
>  =

> -int intel_atomic_lock_global_state(struct intel_atomic_state *state);
> +int _intel_atomic_lock_global_state(struct intel_atomic_state *state);
>  =

> -int intel_atomic_serialize_global_state(struct intel_atomic_state *state=
);
> +int _intel_atomic_serialize_global_state(struct intel_atomic_state *stat=
e);
>  =

>  #endif /* __INTEL_ATOMIC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 32e722128638..12626fd94d29 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -820,7 +820,7 @@ static void glk_force_audio_cdclk(struct drm_i915_pri=
vate *dev_priv,
>  		enable ? 2 * 96000 : 0;
>  =

>  	/* Protects dev_priv->cdclk.force_min_cdclk */
> -	ret =3D intel_atomic_lock_global_state(to_intel_atomic_state(state));
> +	ret =3D _intel_atomic_lock_global_state(to_intel_atomic_state(state));
>  	if (!ret)
>  		ret =3D drm_atomic_commit(state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 701a63c3ca38..3b7932ae2a77 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2063,7 +2063,7 @@ static int intel_compute_min_cdclk(struct intel_ato=
mic_state *state)
>  =

>  		cdclk_state->min_cdclk[i] =3D min_cdclk;
>  =

> -		ret =3D intel_atomic_lock_global_state(state);
> +		ret =3D _intel_atomic_lock_global_state(state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -2111,7 +2111,7 @@ static int bxt_compute_min_voltage_level(struct int=
el_atomic_state *state)
>  =

>  		cdclk_state->min_voltage_level[i] =3D min_voltage_level;
>  =

> -		ret =3D intel_atomic_lock_global_state(state);
> +		ret =3D _intel_atomic_lock_global_state(state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -2386,12 +2386,12 @@ int intel_modeset_calc_cdclk(struct intel_atomic_=
state *state)
>  		 * Also serialize commits across all crtcs
>  		 * if the actual hw needs to be poked.
>  		 */
> -		ret =3D intel_atomic_serialize_global_state(state);
> +		ret =3D _intel_atomic_serialize_global_state(state);
>  		if (ret)
>  			return ret;
>  	} else if (intel_cdclk_changed(&old_cdclk_state->logical,
>  				       &new_cdclk_state->logical)) {
> -		ret =3D intel_atomic_lock_global_state(state);
> +		ret =3D _intel_atomic_lock_global_state(state);
>  		if (ret)
>  			return ret;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 3b725764bdcd..70eb6eaab095 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14381,7 +14381,7 @@ static int intel_modeset_checks(struct intel_atom=
ic_state *state)
>  	}
>  =

>  	if (state->active_pipe_changes) {
> -		ret =3D intel_atomic_lock_global_state(state);
> +		ret =3D _intel_atomic_lock_global_state(state);
>  		if (ret)
>  			return ret;
>  	}
> @@ -15652,6 +15652,8 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>  	ret =3D drm_atomic_helper_setup_commit(&state->base, nonblock);
>  	if (!ret)
>  		ret =3D drm_atomic_helper_swap_state(&state->base, true);
> +	if (!ret)
> +		intel_atomic_swap_global_state(state);
>  =

>  	if (ret) {
>  		i915_sw_fence_commit(&state->commit_ready);
> @@ -17518,6 +17520,7 @@ static void intel_mode_config_init(struct drm_i91=
5_private *i915)
>  	struct drm_mode_config *mode_config =3D &i915->drm.mode_config;
>  =

>  	drm_mode_config_init(&i915->drm);
> +	INIT_LIST_HEAD(&i915->global_obj_list);
>  =

>  	mode_config->min_width =3D 0;
>  	mode_config->min_height =3D 0;
> @@ -17559,6 +17562,12 @@ static void intel_mode_config_init(struct drm_i9=
15_private *i915)
>  	}
>  }
>  =

> +static void intel_mode_config_cleanup(struct drm_i915_private *i915)
> +{
> +	intel_atomic_global_obj_cleanup(i915);
> +	drm_mode_config_cleanup(&i915->drm);
> +}
> +
>  int intel_modeset_init(struct drm_i915_private *i915)
>  {
>  	struct drm_device *dev =3D &i915->drm;
> @@ -17598,7 +17607,7 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  		for_each_pipe(i915, pipe) {
>  			ret =3D intel_crtc_init(i915, pipe);
>  			if (ret) {
> -				drm_mode_config_cleanup(dev);
> +				intel_mode_config_cleanup(i915);
>  				return ret;
>  			}
>  		}
> @@ -18551,7 +18560,7 @@ void intel_modeset_driver_remove(struct drm_i915_=
private *i915)
>  =

>  	intel_hdcp_component_fini(i915);
>  =

> -	drm_mode_config_cleanup(&i915->drm);
> +	intel_mode_config_cleanup(i915);
>  =

>  	intel_overlay_cleanup(i915);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index b31ed828fa8f..628c4a56a9e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -46,6 +46,7 @@
>  #include "i915_drv.h"
>  =

>  struct drm_printer;
> +struct __intel_global_objs_state;
>  =

>  /*
>   * Display related stuff
> @@ -461,6 +462,9 @@ struct intel_atomic_state {
>  =

>  	intel_wakeref_t wakeref;
>  =

> +	struct __intel_global_objs_state *global_objs;
> +	int num_global_objs;
> +
>  	struct intel_cdclk_state cdclk_state;
>  =

>  	bool dpll_set, modeset;
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/=
gpu/drm/i915/display/intel_global_state.c
> new file mode 100644
> index 000000000000..a0cc894c3868
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
> @@ -0,0 +1,223 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include <linux/string.h>
> +
> +#include "i915_drv.h"
> +#include "intel_atomic.h"
> +#include "intel_display_types.h"
> +#include "intel_global_state.h"
> +
> +void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
> +				  struct intel_global_obj *obj,
> +				  struct intel_global_state *state,
> +				  const struct intel_global_state_funcs *funcs)
> +{
> +	memset(obj, 0, sizeof(*obj));
> +
> +	obj->state =3D state;
> +	obj->funcs =3D funcs;
> +	list_add_tail(&obj->head, &dev_priv->global_obj_list);
> +}
> +
> +void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_global_obj *obj, *next;
> +
> +	list_for_each_entry_safe(obj, next, &dev_priv->global_obj_list, head) {
> +		list_del(&obj->head);
> +		obj->funcs->atomic_destroy_state(obj, obj->state);
> +	}
> +}
> +
> +static void assert_global_state_write_locked(struct drm_i915_private *de=
v_priv)
> +{
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc)
> +		drm_modeset_lock_assert_held(&crtc->base.mutex);
> +}
> +
> +static bool modeset_lock_is_held(struct drm_modeset_acquire_ctx *ctx,
> +				 struct drm_modeset_lock *lock)
> +{
> +	struct drm_modeset_lock *l;
> +
> +	list_for_each_entry(l, &ctx->locked, head) {
> +		if (lock =3D=3D l)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +static void assert_global_state_read_locked(struct intel_atomic_state *s=
tate)
> +{
> +	struct drm_modeset_acquire_ctx *ctx =3D state->base.acquire_ctx;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		if (modeset_lock_is_held(ctx, &crtc->base.mutex))
> +			return;
> +	}
> +
> +	WARN(1, "Global state not read locked\n");
> +}
> +
> +struct intel_global_state *
> +intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
> +				  struct intel_global_obj *obj)
> +{
> +	int index, num_objs, i;
> +	size_t size;
> +	struct __intel_global_objs_state *arr;
> +	struct intel_global_state *obj_state;
> +
> +	for (i =3D 0; i < state->num_global_objs; i++)
> +		if (obj =3D=3D state->global_objs[i].ptr)
> +			return state->global_objs[i].state;
> +
> +	assert_global_state_read_locked(state);
> +
> +	num_objs =3D state->num_global_objs + 1;
> +	size =3D sizeof(*state->global_objs) * num_objs;
> +	arr =3D krealloc(state->global_objs, size, GFP_KERNEL);
> +	if (!arr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	state->global_objs =3D arr;
> +	index =3D state->num_global_objs;
> +	memset(&state->global_objs[index], 0, sizeof(*state->global_objs));
> +
> +	obj_state =3D obj->funcs->atomic_duplicate_state(obj);
> +	if (!obj_state)
> +		return ERR_PTR(-ENOMEM);
> +
> +	obj_state->changed =3D false;
> +
> +	state->global_objs[index].state =3D obj_state;
> +	state->global_objs[index].old_state =3D obj->state;
> +	state->global_objs[index].new_state =3D obj_state;
> +	state->global_objs[index].ptr =3D obj;
> +	obj_state->state =3D state;
> +
> +	state->num_global_objs =3D num_objs;
> +
> +	DRM_DEBUG_ATOMIC("Added new global object %p state %p to %p\n",
> +			 obj, obj_state, state);
> +
> +	return obj_state;
> +}
> +
> +struct intel_global_state *
> +intel_atomic_get_old_global_obj_state(struct intel_atomic_state *state,
> +				      struct intel_global_obj *obj)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < state->num_global_objs; i++)
> +		if (obj =3D=3D state->global_objs[i].ptr)
> +			return state->global_objs[i].old_state;
> +
> +	return NULL;
> +}
> +
> +struct intel_global_state *
> +intel_atomic_get_new_global_obj_state(struct intel_atomic_state *state,
> +				      struct intel_global_obj *obj)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < state->num_global_objs; i++)
> +		if (obj =3D=3D state->global_objs[i].ptr)
> +			return state->global_objs[i].new_state;
> +
> +	return NULL;
> +}
> +
> +void intel_atomic_swap_global_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *old_obj_state, *new_obj_state;
> +	struct intel_global_obj *obj;
> +	int i;
> +
> +	for_each_oldnew_global_obj_in_state(state, obj, old_obj_state,
> +					    new_obj_state, i) {
> +		WARN_ON(obj->state !=3D old_obj_state);
> +
> +		/*
> +		 * If the new state wasn't modified (and properly
> +		 * locked for write access) we throw it away.
> +		 */
> +		if (!new_obj_state->changed)
> +			continue;
> +
> +		assert_global_state_write_locked(dev_priv);
> +
> +		old_obj_state->state =3D state;
> +		new_obj_state->state =3D NULL;
> +
> +		state->global_objs[i].state =3D old_obj_state;
> +		obj->state =3D new_obj_state;
> +	}
> +}
> +
> +void intel_atomic_clear_global_state(struct intel_atomic_state *state)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < state->num_global_objs; i++) {
> +		struct intel_global_obj *obj =3D state->global_objs[i].ptr;
> +
> +		obj->funcs->atomic_destroy_state(obj,
> +						 state->global_objs[i].state);
> +		state->global_objs[i].ptr =3D NULL;
> +		state->global_objs[i].state =3D NULL;
> +		state->global_objs[i].old_state =3D NULL;
> +		state->global_objs[i].new_state =3D NULL;
> +	}
> +	state->num_global_objs =3D 0;
> +}
> +
> +int intel_atomic_lock_global_state(struct intel_global_state *obj_state)
> +{
> +	struct intel_atomic_state *state =3D obj_state->state;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		int ret;
> +
> +		ret =3D drm_modeset_lock(&crtc->base.mutex,
> +				       state->base.acquire_ctx);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	obj_state->changed =3D true;
> +
> +	return 0;
> +}
> +
> +int intel_atomic_serialize_global_state(struct intel_global_state *obj_s=
tate)
> +{
> +	struct intel_atomic_state *state =3D obj_state->state;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state;
> +
> +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state))
> +			return PTR_ERR(crtc_state);
> +	}
> +
> +	obj_state->changed =3D true;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/=
gpu/drm/i915/display/intel_global_state.h
> new file mode 100644
> index 000000000000..e6163a469029
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> @@ -0,0 +1,87 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_GLOBAL_STATE_H__
> +#define __INTEL_GLOBAL_STATE_H__
> +
> +#include <linux/list.h>
> +
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_global_obj;
> +struct intel_global_state;
> +
> +struct intel_global_state_funcs {
> +	struct intel_global_state *(*atomic_duplicate_state)(struct intel_globa=
l_obj *obj);
> +	void (*atomic_destroy_state)(struct intel_global_obj *obj,
> +				     struct intel_global_state *state);
> +};
> +
> +struct intel_global_obj {
> +	struct list_head head;
> +	struct intel_global_state *state;
> +	const struct intel_global_state_funcs *funcs;
> +};
> +
> +#define intel_for_each_global_obj(obj, dev_priv) \
> +	list_for_each_entry(obj, &(dev_priv)->global_obj_list, head)
> +
> +#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __=
i) \
> +	for ((__i) =3D 0; \
> +	     (__i) < (__state)->num_global_objs && \
> +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> +		      (new_obj_state) =3D (__state)->global_objs[__i].new_state, 1); \
> +	     (__i)++) \
> +		for_each_if(obj)
> +
> +#define for_each_old_global_obj_in_state(__state, obj, new_obj_state, __=
i) \
> +	for ((__i) =3D 0; \
> +	     (__i) < (__state)->num_global_objs && \
> +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> +		      (new_obj_state) =3D (__state)->global_objs[__i].old_state, 1); \
> +	     (__i)++) \
> +		for_each_if(obj)
> +
> +#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state,=
 new_obj_state, __i) \
> +	for ((__i) =3D 0; \
> +	     (__i) < (__state)->num_global_objs && \
> +		     ((obj) =3D (__state)->global_objs[__i].ptr, \
> +		      (old_obj_state) =3D (__state)->global_objs[__i].old_state, \
> +		      (new_obj_state) =3D (__state)->global_objs[__i].new_state, 1); \
> +	     (__i)++) \
> +		for_each_if(obj)
> +
> +struct intel_global_state {
> +	struct intel_atomic_state *state;
> +	bool changed;
> +};
> +
> +struct __intel_global_objs_state {
> +	struct intel_global_obj *ptr;
> +	struct intel_global_state *state, *old_state, *new_state;
> +};
> +
> +void intel_atomic_global_obj_init(struct drm_i915_private *dev_priv,
> +				  struct intel_global_obj *obj,
> +				  struct intel_global_state *state,
> +				  const struct intel_global_state_funcs *funcs);
> +void intel_atomic_global_obj_cleanup(struct drm_i915_private *dev_priv);
> +
> +struct intel_global_state *
> +intel_atomic_get_global_obj_state(struct intel_atomic_state *state,
> +				  struct intel_global_obj *obj);
> +struct intel_global_state *
> +intel_atomic_get_old_global_obj_state(struct intel_atomic_state *state,
> +				      struct intel_global_obj *obj);
> +struct intel_global_state *
> +intel_atomic_get_new_global_obj_state(struct intel_atomic_state *state,
> +				      struct intel_global_obj *obj);
> +
> +void intel_atomic_swap_global_state(struct intel_atomic_state *state);
> +void intel_atomic_clear_global_state(struct intel_atomic_state *state);
> +int intel_atomic_lock_global_state(struct intel_global_state *obj_state);
> +int intel_atomic_serialize_global_state(struct intel_global_state *obj_s=
tate);
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 1787bfdd057f..b558e68b4dbd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -71,6 +71,7 @@
>  #include "display/intel_dpll_mgr.h"
>  #include "display/intel_dsb.h"
>  #include "display/intel_frontbuffer.h"
> +#include "display/intel_global_state.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_opregion.h"
>  =

> @@ -1100,6 +1101,8 @@ struct drm_i915_private {
>  	 */
>  	struct mutex dpll_lock;
>  =

> +	struct list_head global_obj_list;
> +
>  	/*
>  	 * For reading active_pipes, cdclk_state holding any crtc
>  	 * lock is sufficient, for writing must hold all of them.
> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
