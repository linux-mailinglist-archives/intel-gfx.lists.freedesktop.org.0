Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690B435F1A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266386E42F;
	Thu, 21 Oct 2021 10:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F956E42C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 10:35:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="229269824"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="229269824"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:35:17 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495073209"
Received: from ssuryana-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.45.34])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:35:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Lyude Paul <lyude@redhat.com>
In-Reply-To: <20211020223339.669-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
 <20211020223339.669-4-ville.syrjala@linux.intel.com>
Date: Thu, 21 Oct 2021 13:35:12 +0300
Message-ID: <87o87imzrz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use vblank workers for gamma
 updates
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

On Thu, 21 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The pipe gamma registers are single buffered so they should only
> be updated during the vblank to avoid screen tearing. In fact they
> really should only be updated between start of vblank and frame
> start because that is the only time the pipe is guaranteed to be
> empty. Already at frame start the pipe begins to fill up with
> data for the next frame.
>
> Unfortunately frame start happens ~1 scanline after the start
> of vblank which in practice doesn't always leave us enough time to
> finish the gamma update in time (gamma LUTs can be several KiB of
> data we have to bash into the registers). However we must try our
> best and so we'll add a vblank work for each pipe from where we
> can do the gamma update. Additionally we could consider pushing
> frame start forward to the max of ~4 scanlines after start of
> vblank. But not sure that's exactly a validated configuration.
> As it stands the ~100 first pixels tend to make it through with
> the old gamma values.
>
> Even though the vblank worker is running on a high prority thread
> we still have to contend with C-states. If the CPU happens be in
> a deep C-state when the vblank interrupt arrives even the irq
> handler gets delayed massively (I've observed dozens of scanlines
> worth of latency). To avoid that problem we'll use the qos mechanism
> to keep the CPU awake while the vblank work is scheduled.
>
> With all this hooked up we can finally enjoy near atomic gamma
> updates. It even works across several pipes from the same atomic
> commit which previously was a total fail because we did the
> gamma updates for each pipe serially after waiting for all
> pipes to have latched the double buffered registers.
>
> In the future the DSB should take over this responsibility
> which will hopefully avoid some of these issues.
>
> Kudos to Lyude for finishing the actual vblank workers.
> Works like the proverbial train toilet.
>
> v2: Add missing intel_atomic_state fwd declaration
> v3: Clean up properly when not scheduling the worker
> v4: Clean up the rest and add tracepoints
>
> CC: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 76 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |  4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 +--
>  .../drm/i915/display/intel_display_types.h    |  8 ++
>  drivers/gpu/drm/i915/i915_trace.h             | 42 ++++++++++
>  5 files changed, 129 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 0f8b48b6911c..4758c61adae8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -3,12 +3,14 @@
>   * Copyright =C2=A9 2020 Intel Corporation
>   */
>  #include <linux/kernel.h>
> +#include <linux/pm_qos.h>
>  #include <linux/slab.h>
>=20=20
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_plane_helper.h>
> +#include <drm/drm_vblank_work.h>
>=20=20
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> @@ -167,6 +169,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>=20=20
> +	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
> +
>  	drm_crtc_cleanup(&crtc->base);
>  	kfree(crtc);
>  }
> @@ -344,6 +348,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
>=20=20
>  	intel_crtc_crc_init(crtc);
>=20=20
> +	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
> +
>  	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) !=3D crtc->pipe=
);
>=20=20
>  	return 0;
> @@ -354,6 +360,65 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>  	return ret;
>  }
>=20=20
> +static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *=
crtc_state)
> +{
> +	return crtc_state->hw.active &&
> +		!intel_crtc_needs_modeset(crtc_state) &&
> +		!crtc_state->preload_luts &&
> +		(crtc_state->uapi.color_mgmt_changed ||
> +		 crtc_state->update_pipe);
> +}
> +
> +static void intel_crtc_vblank_work(struct kthread_work *base)
> +{
> +	struct drm_vblank_work *work =3D to_drm_vblank_work(base);
> +	struct intel_crtc_state *crtc_state =3D
> +		container_of(work, typeof(*crtc_state), vblank_work);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	trace_intel_crtc_vblank_work_start(crtc);
> +
> +	intel_color_load_luts(crtc_state);
> +
> +	if (crtc_state->uapi.event) {
> +		spin_lock_irq(&crtc->base.dev->event_lock);
> +		drm_crtc_send_vblank_event(&crtc->base, crtc_state->uapi.event);
> +		crtc_state->uapi.event =3D NULL;
> +		spin_unlock_irq(&crtc->base.dev->event_lock);
> +	}
> +
> +	trace_intel_crtc_vblank_work_end(crtc);
> +}
> +
> +static void intel_crtc_vblank_work_init(struct intel_crtc_state *crtc_st=
ate)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	drm_vblank_work_init(&crtc_state->vblank_work, &crtc->base,
> +			     intel_crtc_vblank_work);
> +	/*
> +	 * Interrupt latency is critical for getting the vblank
> +	 * work executed as early as possible during the vblank.
> +	 */
> +	cpu_latency_qos_update_request(&crtc->vblank_pm_qos, 0);
> +}
> +
> +void intel_wait_for_vblank_works(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		if (!intel_crtc_needs_vblank_work(crtc_state))
> +			continue;
> +
> +		drm_vblank_work_flush(&crtc_state->vblank_work);
> +		cpu_latency_qos_update_request(&crtc->vblank_pm_qos,
> +					       PM_QOS_DEFAULT_VALUE);
> +	}
> +}
> +
>  int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mod=
e,
>  			     int usecs)
>  {
> @@ -387,7 +452,7 @@ static int intel_mode_vblank_start(const struct drm_d=
isplay_mode *mode)
>   * until a subsequent call to intel_pipe_update_end(). That is done to
>   * avoid random delays.
>   */
> -void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_sta=
te)
> +void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -402,6 +467,9 @@ void intel_pipe_update_start(const struct intel_crtc_=
state *new_crtc_state)
>  	if (new_crtc_state->uapi.async_flip)
>  		return;
>=20=20
> +	if (intel_crtc_needs_vblank_work(new_crtc_state))
> +		intel_crtc_vblank_work_init(new_crtc_state);
> +
>  	if (new_crtc_state->vrr.enable)
>  		vblank_start =3D intel_vrr_vmax_vblank_start(new_crtc_state);
>  	else
> @@ -557,7 +625,11 @@ void intel_pipe_update_end(struct intel_crtc_state *=
new_crtc_state)
>  	 * Would be slightly nice to just grab the vblank count and arm the
>  	 * event outside of the critical section - the spinlock might spin for a
>  	 * while ... */
> -	if (new_crtc_state->uapi.event) {
> +	if (intel_crtc_needs_vblank_work(new_crtc_state)) {
> +		drm_vblank_work_schedule(&new_crtc_state->vblank_work,
> +					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> +					 false);
> +	} else if (new_crtc_state->uapi.event) {
>  		drm_WARN_ON(&dev_priv->drm,
>  			    drm_crtc_vblank_get(&crtc->base) !=3D 0);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/=
i915/display/intel_crtc.h
> index 22363fbbc925..25eb58bce0dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -11,6 +11,7 @@
>  enum pipe;
>  struct drm_display_mode;
>  struct drm_i915_private;
> +struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>=20=20
> @@ -24,7 +25,8 @@ void intel_crtc_state_reset(struct intel_crtc_state *cr=
tc_state,
>  u32 intel_crtc_get_vblank_counter(struct intel_crtc *crtc);
>  void intel_crtc_vblank_on(const struct intel_crtc_state *crtc_state);
>  void intel_crtc_vblank_off(const struct intel_crtc_state *crtc_state);
> -void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_sta=
te);
> +void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state);
>  void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state);
> +void intel_wait_for_vblank_works(struct intel_atomic_state *state);
>=20=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 79a7552af7b5..1375d963c0a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8818,6 +8818,8 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  		intel_set_cdclk_post_plane_update(state);
>  	}
>=20=20
> +	intel_wait_for_vblank_works(state);

