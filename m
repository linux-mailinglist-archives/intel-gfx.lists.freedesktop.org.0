Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E118F810
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 16:02:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA70B6E150;
	Mon, 23 Mar 2020 15:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 004E56E150
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 15:02:26 +0000 (UTC)
IronPort-SDR: MG4lNkJl85glSUafIl7zTGE5tAGSYFjfHE5o34xOFB4hjcvawctVGoB42ol8IjcGagZxslvIrH
 EvC9jC6C3nnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 08:02:24 -0700
IronPort-SDR: Kpy10+ONCvqIMqXzbOGBX77gBmPRDiU3heXm/WC6KW5kFtxY+CO0ui8SseHTew27+XDaAYqN4P
 M7omQkHJJYVg==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419524931"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 08:02:22 -0700
Date: Mon, 23 Mar 2020 16:58:25 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200323145825.GA23698@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-5-stanislav.lisovskiy@intel.com>
 <20200311163130.GC13686@intel.com>
 <20200320125141.GA4156@intel.com>
 <20200323141836.GR13686@intel.com>
 <20200323143616.GA23620@intel.com>
 <20200323145008.GW13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323145008.GW13686@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v19 4/8] drm/i915: Refactor
 intel_can_enable_sagv
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 23, 2020 at 04:50:08PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Mar 23, 2020 at 04:36:16PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 23, 2020 at 04:18:36PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Mar 20, 2020 at 02:51:41PM +0200, Lisovskiy, Stanislav wrote:
> > > > On Wed, Mar 11, 2020 at 06:31:30PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Mon, Mar 09, 2020 at 06:12:00PM +0200, Stanislav Lisovskiy wro=
te:
> > > > > > Currently intel_can_enable_sagv function contains
> > > > > > a mix of workarounds for different platforms
> > > > > > some of them are not valid for gens >=3D 11 already,
> > > > > > so lets split it into separate functions.
> > > > > > =

> > > > > > v2:
> > > > > >     - Rework watermark calculation algorithm to
> > > > > >       attempt to calculate Level 0 watermark
> > > > > >       with added sagv block time latency and
> > > > > >       check if it fits in DBuf in order to
> > > > > >       determine if SAGV can be enabled already
> > > > > >       at this stage, just as BSpec 49325 states.
> > > > > >       if that fails rollback to usual Level 0
> > > > > >       latency and disable SAGV.
> > > > > >     - Remove unneeded tabs(James Ausmus)
> > > > > > =

> > > > > > v3: Rebased the patch
> > > > > > =

> > > > > > v4: - Added back interlaced check for Gen12 and
> > > > > >       added separate function for TGL SAGV check
> > > > > >       (thanks to James Ausmus for spotting)
> > > > > >     - Removed unneeded gen check
> > > > > >     - Extracted Gen12 SAGV decision making code
> > > > > >       to a separate function from skl_compute_wm
> > > > > > =

> > > > > > v5: - Added SAGV global state to dev_priv, because
> > > > > >       we need to track all pipes, not only those
> > > > > >       in atomic state. Each pipe has now correspondent
> > > > > >       bit mask reflecting, whether it can tolerate
> > > > > >       SAGV or not(thanks to Ville Syrjala for suggestions).
> > > > > >     - Now using active flag instead of enable in crc
> > > > > >       usage check.
> > > > > > =

> > > > > > v6: - Fixed rebase conflicts
> > > > > > =

> > > > > > v7: - kms_cursor_legacy seems to get broken because of multiple=
 memcpy
> > > > > >       calls when copying level 0 water marks for enabled SAGV, =
to
> > > > > >       fix this now simply using that field right away, without =
copying,
> > > > > >       for that introduced a new wm_level accessor which decides=
 which
> > > > > >       wm_level to return based on SAGV state.
> > > > > > =

> > > > > > v8: - Protect crtc_sagv_mask same way as we do for other global=
 state