Nitpick, I think the function name can be confusing due to the plural
vs. verb here. intel_wait_for_vblank_work_end(), _finish(), _done()?

BR,
Jani.


> +
>  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
>  	 * already, but still need the state for the delayed optimization. To
>  	 * fix this:
> @@ -8832,13 +8834,6 @@ static void intel_atomic_commit_tail(struct intel_=
atomic_state *state)
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (new_crtc_state->uapi.async_flip)
>  			intel_crtc_disable_flip_done(state, crtc);
> -
> -		if (new_crtc_state->hw.active &&
> -		    !intel_crtc_needs_modeset(new_crtc_state) &&
> -		    !new_crtc_state->preload_luts &&
> -		    (new_crtc_state->uapi.color_mgmt_changed ||
> -		     new_crtc_state->update_pipe))
> -			intel_color_load_luts(new_crtc_state);
>  	}
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 1e42bf901263..8bb9264022f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -28,6 +28,7 @@
>=20=20
>  #include <linux/async.h>
>  #include <linux/i2c.h>
> +#include <linux/pm_qos.h>
>  #include <linux/pwm.h>
>  #include <linux/sched/clock.h>
>=20=20
> @@ -41,6 +42,7 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/drm_vblank_work.h>
>  #include <drm/i915_mei_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>=20=20
> @@ -1241,6 +1243,9 @@ struct intel_crtc_state {
>  		u8 link_count;
>  		u8 pixel_overlap;
>  	} splitter;
> +
> +	/* for loading single buffered registers during vblank */
> +	struct drm_vblank_work vblank_work;
>  };
>=20=20
>  enum intel_pipe_crc_source {
> @@ -1325,6 +1330,9 @@ struct intel_crtc {
>  	/* scalers available on this crtc */
>  	int num_scalers;
>=20=20
> +	/* for loading single buffered registers during vblank */
> +	struct pm_qos_request vblank_pm_qos;
> +
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i91=
5_trace.h
> index 9795f456cccf..fc48a16d7a4f 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -404,6 +404,48 @@ TRACE_EVENT(intel_fbc_nuke,
>=20=20
>  /* pipe updates */
>=20=20
> +TRACE_EVENT(intel_crtc_vblank_work_start,
> +	    TP_PROTO(struct intel_crtc *crtc),
> +	    TP_ARGS(crtc),
> +
> +	    TP_STRUCT__entry(
> +			     __field(enum pipe, pipe)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __entry->pipe =3D crtc->pipe;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
> +		      pipe_name(__entry->pipe), __entry->frame,
> +		       __entry->scanline)
> +);
> +
> +TRACE_EVENT(intel_crtc_vblank_work_end,
> +	    TP_PROTO(struct intel_crtc *crtc),
> +	    TP_ARGS(crtc),
> +
> +	    TP_STRUCT__entry(
> +			     __field(enum pipe, pipe)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __entry->pipe =3D crtc->pipe;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
> +		      pipe_name(__entry->pipe), __entry->frame,
> +		       __entry->scanline)
> +);
> +
>  TRACE_EVENT(intel_pipe_update_start,
>  	    TP_PROTO(struct intel_crtc *crtc),
>  	    TP_ARGS(crtc),

--=20
Jani Nikula, Intel Open Source Graphics Center