> > > > > >       changes: i.e check if changes are needed, then grab all c=
rtc locks
> > > > > >       to serialize the changes(Ville Syrj=E4l=E4)
> > > > > >     - Add crtc_sagv_mask caching in order to avoid needless rec=
alculations
> > > > > >       (Matthew Roper)
> > > > > >     - Put back Gen12 SAGV switch in order to get it enabled in =
separate
> > > > > >       patch(Matthew Roper)
> > > > > >     - Rename *_set_sagv_mask to *_compute_sagv_mask(Matthew Rop=
er)
> > > > > >     - Check if there are no active pipes in intel_can_enable_sa=
gv
> > > > > >       instead of platform specific functions(Matthew Roper), sa=
me
> > > > > >       for intel_has_sagv check.
> > > > > > =

> > > > > > v9  - Switched to u8 for crtc_sagv_mask(Ville Syrj=E4l=E4)
> > > > > >     - crtc_sagv_mask now is pipe_sagv_mask(Ville Syrj=E4l=E4)
> > > > > >     - Extracted sagv checking logic from skl/icl/tgl_compute_sa=
gv_mask
> > > > > >     - Extracted skl_plane_wm_level function and passing latency=
 to
> > > > > >       separate patches(Ville Syrj=E4l=E4)
> > > > > >     - Removed part of unneeded copy-paste from tgl_check_pipe_f=
its_sagv_wm
> > > > > >       (Ville Syrj=E4l=E4)
> > > > > >     - Now using simple assignment for sagv_wm0 as it contains o=
nly
> > > > > >       pod types and no pointers(Ville Syrj=E4l=E4)
> > > > > >     - Fixed intel_can_enable_sagv not to do double duty, now it=
 only
> > > > > >       check SAGV bits by ANDing those between local and global =
state.
> > > > > >       The SAGV masks are now computed after watermarks are avai=
lable,
> > > > > >       in order to be able to figure out if ddb ranges are fitti=
ng nicely.
> > > > > >       (Ville Syrj=E4l=E4)
> > > > > >     - Now having uv_sagv_wm0 and sagv_wm0, otherwise we have wr=
ong logic
> > > > > >       when using skl_plane_wm_level accessor, as we had previou=
sly for
> > > > > >       Gen11+ color plane and regular wm levels, so probably both
> > > > > >       has to be recalculated with additional SAGV block time fo=
r Level 0.
> > > > > > =

> > > > > > v10: - Starting to use new global state for storing pipe_sagv_m=
ask
> > > > > > =

> > > > > > v11: - Fixed rebase conflict with recent drm-tip
> > > > > >      - Check if we really need to recalculate SAGV mask, otherw=
ise
> > > > > >        bail out without making any changes.
> > > > > >      - Use cached SAGV result, instead of recalculating it ever=
ytime,
> > > > > >        if bw_state hasn't changed.
> > > > > > =

> > > > > > v12: - Removed WARN from intel_can_enable_sagv, in some of the =
commits
> > > > > >        if we don't recalculated watermarks, bw_state is not rec=
alculated,
> > > > > >        thus leading to SAGV state not recalculated by the commi=
t state,
> > > > > >        which is still calling intel_can_enable_sagv function. F=
ix that
> > > > > >        by just analyzing the current global bw_state object - b=
ecause
> > > > > >        we simply have no other objects related to that.
> > > > > > =

> > > > > > v13: - Rebased, fixed warnings regarding long lines
> > > > > >      - Changed function call sites from intel_atomic_bw* to
> > > > > >        intel_wb_* as was suggested.(Jani Nikula)
> > > > > >      - Taken ddb_state_changed and bw_state_changed into use.
> > > > > > =

> > > > > > v14: - total_affected_planes is no longer needed to check for d=
db changes,
> > > > > >        just as active_pipe_changes.
> > > > > > =

> > > > > > v15: - Fixed stupid mistake with uninitialized crtc in
> > > > > >        skl_compute_sagv_mask.
> > > > > > =

> > > > > > v16: - Convert pipe_sagv_mask to pipe_sagv_reject and now using=
 inverted
> > > > > >        flag to indicate SAGV readiness for the pipe(Ville Syrj=
=E4l=E4)
> > > > > >      - Added return value to intel_compute_sagv_mask which call
> > > > > >        intel_atomic_serialize_global_state in order to properly
> > > > > >        propagate EDEADLCK to drm.
> > > > > >      - Based on the discussion with Ville, removed active_pipe_=
changes
> > > > > >        check and also there seems to be no need for checking dd=
b_state_changes
> > > > > >        as well. Instead we just iterate through crtcs in state =
- having
> > > > > >        crtc in a state already guarantees that it is at least r=
ead-locked
> > > > > >        Having additional flag to check if there actually were s=
ome plane
> > > > > >        wm/ddb changes would be probably added later as an optim=
ization.
> > > > > >      - We can't get parent atomic state from crtc_state at comm=
it stage
> > > > > >        (nice drm feature), also propagating state through funct=
ion call
> > > > > >        chain seems to be overkill and not possible(cursor legac=
y updates)
> > > > > >        Querying for bw_state object from global state is not po=
ssible as
> > > > > >        it might get swapped with other global state.
> > > > > >        So... just sticked can_sagv boolean into wm crtc state.
> > > > > > =

> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.c=
om>
> > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> > > > > > Cc: James Ausmus <james.ausmus@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_bw.h       |  18 +
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
> > > > > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > > > > >  drivers/gpu/drm/i915/intel_pm.c               | 314 ++++++++++=
++++++--
> > > > > >  drivers/gpu/drm/i915/intel_pm.h               |   1 +
> > > > > >  5 files changed, 318 insertions(+), 41 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/=
gpu/drm/i915/display/intel_bw.h
> > > > > > index b5f61463922f..4083adf4b432 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > > > @@ -18,6 +18,24 @@ struct intel_crtc_state;
> > > > > >  struct intel_bw_state {
> > > > > >  	struct intel_global_state base;
> > > > > >  =

> > > > > > +	/*
> > > > > > +	 * Contains a bit mask, used to determine, whether correspond=
ent
> > > > > > +	 * pipe allows SAGV or not.
> > > > > > +	 */
> > > > > > +	u8 pipe_sagv_reject;
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * Used to determine if we already had calculated
> > > > > > +	 * SAGV mask for this state once.
> > > > > > +	 */
> > > > > > +	bool sagv_calculated;
> > > > > =

> > > > > Why would we even attempt to calculate it many times?
> > > > > =

> > > > > > +
> > > > > > +	/*
> > > > > > +	 * Contains final SAGV decision based on current mask,
> > > > > > +	 * to prevent doing the same job over and over again.
> > > > > > +	 */
> > > > > > +	bool can_sagv;
> > > > > =

> > > > > This is redundant since it's just sagv_reject=3D=3D0.
> > > > > =

> > > > > > +
> > > > > >  	unsigned int data_rate[I915_MAX_PIPES];
> > > > > >  	u8 num_active_planes[I915_MAX_PIPES];
> > > > > >  };
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/dri=
vers/gpu/drm/i915/display/intel_display.c
> > > > > > index 8f23c4d51c33..9e0058a78ea6 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -14010,7 +14010,10 @@ static void verify_wm_state(struct int=
el_crtc *crtc,
> > > > > >  		/* Watermarks */
> > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > +						&sw_plane_wm->sagv_wm0) &&
> > > > > > +			   (level =3D=3D 0)))
> > > > > =

> > > > > Pointless parens. Also we should do the check as
> > > > > 'level =3D=3D 0 && wm_equals(sagv)' to skip the pointless compari=
son when
> > > > > level !=3D 0.
> > > > > =

> > > > > I guess we can't read out sagv state due to the silly pcode inter=
face?
> > > > > =

> > > > > >  				continue;
> > > > > >  =

> > > > > >  			drm_err(&dev_priv->drm,
> > > > > > @@ -14065,7 +14068,10 @@ static void verify_wm_state(struct int=
el_crtc *crtc,
> > > > > >  		/* Watermarks */
> > > > > >  		for (level =3D 0; level <=3D max_level; level++) {
> > > > > >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > -						&sw_plane_wm->wm[level]))
> > > > > > +						&sw_plane_wm->wm[level]) ||
> > > > > > +			   (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > > > > > +						&sw_plane_wm->sagv_wm0) &&
> > > > > > +			   (level =3D=3D 0)))
> > > > > >  				continue;
> > > > > >  =

> > > > > >  			drm_err(&dev_priv->drm,
> > > > > > @@ -15544,8 +15550,10 @@ static void intel_atomic_commit_tail(s=
truct intel_atomic_state *state)
> > > > > >  		 * SKL workaround: bspec recommends we disable the SAGV when=
 we
> > > > > >  		 * have more then one pipe enabled
> > > > > >  		 */
> > > > > > -		if (!intel_can_enable_sagv(state))
> > > > > > -			intel_disable_sagv(dev_priv);
> > > > > > +		if (INTEL_GEN(dev_priv) < 11) {
> > > > > > +			if (!intel_can_enable_sagv(state))
> > > > > > +				intel_disable_sagv(dev_priv);
> > > > > > +		}
> > > > > >  =

> > > > > >  		intel_modeset_verify_disabled(dev_priv, state);
> > > > > >  	}
> > > > > > @@ -15645,8 +15653,10 @@ static void intel_atomic_commit_tail(s=
truct intel_atomic_state *state)
> > > > > >  	if (state->modeset)
> > > > > >  		intel_verify_planes(state);
> > > > > >  =

> > > > > > -	if (state->modeset && intel_can_enable_sagv(state))
> > > > > > -		intel_enable_sagv(dev_priv);
> > > > > > +	if (INTEL_GEN(dev_priv) < 11) {
> > > > > > +		if (state->modeset && intel_can_enable_sagv(state))
> > > > > > +			intel_enable_sagv(dev_priv);
> > > > > > +	}
> > > > > >  =

> > > > > >  	drm_atomic_helper_commit_hw_done(&state->base);
> > > > > >  =

> > > > > > @@ -15798,7 +15808,6 @@ static int intel_atomic_commit(struct d=
rm_device *dev,
> > > > > >  =

> > > > > >  	if (state->global_state_changed) {
> > > > > >  		assert_global_state_locked(dev_priv);
> > > > > > -
> > > > > >  		dev_priv->active_pipes =3D state->active_pipes;
> > > > > >  	}
> > > > > >  =

> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h=
 b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > index 5e00e611f077..da0308b87dad 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > @@ -669,11 +669,14 @@ struct skl_plane_wm {
> > > > > >  	struct skl_wm_level wm[8];
> > > > > >  	struct skl_wm_level uv_wm[8];
> > > > > >  	struct skl_wm_level trans_wm;
> > > > > > +	struct skl_wm_level sagv_wm0;
> > > > > > +	struct skl_wm_level uv_sagv_wm0;
> > > > > >  	bool is_planar;
> > > > > >  };
> > > > > >  =

> > > > > >  struct skl_pipe_wm {
> > > > > >  	struct skl_plane_wm planes[I915_MAX_PLANES];
> > > > > > +	bool can_sagv;
> > > > > >  };
> > > > > >  =

> > > > > >  enum vlv_wm_level {
> > > > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/=
i915/intel_pm.c
> > > > > > index c72fa59a8302..f598b55f4abc 100644
> > > > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > > > @@ -43,6 +43,7 @@
> > > > > >  #include "i915_fixed.h"
> > > > > >  #include "i915_irq.h"
> > > > > >  #include "i915_trace.h"
> > > > > > +#include "display/intel_bw.h"
> > > > > >  #include "intel_pm.h"
> > > > > >  #include "intel_sideband.h"
> > > > > >  #include "../../../platform/x86/intel_ips.h"
> > > > > > @@ -3634,7 +3635,7 @@ static bool skl_needs_memory_bw_wa(struct=
 drm_i915_private *dev_priv)
> > > > > >  	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
> > > > > >  }
> > > > > >  =

> > > > > > -static bool
> > > > > > +bool
> > > > > >  intel_has_sagv(struct drm_i915_private *dev_priv)
> > > > > >  {
> > > > > >  	/* HACK! */
> > > > > > @@ -3757,39 +3758,25 @@ intel_disable_sagv(struct drm_i915_priv=
ate *dev_priv)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  =

> > > > > > -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > > > > +static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_stat=
e *crtc_state)
> > > > > =

> > > > > This extraction looks to be trivially done as a separate patch.
> > > > > =

> > > > > >  {
> > > > > > -	struct drm_device *dev =3D state->base.dev;
> > > > > > +	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> > > > > >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > > > +	struct intel_atomic_state *state =3D to_intel_atomic_state(cr=
tc_state->uapi.state);
> > > > > >  	struct intel_crtc *crtc;
> > > > > >  	struct intel_plane *plane;
> > > > > > -	struct intel_crtc_state *crtc_state;
> > > > > > -	enum pipe pipe;
> > > > > >  	int level, latency;
> > > > > >  =

> > > > > > -	if (!intel_has_sagv(dev_priv))
> > > > > > -		return false;
> > > > > > -
> > > > > > -	/*
> > > > > > -	 * If there are no active CRTCs, no additional checks need be=
 performed
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) =3D=3D 0)
> > > > > > -		return true;
> > > > > > +	crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > > > >  =

> > > > > > -	/*
> > > > > > -	 * SKL+ workaround: bspec recommends we disable SAGV when we =
have
> > > > > > -	 * more then one pipe enabled
> > > > > > -	 */
> > > > > > -	if (hweight8(state->active_pipes) > 1)
> > > > > > +	if ((INTEL_GEN(dev_priv) <=3D 9) && (hweight8(state->active_p=
ipes) > 1))
> > > > > >  		return false;
> > > > > >  =

> > > > > > -	/* Since we're now guaranteed to only have one active CRTC...=
 */
> > > > > > -	pipe =3D ffs(state->active_pipes) - 1;
> > > > > > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> > > > > > -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > > > > > -
> > > > > > -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERL=
ACE)
> > > > > > +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERL=
ACE) {
> > > > > > +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> > > > > > +			      pipe_name(crtc->pipe));
> > > > > >  		return false;
> > > > > > +	}
> > > > > >  =

> > > > > >  	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> > > > > >  		struct skl_plane_wm *wm =3D
> > > > > > @@ -3816,13 +3803,145 @@ bool intel_can_enable_sagv(struct inte=
l_atomic_state *state)
> > > > > >  		 * incur memory latencies higher than sagv_block_time_us we
> > > > > >  		 * can't enable SAGV.
> > > > > >  		 */
> > > > > > -		if (latency < dev_priv->sagv_block_time_us)
> > > > > > +		if (latency < dev_priv->sagv_block_time_us) {
> > > > > > +			DRM_DEBUG_KMS("Latency %d < sagv block time %d, no SAGV for=
 pipe %c\n",
> > > > > > +				      latency, dev_priv->sagv_block_time_us, pipe_name(crt=
c->pipe));
> > > > > >  			return false;
> > > > > > +		}
> > > > > >  	}
> > > > > >  =

> > > > > >  	return true;
> > > > > >  }
> > > > > >  =

> > > > > > +static bool
> > > > > > +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_stat=
e);
> > > > > > +
> > > > > > +static bool intel_calculate_sagv_result(struct intel_bw_state =
*bw_state)
> > > > > > +{
> > > > > > +	return bw_state->pipe_sagv_reject =3D=3D 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int intel_compute_sagv_mask(struct intel_atomic_state *=
state)
> > > > > > +{
> > > > > > +	int ret;
> > > > > > +	struct drm_device *dev =3D state->base.dev;
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > > > +	struct intel_crtc *crtc;
> > > > > > +	struct intel_crtc_state *new_crtc_state;
> > > > > > +	struct intel_bw_state *new_bw_state =3D NULL;
> > > > > > +	struct intel_bw_state *old_bw_state =3D NULL;
> > > > > > +	int i;
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * If SAGV is not supported we just can't do anything
> > > > > > +	 * not even set or reject SAGV points - just bail out.
> > > > > > +	 * Thus avoid needless calculations.
> > > > > > +	 */
> > > > > > +	if (!intel_has_sagv(dev_priv))
> > > > > > +		return 0;
> > > > > > +
> > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > +					 new_crtc_state, i) {
> > > > > > +		bool pipe_sagv_enable;
> > > > > > +
> > > > > > +		new_bw_state =3D intel_bw_get_state(state);
> > > > > > +		old_bw_state =3D intel_bw_get_old_state(state);
> > > > > > +
> > > > > > +		if (IS_ERR_OR_NULL(new_bw_state) || IS_ERR_OR_NULL(old_bw_st=
ate)) {a
> > > > > > +			WARN(1, "Could not get bw_state\n");
> > > > > > +			return -EINVAL;
> > > > > =

> > > > > What is this?
> > > > > =

> > > > > > +		}
> > > > > > +
> > > > > > +		new_bw_state->sagv_calculated =3D false;
> > > > > > +
> > > > > > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > > > > > +			pipe_sagv_enable =3D tgl_can_enable_sagv_on_pipe(new_crtc_s=
tate);
> > > > > > +		else
> > > > > > +			pipe_sagv_enable =3D skl_can_enable_sagv_on_pipe(new_crtc_s=
tate);
> > > > > > +
> > > > > > +		if (pipe_sagv_enable)
> > > > > > +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> > > > > > +		else
> > > > > > +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> > > > > > +	}
> > > > > > +
> > > > > > +	if (!new_bw_state || !old_bw_state)
> > > > > > +		return 0;
> > > > > > +
> > > > > > +	new_bw_state->can_sagv =3D intel_calculate_sagv_result(new_bw=
_state);
> > > > > > +	new_bw_state->sagv_calculated =3D true;
> > > > > > +
> > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > +					 new_crtc_state, i) {
> > > > > > +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.opti=
mal;
> > > > > > +
> > > > > > +		/*
> > > > > > +		 * Due to drm limitation at commit state, when
> > > > > > +		 * changes are written the whole atomic state is
> > > > > > +		 * zeroed away =3D> which prevents from using it,
> > > > > > +		 * so just sticking it into pipe wm state for
> > > > > > +		 * keeping it simple - anyway this is related to wm.
> > > > > > +		 * Proper way in ideal universe would be of course not
> > > > > > +		 * to lose parent atomic state object from child crtc_state,
> > > > > > +		 * and stick to OOP programming principles, which had been
> > > > > > +		 * scientifically proven to work.
> > > > > > +		 */
> > > > > > +		pipe_wm->can_sagv =3D new_bw_state->can_sagv;
> > > > > =

> > > > > I would probably name that wm->can_sagv as wm->use_sagv_wm so it'=
s clear
> > > > > what it does.
> > > > > =

> > > > > > +	}
> > > > > > +
> > > > > > +	/*
> > > > > > +	 * For SAGV we need to account all the pipes,
> > > > > > +	 * not only the ones which are in state currently.
> > > > > > +	 * Grab all locks if we detect that we are actually
> > > > > > +	 * going to do something.
> > > > > > +	 */
> > > > > > +	if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sa=
gv_reject) {
> > > > > > +		DRM_DEBUG_KMS("State %p: old sagv mask 0x%x, new sagv mask 0=
x%x\n",
> > > > > > +			      state,
> > > > > > +			      old_bw_state->pipe_sagv_reject,
> > > > > > +			      new_bw_state->pipe_sagv_reject);
> > > > > > +
> > > > > > +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->b=
ase);
> > > > > > +		if (ret) {
> > > > > > +			DRM_DEBUG_KMS("Could not serialize global state\n");
> > > > > > +			return ret;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > > +/*
> > > > > > + * This function to be used before swap state
> > > > > > + */
> > > > > > +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> > > > > > +{
> > > > > > +	struct drm_device *dev =3D state->base.dev;
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > > > > +	struct intel_bw_state *bw_state;
> > > > > > +
> > > > > > +	if (!intel_has_sagv(dev_priv)) {
> > > > > > +		DRM_DEBUG_KMS("No SAGV support detected\n");
> > > > > > +		return false;
> > > > > > +	}
> > > > > > +
> > > > > > +	bw_state =3D intel_bw_get_state(state);
> > > > > > +
> > > > > > +	if (IS_ERR_OR_NULL(bw_state)) {
> > > > > =

> > > > > It can't be NULL. And if you get an error you must propagate it u=
pwards.
> > > > =

> > > > Can you please elaborate what I should do here?
> > > > Just want to save some time without wasting time guessing.
> > > > The options are:
> > > > =

> > > > 1) If I propagate an error upwards, I obviously need to change a si=
gnature
> > > >    to int intel_can_enable_sagv, also if I do that usage at legacy =
callsites
> > > >    for this function will change, i.e you won't be able to call it =
like
> > > >    if (intel_can_enable_sagv()) anymore. Is it that what you want?
> > > >    Should note also that most of the legacy call sites are from com=
mit_tail
> > > >    which wouldn't even propagate it further, because as you know it=
 is already
> > > >    point of no return.
> > > =

> > > Looks like intel_can_enable_sagv() should not exist anymore. We should
> > > just precompute the sagv mask in the bw atomic check, and then the co=
mmit
> > > time checks will simply become checks of the sagv mask.
> > =

> > Was thinking about that, but then the question is how to deal with lega=
cy
> > stuff - for instance, skl doesn't have QGV points at all, as I understa=
nd
> > some platforms just have it as a switch so we'll have to have somekind
> > of code like this anyway, i.e just checking if we can and then switch.
> =

> We should just have two different ways to calculate whether a pipe can
> do sagv or not, one for skl+ another for icl+. Then we use the
> appropriate method when computing the sagv mask.

Yes, I have two ways already, but I would like to have sagv mask
computed in some centralized place i.e intel_compute_sagv_mask, so that =

each part of code has its own responsiblity and it is not spread across dif=
ferent
functions/areas(SOLID).

As I understand you want wm sagv checks to be done in allocate_pipe_ddb - ok
I can transfer it there, but still I would like pipe_reject_mask to be set
in a single place for obvious reasons.

Also still the question is how we evaluate pipe_reject_mask - as I understa=
nd
from you mean that I just nuke intel_can_enable_sagv and start just checking
pipe_reject_mask =3D=3D 0 instead everywhere. =


I'm still more in favour of having helpers for that - however in order to
avoid continuing wasting time discussing err propagation and other secondary
stuff - I'm fine with this :)

> =

> > =

> > Or basically we would be just inlining the intel_can_enable_sagv to
> > intel_atomic_commit_tail as I understand. Because yep for gen >=3D11
> > it just a matter of pre/post updating qgv points, but for skl we =

> > still need some condition to check when we are calling intel_enable/dis=
able sagv
> > =

> > =

> > Stan
> > =

> > =

> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
