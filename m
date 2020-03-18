Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDB7189B44
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAC96E8C1;
	Wed, 18 Mar 2020 11:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE426E8C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 11:52:18 +0000 (UTC)
IronPort-SDR: SoFCojh0rOmuI4KyGTVjF0A/wcofIzbeRxqQ15Z+7v9JdAWBqD/PZEPVIipZDr5pmRAqWlSrvd
 qdAYzaCUw75Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 04:52:16 -0700
IronPort-SDR: IrpOl+jHE5CCISokoR4QH17R7p63d9p7UnlV2/aly232W6cbH6ed3HG7yznFlMEQhQZycYOdJB
 AmKNehq2Xu8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; 
 d="scan'208,217";a="263356468"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by orsmga002.jf.intel.com with ESMTP; 18 Mar 2020 04:52:14 -0700
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Mar 2020 11:52:13 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Mar 2020 11:52:13 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 18 Mar 2020 11:52:13 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v19 4/8] drm/i915: Refactor intel_can_enable_sagv
Thread-Index: AQHV9i4Z3mtwu7nuO0CapS2I/QHgF6hDmK0AgAqtlD8=
Date: Wed, 18 Mar 2020 11:52:13 +0000
Message-ID: <4aa56e04b7534ec5b8764cc512250604@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-5-stanislav.lisovskiy@intel.com>,
 <20200311163130.GC13686@intel.com>
In-Reply-To: <20200311163130.GC13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1642768586=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1642768586==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4aa56e04b7534ec5b8764cc512250604intelcom_"

--_000_4aa56e04b7534ec5b8764cc512250604intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> @@ -5829,6 +6068,10 @@ skl_compute_wm(struct intel_atomic_state *state)
>>                        return ret;
>>        }
>>
>> +     ret =3D intel_compute_sagv_mask(state);
>> +     if (ret)
>> +             return ret;

> This seems too early. We haven't even computed the ddb yet.


I was thinking about our discussion last week and actually I think there ar=
e simply two ways how

to do it.


1) What I do here is: calculate minimum amount required to fit SAGV wm leve=
ls into ddb and

based on that do the ddb allocation accordingly. I.e it is not to early bec=
ause actually we have

already wm levels for sagv and non-sagv calculated - we already can check i=
f it can fit into L0

and then act accordingly.

However one thing to consider here: as you said besides the minimal require=
ments for each plane

(with or without sagv) there is an extra space being allocated in proportio=
n to plane data rate,

however here we are actually hitting the prioritization issue - i.e we need=
 to decide whether

it is more important to have SAGV or to have more extra space allocated to =
different planes

proportionally to their needs.

So in this first approach we always first determine if we fit into minimum =
SAGV reqs, turn it

on if we do and then rest of extra space is allocated among the planes in p=
roportion to data rate.

So that way we would be more often power efficient but but planes get less =
extra ddb space.


2) In your approach we should calculate ddb first, allocate extra space pro=
portionally to plane

data rate needs and only then check if all planes got enough space for L0 S=
AGV wm after that.

Then we actually don't even need skl_plane_wm_level accessor, because we fi=
rst would be allocating

using normal wm levels + extra ddb and only then check if all planes fit in=
to SAGV requirement -

because that extra space is not actually distributed evenly but in proporti=
on to data rate of each

plane, which means that some planes might lack space for SAGV theoretically=
, because some might be

getting more or less depending on the data_rate/total_data_rate ratio.


My position is such that I'm really not like "my approach should always win=
" here, but more searching for

solution which is more correct from product point of view.


Also could be that it doesn't really matter which approach we do take now,,=
 but matter more like

that how fast we deliver.  Because the actual outcome difference between tw=
o

might be minor, while time overhead for changing the approach could be majo=
r.


Best Regards,

Lisovskiy Stanislav
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Wednesday, March 11, 2020 6:31:30 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v19 4/8] drm/i915: Refactor intel_can_enable_sagv

On Mon, Mar 09, 2020 at 06:12:00PM +0200, Stanislav Lisovskiy wrote:
> Currently intel_can_enable_sagv function contains
> a mix of workarounds for different platforms
> some of them are not valid for gens >=3D 11 already,
> so lets split it into separate functions.
>
> v2:
>     - Rework watermark calculation algorithm to
>       attempt to calculate Level 0 watermark
>       with added sagv block time latency and
>       check if it fits in DBuf in order to
>       determine if SAGV can be enabled already
>       at this stage, just as BSpec 49325 states.
>       if that fails rollback to usual Level 0
>       latency and disable SAGV.
>     - Remove unneeded tabs(James Ausmus)
>
> v3: Rebased the patch
>
> v4: - Added back interlaced check for Gen12 and
>       added separate function for TGL SAGV check
>       (thanks to James Ausmus for spotting)
>     - Removed unneeded gen check
>     - Extracted Gen12 SAGV decision making code
>       to a separate function from skl_compute_wm
>
> v5: - Added SAGV global state to dev_priv, because
>       we need to track all pipes, not only those
>       in atomic state. Each pipe has now correspondent
>       bit mask reflecting, whether it can tolerate
>       SAGV or not(thanks to Ville Syrjala for suggestions).
>     - Now using active flag instead of enable in crc
>       usage check.
>
> v6: - Fixed rebase conflicts
>
> v7: - kms_cursor_legacy seems to get broken because of multiple memcpy
>       calls when copying level 0 water marks for enabled SAGV, to
>       fix this now simply using that field right away, without copying,
>       for that introduced a new wm_level accessor which decides which
>       wm_level to return based on SAGV state.
>
> v8: - Protect crtc_sagv_mask same way as we do for other global state
>       changes: i.e check if changes are needed, then grab all crtc locks
>       to serialize the changes(Ville Syrj=E4l=E4)
>     - Add crtc_sagv_mask caching in order to avoid needless recalculation=
s
>       (Matthew Roper)
>     - Put back Gen12 SAGV switch in order to get it enabled in separate
>       patch(Matthew Roper)
>     - Rename *_set_sagv_mask to *_compute_sagv_mask(Matthew Roper)
>     - Check if there are no active pipes in intel_can_enable_sagv
>       instead of platform specific functions(Matthew Roper), same
>       for intel_has_sagv check.
>
> v9  - Switched to u8 for crtc_sagv_mask(Ville Syrj=E4l=E4)
>     - crtc_sagv_mask now is pipe_sagv_mask(Ville Syrj=E4l=E4)
>     - Extracted sagv checking logic from skl/icl/tgl_compute_sagv_mask
>     - Extracted skl_plane_wm_level function and passing latency to
>       separate patches(Ville Syrj=E4l=E4)
>     - Removed part of unneeded copy-paste from tgl_check_pipe_fits_sagv_w=
m
>       (Ville Syrj=E4l=E4)
>     - Now using simple assignment for sagv_wm0 as it contains only
>       pod types and no pointers(Ville Syrj=E4l=E4)
>     - Fixed intel_can_enable_sagv not to do double duty, now it only
>       check SAGV bits by ANDing those between local and global state.
>       The SAGV masks are now computed after watermarks are available,
>       in order to be able to figure out if ddb ranges are fitting nicely.
>       (Ville Syrj=E4l=E4)
>     - Now having uv_sagv_wm0 and sagv_wm0, otherwise we have wrong logic
>       when using skl_plane_wm_level accessor, as we had previously for
>       Gen11+ color plane and regular wm levels, so probably both
>       has to be recalculated with additional SAGV block time for Level 0.
>
> v10: - Starting to use new global state for storing pipe_sagv_mask
>
> v11: - Fixed rebase conflict with recent drm-tip
>      - Check if we really need to recalculate SAGV mask, otherwise
>        bail out without making any changes.
>      - Use cached SAGV result, instead of recalculating it everytime,
>        if bw_state hasn't changed.
>
> v12: - Removed WARN from intel_can_enable_sagv, in some of the commits
>        if we don't recalculated watermarks, bw_state is not recalculated,
>        thus leading to SAGV state not recalculated by the commit state,
>        which is still calling intel_can_enable_sagv function. Fix that
>        by just analyzing the current global bw_state object - because
>        we simply have no other objects related to that.
>
> v13: - Rebased, fixed warnings regarding long lines
>      - Changed function call sites from intel_atomic_bw* to
>        intel_wb_* as was suggested.(Jani Nikula)
>      - Taken ddb_state_changed and bw_state_changed into use.
>
> v14: - total_affected_planes is no longer needed to check for ddb changes=
,
>        just as active_pipe_changes.
>
> v15: - Fixed stupid mistake with uninitialized crtc in
>        skl_compute_sagv_mask.
>
> v16: - Convert pipe_sagv_mask to pipe_sagv_reject and now using inverted
>        flag to indicate SAGV readiness for the pipe(Ville Syrj=E4l=E4)
>      - Added return value to intel_compute_sagv_mask which call
>        intel_atomic_serialize_global_state in order to properly
>        propagate EDEADLCK to drm.
>      - Based on the discussion with Ville, removed active_pipe_changes
>        check and also there seems to be no need for checking ddb_state_ch=
anges
>        as well. Instead we just iterate through crtcs in state - having
>        crtc in a state already guarantees that it is at least read-locked
>        Having additional flag to check if there actually were some plane
>        wm/ddb changes would be probably added later as an optimization.
>      - We can't get parent atomic state from crtc_state at commit stage
>        (nice drm feature), also propagating state through function call
>        chain seems to be overkill and not possible(cursor legacy updates)
>        Querying for bw_state object from global state is not possible as
>        it might get swapped with other global state.
>        So... just sticked can_sagv boolean into wm crtc state.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h       |  18 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  23 +-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/intel_pm.c               | 314 ++++++++++++++++--
>  drivers/gpu/drm/i915/intel_pm.h               |   1 +
>  5 files changed, 318 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index b5f61463922f..4083adf4b432 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -18,6 +18,24 @@ struct intel_crtc_state;
>  struct intel_bw_state {
>        struct intel_global_state base;
>
> +     /*
> +      * Contains a bit mask, used to determine, whether correspondent
> +      * pipe allows SAGV or not.
> +      */
> +     u8 pipe_sagv_reject;
> +
> +     /*
> +      * Used to determine if we already had calculated
> +      * SAGV mask for this state once.
> +      */
> +     bool sagv_calculated;

Why would we even attempt to calculate it many times?

> +
> +     /*
> +      * Contains final SAGV decision based on current mask,
> +      * to prevent doing the same job over and over again.
> +      */
> +     bool can_sagv;

This is redundant since it's just sagv_reject=3D=3D0.

> +
>        unsigned int data_rate[I915_MAX_PIPES];
>        u8 num_active_planes[I915_MAX_PIPES];
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8f23c4d51c33..9e0058a78ea6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14010,7 +14010,10 @@ static void verify_wm_state(struct intel_crtc *c=
rtc,
>                /* Watermarks */
>                for (level =3D 0; level <=3D max_level; level++) {
>                        if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -                                             &sw_plane_wm->wm[level]))
> +                                             &sw_plane_wm->wm[level]) ||
> +                        (skl_wm_level_equals(&hw_plane_wm->wm[level],
> +                                             &sw_plane_wm->sagv_wm0) &&
> +                        (level =3D=3D 0)))

Pointless parens. Also we should do the check as
'level =3D=3D 0 && wm_equals(sagv)' to skip the pointless comparison when
level !=3D 0.

I guess we can't read out sagv state due to the silly pcode interface?

>                                continue;
>
>                        drm_err(&dev_priv->drm,
> @@ -14065,7 +14068,10 @@ static void verify_wm_state(struct intel_crtc *c=
rtc,
>                /* Watermarks */
>                for (level =3D 0; level <=3D max_level; level++) {
>                        if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -                                             &sw_plane_wm->wm[level]))
> +                                             &sw_plane_wm->wm[level]) ||
> +                        (skl_wm_level_equals(&hw_plane_wm->wm[level],
> +                                             &sw_plane_wm->sagv_wm0) &&
> +                        (level =3D=3D 0)))
>                                continue;
>
>                        drm_err(&dev_priv->drm,
> @@ -15544,8 +15550,10 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>                 * SKL workaround: bspec recommends we disable the SAGV wh=
en we
>                 * have more then one pipe enabled
>                 */
> -             if (!intel_can_enable_sagv(state))
> -                     intel_disable_sagv(dev_priv);
> +             if (INTEL_GEN(dev_priv) < 11) {
> +                     if (!intel_can_enable_sagv(state))
> +                             intel_disable_sagv(dev_priv);
> +             }
>
>                intel_modeset_verify_disabled(dev_priv, state);
>        }
> @@ -15645,8 +15653,10 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>        if (state->modeset)
>                intel_verify_planes(state);
>
> -     if (state->modeset && intel_can_enable_sagv(state))
> -             intel_enable_sagv(dev_priv);
> +     if (INTEL_GEN(dev_priv) < 11) {
> +             if (state->modeset && intel_can_enable_sagv(state))
> +                     intel_enable_sagv(dev_priv);
> +     }
>
>        drm_atomic_helper_commit_hw_done(&state->base);
>
> @@ -15798,7 +15808,6 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>
>        if (state->global_state_changed) {
>                assert_global_state_locked(dev_priv);
> -
>                dev_priv->active_pipes =3D state->active_pipes;
>        }
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5e00e611f077..da0308b87dad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -669,11 +669,14 @@ struct skl_plane_wm {
>        struct skl_wm_level wm[8];
>        struct skl_wm_level uv_wm[8];
>        struct skl_wm_level trans_wm;
> +     struct skl_wm_level sagv_wm0;
> +     struct skl_wm_level uv_sagv_wm0;
>        bool is_planar;
>  };
>
>  struct skl_pipe_wm {
>        struct skl_plane_wm planes[I915_MAX_PLANES];
> +     bool can_sagv;
>  };
>
>  enum vlv_wm_level {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c72fa59a8302..f598b55f4abc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -43,6 +43,7 @@
>  #include "i915_fixed.h"
>  #include "i915_irq.h"
>  #include "i915_trace.h"
> +#include "display/intel_bw.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
> @@ -3634,7 +3635,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_=
private *dev_priv)
>        return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
>  }
>
> -static bool
> +bool
>  intel_has_sagv(struct drm_i915_private *dev_priv)
>  {
>        /* HACK! */
> @@ -3757,39 +3758,25 @@ intel_disable_sagv(struct drm_i915_private *dev_p=
riv)
>        return 0;
>  }
>
> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_st=
ate)

This extraction looks to be trivially done as a separate patch.

>  {
> -     struct drm_device *dev =3D state->base.dev;
> +     struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
>        struct drm_i915_private *dev_priv =3D to_i915(dev);
> +     struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_sta=
te->uapi.state);
>        struct intel_crtc *crtc;
>        struct intel_plane *plane;
> -     struct intel_crtc_state *crtc_state;
> -     enum pipe pipe;
>        int level, latency;
>
> -     if (!intel_has_sagv(dev_priv))
> -             return false;
> -
> -     /*
> -      * If there are no active CRTCs, no additional checks need be perfo=
rmed
> -      */
> -     if (hweight8(state->active_pipes) =3D=3D 0)
> -             return true;
> +     crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>
> -     /*
> -      * SKL+ workaround: bspec recommends we disable SAGV when we have
> -      * more then one pipe enabled
> -      */
> -     if (hweight8(state->active_pipes) > 1)
> +     if ((INTEL_GEN(dev_priv) <=3D 9) && (hweight8(state->active_pipes) =
> 1))
>                return false;
>
> -     /* Since we're now guaranteed to only have one active CRTC... */
> -     pipe =3D ffs(state->active_pipes) - 1;
> -     crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> -     crtc_state =3D to_intel_crtc_state(crtc->base.state);
> -
> -     if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +     if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> +             DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> +                           pipe_name(crtc->pipe));
>                return false;
> +     }
>
>        for_each_intel_plane_on_crtc(dev, crtc, plane) {
>                struct skl_plane_wm *wm =3D
> @@ -3816,13 +3803,145 @@ bool intel_can_enable_sagv(struct intel_atomic_s=
tate *state)
>                 * incur memory latencies higher than sagv_block_time_us w=
e
>                 * can't enable SAGV.
>                 */
> -             if (latency < dev_priv->sagv_block_time_us)
> +             if (latency < dev_priv->sagv_block_time_us) {
> +                     DRM_DEBUG_KMS("Latency %d < sagv block time %d, no =
SAGV for pipe %c\n",
> +                                   latency, dev_priv->sagv_block_time_us=
, pipe_name(crtc->pipe));
>                        return false;
> +             }
>        }
>
>        return true;
>  }
>
> +static bool
> +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state);
> +
> +static bool intel_calculate_sagv_result(struct intel_bw_state *bw_state)
> +{
> +     return bw_state->pipe_sagv_reject =3D=3D 0;
> +}
> +
> +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +     int ret;
> +     struct drm_device *dev =3D state->base.dev;
> +     struct drm_i915_private *dev_priv =3D to_i915(dev);
> +     struct intel_crtc *crtc;
> +     struct intel_crtc_state *new_crtc_state;
> +     struct intel_bw_state *new_bw_state =3D NULL;
> +     struct intel_bw_state *old_bw_state =3D NULL;
> +     int i;
> +
> +     /*
> +      * If SAGV is not supported we just can't do anything
> +      * not even set or reject SAGV points - just bail out.
> +      * Thus avoid needless calculations.
> +      */
> +     if (!intel_has_sagv(dev_priv))
> +             return 0;
> +
> +     for_each_new_intel_crtc_in_state(state, crtc,
> +                                      new_crtc_state, i) {
> +             bool pipe_sagv_enable;
> +
> +             new_bw_state =3D intel_bw_get_state(state);
> +             old_bw_state =3D intel_bw_get_old_state(state);
> +
> +             if (IS_ERR_OR_NULL(new_bw_state) || IS_ERR_OR_NULL(old_bw_s=
tate)) {a
> +                     WARN(1, "Could not get bw_state\n");
> +                     return -EINVAL;

What is this?

> +             }
> +
> +             new_bw_state->sagv_calculated =3D false;
> +
> +             if (INTEL_GEN(dev_priv) >=3D 12)
> +                     pipe_sagv_enable =3D tgl_can_enable_sagv_on_pipe(ne=
w_crtc_state);
> +             else
> +                     pipe_sagv_enable =3D skl_can_enable_sagv_on_pipe(ne=
w_crtc_state);
> +
> +             if (pipe_sagv_enable)
> +                     new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe=
);
> +             else
> +                     new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe)=
;
> +     }
> +
> +     if (!new_bw_state || !old_bw_state)
> +             return 0;
> +
> +     new_bw_state->can_sagv =3D intel_calculate_sagv_result(new_bw_state=
);
> +     new_bw_state->sagv_calculated =3D true;
> +
> +     for_each_new_intel_crtc_in_state(state, crtc,
> +                                      new_crtc_state, i) {
> +             struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.opt=
imal;
> +
> +             /*
> +              * Due to drm limitation at commit state, when
> +              * changes are written the whole atomic state is
> +              * zeroed away =3D> which prevents from using it,
> +              * so just sticking it into pipe wm state for
> +              * keeping it simple - anyway this is related to wm.
> +              * Proper way in ideal universe would be of course not
> +              * to lose parent atomic state object from child crtc_state=
,
> +              * and stick to OOP programming principles, which had been
> +              * scientifically proven to work.
> +              */
> +             pipe_wm->can_sagv =3D new_bw_state->can_sagv;

I would probably name that wm->can_sagv as wm->use_sagv_wm so it's clear
what it does.

> +     }
> +
> +     /*
> +      * For SAGV we need to account all the pipes,
> +      * not only the ones which are in state currently.
> +      * Grab all locks if we detect that we are actually
> +      * going to do something.
> +      */
> +     if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_rej=
ect) {
> +             DRM_DEBUG_KMS("State %p: old sagv mask 0x%x, new sagv mask =
0x%x\n",
> +                           state,
> +                           old_bw_state->pipe_sagv_reject,
> +                           new_bw_state->pipe_sagv_reject);
> +
> +             ret =3D intel_atomic_serialize_global_state(&new_bw_state->=
base);
> +             if (ret) {
> +                     DRM_DEBUG_KMS("Could not serialize global state\n")=
;
> +                     return ret;
> +             }
> +     }
> +
> +     return 0;
> +}
> +
> +/*
> + * This function to be used before swap state
> + */
> +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +{
> +     struct drm_device *dev =3D state->base.dev;
> +     struct drm_i915_private *dev_priv =3D to_i915(dev);
> +     struct intel_bw_state *bw_state;
> +
> +     if (!intel_has_sagv(dev_priv)) {
> +             DRM_DEBUG_KMS("No SAGV support detected\n");
> +             return false;
> +     }
> +
> +     bw_state =3D intel_bw_get_state(state);
> +
> +     if (IS_ERR_OR_NULL(bw_state)) {

It can't be NULL. And if you get an error you must propagate it upwards.

> +             WARN(1, "Could not get bw_state\n");
> +             return false;
> +     }
> +
> +     if (bw_state->sagv_calculated)
> +             goto out;
> +
> +     bw_state->can_sagv =3D intel_calculate_sagv_result(bw_state);
> +     bw_state->sagv_calculated =3D true;
> +
> +out:
> +     return bw_state->can_sagv;
> +}
> +
>  /*
>   * Calculate initial DBuf slice offset, based on slice size
>   * and mask(i.e if slice size is 1024 and second slice is enabled
> @@ -4042,6 +4161,7 @@ skl_cursor_allocation(const struct intel_crtc_state=
 *crtc_state,
>                u32 latency =3D dev_priv->wm.skl_latency[level];
>
>                skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm,=
 &wm);
> +

Spurious whitespace.

>                if (wm.min_ddb_alloc =3D=3D U16_MAX)
>                        break;
>
> @@ -4556,9 +4676,83 @@ skl_plane_wm_level(const struct intel_crtc_state *=
crtc_state,
>        const struct skl_plane_wm *wm =3D
>                &crtc_state->wm.skl.optimal.planes[plane_id];
>
> +     if (!level) {
> +             const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.o=
ptimal;

Why is this here when &crtc_state->wm.skl.optimal is already being used
higher up?

> +
> +             if (pipe_wm->can_sagv)
> +                     return color_plane =3D=3D 0 ? &wm->sagv_wm0 : &wm->=
uv_sagv_wm0;
> +     }
> +
>        return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
>  }
>
> +static bool
> +tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)
> +{
> +     struct drm_crtc *crtc =3D crtc_state->uapi.crtc;

Pls don't use the annoying drm_ types.

> +     struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> +     struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +     struct skl_ddb_entry *alloc =3D &crtc_state->wm.skl.ddb;
> +     u16 alloc_size;
> +     u64 total_data_rate;
> +     enum plane_id plane_id;
> +     int num_active;
> +     u64 plane_data_rate[I915_MAX_PLANES] =3D {};
> +     u32 blocks;
> +
> +     /*
> +      * If pipe is not active it can't affect SAGV rejection
> +      * Checking it here is needed to leave only cases when
> +      * alloc_size is 0 for any other reasons, except inactive
> +      * pipe. As inactive pipe is fine, however having no ddb
> +      * space available is already problematic - so need to
> +      * to separate those.
> +      */

Can't figure out what this comment is trying to say or why it's here.

> +     if (!crtc_state->hw.active)
> +             return true;
> +
> +     /*
> +      * No need to check gen here, we call this only for gen12
> +      */
> +     total_data_rate =3D
> +             icl_get_total_relative_data_rate(crtc_state,
> +                                              plane_data_rate);
> +
> +     skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> +                                        total_data_rate,
> +                                        alloc, &num_active);
> +     alloc_size =3D skl_ddb_entry_size(alloc);

Don't we already have this in the crtc state?

> +     if (alloc_size =3D=3D 0)
> +             return false;

I don't think that can happen.

> +
> +     /*
> +      * Do check if we can fit L0 + sagv_block_time and
> +      * disable SAGV if we can't.
> +      */
> +     blocks =3D 0;
> +     for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +             /*
> +              * The only place, where we can't use skl_plane_wm_level
> +              * accessor, because if actually calls intel_can_enable_sag=
v
> +              * which depends on that function.
> +              */
> +             const struct skl_plane_wm *wm =3D
> +                     &crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +             blocks +=3D wm->sagv_wm0.min_ddb_alloc;
> +             blocks +=3D wm->uv_sagv_wm0.min_ddb_alloc;
> +
> +             if (blocks > alloc_size) {
> +                     DRM_DEBUG_KMS("Not enough ddb blocks(%d<%d) for SAG=
V on pipe %c\n",
> +                                   alloc_size, blocks, pipe_name(intel_c=
rtc->pipe));
> +                     return false;
> +             }
> +     }
> +     DRM_DEBUG_KMS("%d total blocks required for SAGV, ddb entry size %d=
\n",
> +                   blocks, alloc_size);
> +     return true;
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -5140,11 +5334,19 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  static void
>  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
>                      const struct skl_wm_params *wm_params,
> -                   struct skl_wm_level *levels)
> +                   struct skl_plane_wm *plane_wm,
> +                   bool yuv)
>  {
>        struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crt=
c->dev);
>        int level, max_level =3D ilk_wm_max_level(dev_priv);
> +     /*
> +      * Check which kind of plane is it and based on that calculate
> +      * correspondent WM levels.
> +      */
> +     struct skl_wm_level *levels =3D yuv ? plane_wm->uv_wm : plane_wm->w=
m;
>        struct skl_wm_level *result_prev =3D &levels[0];
> +     struct skl_wm_level *sagv_wm =3D yuv ?
> +                             &plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm=
0;
>
>        for (level =3D 0; level <=3D max_level; level++) {
>                struct skl_wm_level *result =3D &levels[level];
> @@ -5155,6 +5357,27 @@ skl_compute_wm_levels(const struct intel_crtc_stat=
e *crtc_state,
>
>                result_prev =3D result;
>        }
> +     /*
> +      * For Gen12 if it is an L0 we need to also
> +      * consider sagv_block_time when calculating
> +      * L0 watermark - we will need that when making
> +      * a decision whether enable SAGV or not.
> +      * For older gens we agreed to copy L0 value for
> +      * compatibility.
> +      */
> +     if ((INTEL_GEN(dev_priv) >=3D 12)) {
> +             u32 latency =3D dev_priv->wm.skl_latency[0];
> +
> +             latency +=3D dev_priv->sagv_block_time_us;
> +             skl_compute_plane_wm(crtc_state, 0, latency,
> +                                  wm_params, &levels[0],
> +                                  sagv_wm);
> +             DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non=
-SAGV\n",
> +                           sagv_wm->min_ddb_alloc, levels[0].min_ddb_all=
oc);
> +     } else {
> +             /* Since all members are POD */
> +             *sagv_wm =3D levels[0];
> +     }

I was thinking more along the lines of

  skl_compute_wm_levels();
  skl_compute_transition_wm();
+ skl_compute_sagv_wm();


>  }
>
>  static void skl_compute_transition_wm(const struct intel_crtc_state *crt=
c_state,
> @@ -5237,7 +5460,7 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>        if (ret)
>                return ret;
>
> -     skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +     skl_compute_wm_levels(crtc_state, &wm_params, wm, false);
>        skl_compute_transition_wm(crtc_state, &wm_params, wm);
>
>        return 0;
> @@ -5259,7 +5482,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_=
state *crtc_state,
>        if (ret)
>                return ret;
>
> -     skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> +     skl_compute_wm_levels(crtc_state, &wm_params, wm, true);
>
>        return 0;
>  }
> @@ -5598,9 +5821,25 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>                for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) =
{
>                        enum plane_id plane_id =3D plane->id;
>                        const struct skl_plane_wm *old_wm, *new_wm;
> +                     const struct skl_wm_level *old_wm_level, *new_wm_le=
vel;
> +                     u16 old_plane_res_l, new_plane_res_l;
> +                     u8  old_plane_res_b, new_plane_res_b;
> +                     u16 old_min_ddb_alloc, new_min_ddb_alloc;
> +                     int color_plane =3D 0;
>
>                        old_wm =3D &old_pipe_wm->planes[plane_id];
>                        new_wm =3D &new_pipe_wm->planes[plane_id];
> +                     old_wm_level =3D skl_plane_wm_level(old_crtc_state,=
 plane_id, 0, color_plane);
> +                     new_wm_level =3D skl_plane_wm_level(new_crtc_state,=
 plane_id, 0, color_plane);
> +
> +                     old_plane_res_l =3D old_wm_level->plane_res_l;
> +                     old_plane_res_b =3D old_wm_level->plane_res_b;
> +
> +                     new_plane_res_l =3D new_wm_level->plane_res_l;
> +                     new_plane_res_b =3D new_wm_level->plane_res_b;
> +
> +                     old_min_ddb_alloc =3D old_wm_level->min_ddb_alloc;
> +                     new_min_ddb_alloc =3D new_wm_level->min_ddb_alloc;
>
>                        if (skl_plane_wm_equals(dev_priv, old_wm, new_wm))
>                                continue;
> @@ -5624,7 +5863,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>                                    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%=
3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d"
>                                      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%=
c%3d,%c%3d,%c%3d,%c%3d\n",
>                                    plane->base.base.id, plane->base.name,
> -                                 enast(old_wm->wm[0].ignore_lines), old_=
wm->wm[0].plane_res_l,
> +                                 enast(old_wm->wm[0].ignore_lines), old_=
plane_res_l,
>                                    enast(old_wm->wm[1].ignore_lines), old=
_wm->wm[1].plane_res_l,
>                                    enast(old_wm->wm[2].ignore_lines), old=
_wm->wm[2].plane_res_l,
>                                    enast(old_wm->wm[3].ignore_lines), old=
_wm->wm[3].plane_res_l,
> @@ -5634,7 +5873,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>                                    enast(old_wm->wm[7].ignore_lines), old=
_wm->wm[7].plane_res_l,
>                                    enast(old_wm->trans_wm.ignore_lines), =
old_wm->trans_wm.plane_res_l,
>
> -                                 enast(new_wm->wm[0].ignore_lines), new_=
wm->wm[0].plane_res_l,
> +                                 enast(new_wm->wm[0].ignore_lines), new_=
plane_res_l,
>                                    enast(new_wm->wm[1].ignore_lines), new=
_wm->wm[1].plane_res_l,
>                                    enast(new_wm->wm[2].ignore_lines), new=
_wm->wm[2].plane_res_l,
>                                    enast(new_wm->wm[3].ignore_lines), new=
_wm->wm[3].plane_res_l,
> @@ -5648,12 +5887,12 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>                                    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d=
,%4d,%4d,%4d,%4d,%4d"
>                                    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
4d\n",
>                                    plane->base.base.id, plane->base.name,
> -                                 old_wm->wm[0].plane_res_b, old_wm->wm[1=
].plane_res_b,
> +                                 old_plane_res_b, old_wm->wm[1].plane_re=
s_b,
>                                    old_wm->wm[2].plane_res_b, old_wm->wm[=
3].plane_res_b,
>                                    old_wm->wm[4].plane_res_b, old_wm->wm[=
5].plane_res_b,
>                                    old_wm->wm[6].plane_res_b, old_wm->wm[=
7].plane_res_b,
>                                    old_wm->trans_wm.plane_res_b,
> -                                 new_wm->wm[0].plane_res_b, new_wm->wm[1=
].plane_res_b,
> +                                 new_plane_res_b, new_wm->wm[1].plane_re=
s_b,
>                                    new_wm->wm[2].plane_res_b, new_wm->wm[=
3].plane_res_b,
>                                    new_wm->wm[4].plane_res_b, new_wm->wm[=
5].plane_res_b,
>                                    new_wm->wm[6].plane_res_b, new_wm->wm[=
7].plane_res_b,
> @@ -5663,12 +5902,12 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>                                    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d=
,%4d,%4d,%4d,%4d,%4d"
>                                    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
4d\n",
>                                    plane->base.base.id, plane->base.name,
> -                                 old_wm->wm[0].min_ddb_alloc, old_wm->wm=
[1].min_ddb_alloc,
> +                                 old_min_ddb_alloc, old_wm->wm[1].min_dd=
b_alloc,
>                                    old_wm->wm[2].min_ddb_alloc, old_wm->w=
m[3].min_ddb_alloc,
>                                    old_wm->wm[4].min_ddb_alloc, old_wm->w=
m[5].min_ddb_alloc,
>                                    old_wm->wm[6].min_ddb_alloc, old_wm->w=
m[7].min_ddb_alloc,
>                                    old_wm->trans_wm.min_ddb_alloc,
> -                                 new_wm->wm[0].min_ddb_alloc, new_wm->wm=
[1].min_ddb_alloc,
> +                                 new_min_ddb_alloc, new_wm->wm[1].min_dd=
b_alloc,
>                                    new_wm->wm[2].min_ddb_alloc, new_wm->w=
m[3].min_ddb_alloc,
>                                    new_wm->wm[4].min_ddb_alloc, new_wm->w=
m[5].min_ddb_alloc,
>                                    new_wm->wm[6].min_ddb_alloc, new_wm->w=
m[7].min_ddb_alloc,

Here too I think the sagv wm should be treated more or less like the
transition wm (ie. just printed as an extra).

> @@ -5829,6 +6068,10 @@ skl_compute_wm(struct intel_atomic_state *state)
>                        return ret;
>        }
>
> +     ret =3D intel_compute_sagv_mask(state);
> +     if (ret)
> +             return ret;

This seems too early. We haven't even computed the ddb yet.

> +
>        ret =3D skl_compute_ddb(state);
>        if (ret)
>                return ret;
> @@ -5960,6 +6203,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>                                val =3D I915_READ(CUR_WM(pipe, level));
>
>                        skl_wm_level_from_reg_val(val, &wm->wm[level]);
> +                     if (level =3D=3D 0)
> +                             memcpy(&wm->sagv_wm0, &wm->wm[level],
> +                                    sizeof(struct skl_wm_level));
>                }
>
>                if (plane_id !=3D PLANE_CURSOR)
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..65743a4cbcf6 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -42,6 +42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct intel_atomic_state *state);
> +bool intel_has_sagv(struct drm_i915_private *dev_priv);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
> --
> 2.24.1.485.gad05a3d8e5

--
Ville Syrj=E4l=E4
Intel

--_000_4aa56e04b7534ec5b8764cc512250604intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;&gt; @@ -5829,6 &#43;6068,10 @@ skl_compute_wm(=
struct intel_atomic_state *state)</span><br style=3D"color:rgb(33,33,33); f=
ont-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tah=
oma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; return ret;</span><br style=3D"color:rgb(33,33,33); font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</=
span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;</span><br style=3D"color:rgb(33,33,33);=
 font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_c=
ompute_sagv_mask(state);</span><br style=3D"color:rgb(33,33,33); font-famil=
y:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial=
,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)</span>=
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret;</span><br style=3D"color:rgb(3=
3,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe W=
P&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp;This seems too early. We haven't even comput=
ed the ddb yet.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">I was thinking about our discussion last week and a=
ctually I think there are simply two ways how</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">to do it.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">1) What I do here is: calculate minimum amount required to fit SAGV w=
m levels into ddb and&nbsp;</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">based on that do the ddb&nbsp;allocation accordingly. I.e it is not t=
o early because actually we have</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">already wm levels for sagv and non-sagv calculated - we already can c=
heck if it can fit into L0</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">and then act accordingly.&nbsp;</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">However one thing to consider here: as you said besides the minimal r=
equirements for each plane</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">(with or without sagv) there is an extra space being allocated in pro=
portion to plane data rate,</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">however here we are actually hitting the prioritization issue - i.e w=
e need to decide whether&nbsp;</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">it is more important to have SAGV or to have more extra space allocat=
ed to different planes</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">proportionally to their needs.</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">So in this first approach we always first determine if we fit into mi=
nimum SAGV reqs, turn it&nbsp;</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">on if we do and then rest of extra space is allocated among the plane=
s in proportion to data rate.</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">So that way we would be more often power efficient but but planes get=
 less extra ddb&nbsp;space.</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px"><br>
</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">2) In your approach we should calculate ddb first, allocate extra spa=
ce proportionally to plane</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">data rate needs and only then check if all planes got enough space fo=
r L0 SAGV wm after that.</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">Then we actually don't even need skl_plane_wm_level accessor, because=
 we first would be allocating</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">using normal wm levels &#43; extra ddb and only then check if all pla=
nes fit into SAGV requirement -</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">because that extra space is not actually distributed evenly but in pr=
oportion to data rate of each</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">plane, which means that some planes might lack space for SAGV theoret=
ically, because some might be</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">getting more or less depending on the data_rate/total_data_rate ratio=
.</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px"><br>
</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">My position is such that I'm really not like &quot;my approach should=
 always win&quot; here, but more searching for</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">solution which is more correct from product point of view.</span></fo=
nt></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px"><br>
</span></font></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">Also could be that it doesn't really matter which approach we do take=
 now,,</span></font><span style=3D"font-size:13.3333px; color:rgb(33,33,33)=
; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,=
Tahoma,Arial,sans-serif,serif,EmojiFont">&nbsp;</span><span style=3D"font-s=
ize:13.3333px; color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont">=
but
 matter more like</span></p>
<p><font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, =
Tahoma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.33=
33px">that how fast we deliver.&nbsp; B</span></font><span style=3D"font-si=
ze:13.3333px; color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont">e=
cause
 the actual outcome&nbsp;difference between two</span><font color=3D"#21212=
1" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, Tahoma, Arial, sans-seri=
f, serif, EmojiFont"><span style=3D"font-size:13.3333px"></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<font color=3D"#212121" face=3D"wf_segoe-ui_normal, Segoe UI, Segoe WP, Tah=
oma, Arial, sans-serif, serif, EmojiFont"><span style=3D"font-size:13.3333p=
x">might be minor, while time overhead for changing the approach could be m=
ajor.</span></font></p>
</span></font>
<p></p>
<p><br>
</p>
<div id=3D"x_Signature">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt">Best Regards,<br>
<br>
Lisovskiy Stanislav <br>
</span></font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrj=E4l=E4 &=
lt;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Wednesday, March 11, 2020 6:31:30 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v19 4/8] drm/i915: Refactor intel_can_enable_sag=
v</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Mon, Mar 09, 2020 at 06:12:00PM &#43;0200, Stan=
islav Lisovskiy wrote:<br>
&gt; Currently intel_can_enable_sagv function contains<br>
&gt; a mix of workarounds for different platforms<br>
&gt; some of them are not valid for gens &gt;=3D 11 already,<br>
&gt; so lets split it into separate functions.<br>
&gt; <br>
&gt; v2:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Rework watermark calculation algorithm to<br=
>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; attempt to calculate Level 0 water=
mark<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with added sagv block time latency=
 and<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; check if it fits in DBuf in order =
to<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; determine if SAGV can be enabled a=
lready<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at this stage, just as BSpec 49325=
 states.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if that fails rollback to usual Le=
vel 0<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; latency and disable SAGV.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Remove unneeded tabs(James Ausmus)<br>
&gt; <br>
&gt; v3: Rebased the patch<br>
&gt; <br>
&gt; v4: - Added back interlaced check for Gen12 and<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; added separate function for TGL SA=
GV check<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (thanks to James Ausmus for spotti=
ng)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Removed unneeded gen check<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Extracted Gen12 SAGV decision making code<br=
>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to a separate function from skl_co=
mpute_wm<br>
&gt; <br>
&gt; v5: - Added SAGV global state to dev_priv, because<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we need to track all pipes, not on=
ly those<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in atomic state. Each pipe has now=
 correspondent<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bit mask reflecting, whether it ca=
n tolerate<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SAGV or not(thanks to Ville Syrjal=
a for suggestions).<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Now using active flag instead of enable in c=
rc<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usage check.<br>
&gt; <br>
&gt; v6: - Fixed rebase conflicts<br>
&gt; <br>
&gt; v7: - kms_cursor_legacy seems to get broken because of multiple memcpy=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; calls when copying level 0 water m=
arks for enabled SAGV, to<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fix this now simply using that fie=
ld right away, without copying,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for that introduced a new wm_level=
 accessor which decides which<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level to return based on SAGV s=
tate.<br>
&gt; <br>
&gt; v8: - Protect crtc_sagv_mask same way as we do for other global state<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; changes: i.e check if changes are =
needed, then grab all crtc locks<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to serialize the changes(Ville Syr=
j=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Add crtc_sagv_mask caching in order to avoid=
 needless recalculations<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Matthew Roper)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Put back Gen12 SAGV switch in order to get i=
t enabled in separate<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; patch(Matthew Roper)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Rename *_set_sagv_mask to *_compute_sagv_mas=
k(Matthew Roper)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Check if there are no active pipes in intel_=
can_enable_sagv<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instead of platform specific funct=
ions(Matthew Roper), same<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for intel_has_sagv check.<br>
&gt; <br>
&gt; v9&nbsp; - Switched to u8 for crtc_sagv_mask(Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - crtc_sagv_mask now is pipe_sagv_mask(Ville S=
yrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Extracted sagv checking logic from skl/icl/t=
gl_compute_sagv_mask<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Extracted skl_plane_wm_level function and pa=
ssing latency to<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; separate patches(Ville Syrj=E4l=E4=
)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Removed part of unneeded copy-paste from tgl=
_check_pipe_fits_sagv_wm<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Now using simple assignment for sagv_wm0 as =
it contains only<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pod types and no pointers(Ville Sy=
rj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Fixed intel_can_enable_sagv not to do double=
 duty, now it only<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; check SAGV bits by ANDing those be=
tween local and global state.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The SAGV masks are now computed af=
ter watermarks are available,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in order to be able to figure out =
if ddb ranges are fitting nicely.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Now having uv_sagv_wm0 and sagv_wm0, otherwi=
se we have wrong logic<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when using skl_plane_wm_level acce=
ssor, as we had previously for<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gen11&#43; color plane and regular=
 wm levels, so probably both<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; has to be recalculated with additi=
onal SAGV block time for Level 0.<br>
&gt; <br>
&gt; v10: - Starting to use new global state for storing pipe_sagv_mask<br>
&gt; <br>
&gt; v11: - Fixed rebase conflict with recent drm-tip<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Check if we really need to recalculate=
 SAGV mask, otherwise<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bail out without making any =
changes.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Use cached SAGV result, instead of rec=
alculating it everytime,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if bw_state hasn't changed.<=
br>
&gt; <br>
&gt; v12: - Removed WARN from intel_can_enable_sagv, in some of the commits=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if we don't recalculated wat=
ermarks, bw_state is not recalculated,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; thus leading to SAGV state n=
ot recalculated by the commit state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; which is still calling intel=
_can_enable_sagv function. Fix that<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by just analyzing the curren=
t global bw_state object - because<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we simply have no other obje=
cts related to that.<br>
&gt; <br>
&gt; v13: - Rebased, fixed warnings regarding long lines<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Changed function call sites from intel=
_atomic_bw* to<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_wb_* as was suggested.=
(Jani Nikula)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Taken ddb_state_changed and bw_state_c=
hanged into use.<br>
&gt; <br>
&gt; v14: - total_affected_planes is no longer needed to check for ddb chan=
ges,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; just as active_pipe_changes.=
<br>
&gt; <br>
&gt; v15: - Fixed stupid mistake with uninitialized crtc in<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_sagv_mask.<br>
&gt; <br>
&gt; v16: - Convert pipe_sagv_mask to pipe_sagv_reject and now using invert=
ed<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; flag to indicate SAGV readin=
ess for the pipe(Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Added return value to intel_compute_sa=
gv_mask which call<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_atomic_serialize_globa=
l_state in order to properly<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; propagate EDEADLCK to drm.<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Based on the discussion with Ville, re=
moved active_pipe_changes<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; check and also there seems t=
o be no need for checking ddb_state_changes<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as well. Instead we just ite=
rate through crtcs in state - having<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; crtc in a state already guar=
antees that it is at least read-locked<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Having additional flag to ch=
eck if there actually were some plane<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm/ddb changes would be prob=
ably added later as an optimization.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - We can't get parent atomic state from =
crtc_state at commit stage<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (nice drm feature), also pro=
pagating state through function call<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chain seems to be overkill a=
nd not possible(cursor legacy updates)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Querying for bw_state object=
 from global state is not possible as<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; it might get swapped with ot=
her global state.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; So... just sticked can_sagv =
boolean into wm crtc state.<br>
&gt; <br>
&gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&g=
t;<br>
&gt; Cc: Ville Syrj=E4l=E4 &lt;ville.syrjala@intel.com&gt;<br>
&gt; Cc: James Ausmus &lt;james.ausmus@intel.com&gt;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.h&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; |&nbsp; 18 &#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_display.c&nbsp; |&nbsp; 23 &#=
43;-<br>
&gt;&nbsp; .../drm/i915/display/intel_display_types.h&nbsp;&nbsp;&nbsp; |&n=
bsp;&nbsp; 3 &#43;<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 314 &#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;--<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 1 &#43;<b=
r>
&gt;&nbsp; 5 files changed, 318 insertions(&#43;), 41 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm=
/i915/display/intel_bw.h<br>
&gt; index b5f61463922f..4083adf4b432 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; @@ -18,6 &#43;18,24 @@ struct intel_crtc_state;<br>
&gt;&nbsp; struct intel_bw_state {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state ba=
se;<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Contains a bit mask, used to det=
ermine, whether correspondent<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * pipe allows SAGV or not.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u8 pipe_sagv_reject;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Used to determine if we already =
had calculated<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * SAGV mask for this state once.<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bool sagv_calculated;<br>
<br>
Why would we even attempt to calculate it many times?<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Contains final SAGV decision bas=
ed on current mask,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * to prevent doing the same job ov=
er and over again.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bool can_sagv;<br>
<br>
This is redundant since it's just sagv_reject=3D=3D0.<br>
<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unsigned int data_rate[I915_=
MAX_PIPES];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 num_active_planes[I915_MA=
X_PIPES];<br>
&gt;&nbsp; };<br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c<br>
&gt; index 8f23c4d51c33..9e0058a78ea6 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; @@ -14010,7 &#43;14010,10 @@ static void verify_wm_state(struct intel_=
crtc *crtc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* Watermarks */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=3D max_level; level&#43;&#=
43;) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (skl=
_wm_level_equals(&amp;hw_plane_wm-&gt;wm[level],<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;wm[level=
]))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;wm[l=
evel]) ||<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
skl_wm_level_equals(&amp;hw_plane_wm-&gt;wm[level],<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;sagv=
_wm0) &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
level =3D=3D 0)))<br>
<br>
Pointless parens. Also we should do the check as<br>
'level =3D=3D 0 &amp;&amp; wm_equals(sagv)' to skip the pointless compariso=
n when<br>
level !=3D 0.<br>
<br>
I guess we can't read out sagv state due to the silly pcode interface?<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_err=
(&amp;dev_priv-&gt;drm,<br>
&gt; @@ -14065,7 &#43;14068,10 @@ static void verify_wm_state(struct intel_=
crtc *crtc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* Watermarks */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=3D max_level; level&#43;&#=
43;) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (skl=
_wm_level_equals(&amp;hw_plane_wm-&gt;wm[level],<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;wm[level=
]))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;wm[l=
evel]) ||<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
skl_wm_level_equals(&amp;hw_plane_wm-&gt;wm[level],<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;sw_plane_wm-&gt;sagv=
_wm0) &amp;&amp;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (=
level =3D=3D 0)))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_err=
(&amp;dev_priv-&gt;drm,<br>
&gt; @@ -15544,8 &#43;15550,10 @@ static void intel_atomic_commit_tail(stru=
ct intel_atomic_state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; * SKL workaround: bspec recommends we disable the=
 SAGV when we<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; * have more then one pipe enabled<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (!intel_can_enable_sagv(state))<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_disable_sagv(dev_=
priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (INTEL_GEN(dev_priv) &lt; 11) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_can_enab=
le_sagv(state))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_disable_sagv(dev_priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; intel_modeset_verify_disabled(dev_priv, state);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -15645,8 &#43;15653,10 @@ static void intel_atomic_commit_tail(stru=
ct intel_atomic_state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (state-&gt;modeset)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; intel_verify_planes(state);<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (state-&gt;modeset &amp;&amp; intel_can_e=
nable_sagv(state))<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; intel_enable_sagv(dev_priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_GEN(dev_priv) &lt; 11) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (state-&gt;modeset &amp;&amp; intel_can_enable_sagv(state))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_enable_sagv(d=
ev_priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_atomic_helper_commit_hw_=
done(&amp;state-&gt;base);<br>
&gt;&nbsp; <br>
&gt; @@ -15798,7 &#43;15808,6 @@ static int intel_atomic_commit(struct drm_=
device *dev,<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (state-&gt;global_state_c=
hanged) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; assert_global_state_locked(dev_priv);<br>
&gt; -<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; dev_priv-&gt;active_pipes =3D state-&gt;active_pipes;<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driv=
ers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; index 5e00e611f077..da0308b87dad 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display_types.h<b=
r>
&gt; @@ -669,11 &#43;669,14 @@ struct skl_plane_wm {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level wm[8];<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level uv_wm[8]=
;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level trans_wm=
;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level sagv_wm0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level uv_sagv_wm0;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool is_planar;<br>
&gt;&nbsp; };<br>
&gt;&nbsp; <br>
&gt;&nbsp; struct skl_pipe_wm {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_plane_wm planes[I=
915_MAX_PLANES];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bool can_sagv;<br>
&gt;&nbsp; };<br>
&gt;&nbsp; <br>
&gt;&nbsp; enum vlv_wm_level {<br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/in=
tel_pm.c<br>
&gt; index c72fa59a8302..f598b55f4abc 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; @@ -43,6 &#43;43,7 @@<br>
&gt;&nbsp; #include &quot;i915_fixed.h&quot;<br>
&gt;&nbsp; #include &quot;i915_irq.h&quot;<br>
&gt;&nbsp; #include &quot;i915_trace.h&quot;<br>
&gt; &#43;#include &quot;display/intel_bw.h&quot;<br>
&gt;&nbsp; #include &quot;intel_pm.h&quot;<br>
&gt;&nbsp; #include &quot;intel_sideband.h&quot;<br>
&gt;&nbsp; #include &quot;../../../platform/x86/intel_ips.h&quot;<br>
&gt; @@ -3634,7 &#43;3635,7 @@ static bool skl_needs_memory_bw_wa(struct dr=
m_i915_private *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return IS_GEN9_BC(dev_priv) =
|| IS_BROXTON(dev_priv);<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -static bool<br>
&gt; &#43;bool<br>
&gt;&nbsp; intel_has_sagv(struct drm_i915_private *dev_priv)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* HACK! */<br>
&gt; @@ -3757,39 &#43;3758,25 @@ intel_disable_sagv(struct drm_i915_private=
 *dev_priv)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -bool intel_can_enable_sagv(struct intel_atomic_state *state)<br>
&gt; &#43;static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_state *=
crtc_state)<br>
<br>
This extraction looks to be trivially done as a separate patch.<br>
<br>
&gt;&nbsp; {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D state-&gt;base.de=
v;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D crtc_state-&g=
t;uapi.crtc-&gt;dev;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev=
_priv =3D to_i915(dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_atomic_state *state =3D to_=
intel_atomic_state(crtc_state-&gt;uapi.state);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_plane *plane;<b=
r>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc_state *crtc_state;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; enum pipe pipe;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int level, latency;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_has_sagv(dev_priv))<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; return false;<br>
&gt; -<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * If there are no active CRTCs, no add=
itional checks need be performed<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (hweight8(state-&gt;active_pipes) =3D=3D =
0)<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; return true;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; crtc =3D to_intel_crtc(crtc_state-&gt;ua=
pi.crtc);<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * SKL&#43; workaround: bspec recommend=
s we disable SAGV when we have<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * more then one pipe enabled<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (hweight8(state-&gt;active_pipes) &gt; 1)=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if ((INTEL_GEN(dev_priv) &lt;=3D 9) &amp=
;&amp; (hweight8(state-&gt;active_pipes) &gt; 1))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return false;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; /* Since we're now guaranteed to only have o=
ne active CRTC... */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; pipe =3D ffs(state-&gt;active_pipes) - 1;<br=
>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; crtc =3D intel_get_crtc_for_pipe(dev_priv, p=
ipe);<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; crtc_state =3D to_intel_crtc_state(crtc-&gt;=
base.state);<br>
&gt; -<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (crtc_state-&gt;hw.adjusted_mode.flags &a=
mp; DRM_MODE_FLAG_INTERLACE)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (crtc_state-&gt;hw.adjusted_mode.flag=
s &amp; DRM_MODE_FLAG_INTERLACE) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; DRM_DEBUG_KMS(&quot;No SAGV for interlaced mode on pipe %c\n&quot;,=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; pipe_name(crtc-&gt;pipe));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return false;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_intel_plane_on_crtc=
(dev, crtc, plane) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct skl_plane_wm *wm =3D<br>
&gt; @@ -3816,13 &#43;3803,145 @@ bool intel_can_enable_sagv(struct intel_a=
tomic_state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; * incur memory latencies higher than sagv_block_t=
ime_us we<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; * can't enable SAGV.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (latency &lt; dev_priv-&gt;sagv_block_time_us)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (latency &lt; dev_priv-&gt;sagv_block_time_us) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot=
;Latency %d &lt; sagv block time %d, no SAGV for pipe %c\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; latency, d=
ev_priv-&gt;sagv_block_time_us, pipe_name(crtc-&gt;pipe));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
false;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return true;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;static bool<br>
&gt; &#43;tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state);=
<br>
&gt; &#43;<br>
&gt; &#43;static bool intel_calculate_sagv_result(struct intel_bw_state *bw=
_state)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return bw_state-&gt;pipe_sagv_reject =3D=
=3D 0;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;static int intel_compute_sagv_mask(struct intel_atomic_state *sta=
te)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int ret;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D state-&gt;bas=
e.dev;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc_state *new_crtc_state;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_bw_state *new_bw_state =3D =
NULL;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_bw_state *old_bw_state =3D =
NULL;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * If SAGV is not supported we just=
 can't do anything<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * not even set or reject SAGV poin=
ts - just bail out.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Thus avoid needless calculations=
.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_has_sagv(dev_priv))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crtc_in_state(state, =
crtc,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; new_crtc_state, i) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; bool pipe_sagv_enable;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; new_bw_state =3D intel_bw_get_state(state);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; old_bw_state =3D intel_bw_get_old_state(state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (IS_ERR_OR_NULL(new_bw_state) || IS_ERR_OR_NULL(old_bw_state)) {=
a<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WARN(1, &quot;Could=
 not get bw_state\n&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return -EINVAL;<br>
<br>
What is this?<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; new_bw_state-&gt;sagv_calculated =3D false;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (INTEL_GEN(dev_priv) &gt;=3D 12)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pipe_sagv_enable =
=3D tgl_can_enable_sagv_on_pipe(new_crtc_state);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pipe_sagv_enable =
=3D skl_can_enable_sagv_on_pipe(new_crtc_state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (pipe_sagv_enable)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;pi=
pe_sagv_reject &amp;=3D ~BIT(crtc-&gt;pipe);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;pi=
pe_sagv_reject |=3D BIT(crtc-&gt;pipe);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!new_bw_state || !old_bw_state)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;can_sagv =3D intel_calc=
ulate_sagv_result(new_bw_state);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;sagv_calculated =3D tru=
e;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crtc_in_state(state, =
crtc,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; new_crtc_state, i) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; struct skl_pipe_wm *pipe_wm =3D &amp;new_crtc_state-&gt;wm.skl.opti=
mal;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * Due to drm limitation at commit state, when<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * changes are written the whole atomic state is<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * zeroed away =3D&gt; which prevents from using it,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * so just sticking it into pipe wm state for<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * keeping it simple - anyway this is related to wm.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * Proper way in ideal universe would be of course not<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * to lose parent atomic state object from child crtc_state,<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * and stick to OOP programming principles, which had been<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * scientifically proven to work.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; pipe_wm-&gt;can_sagv =3D new_bw_state-&gt;can_sagv;<br>
<br>
I would probably name that wm-&gt;can_sagv as wm-&gt;use_sagv_wm so it's cl=
ear<br>
what it does.<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * For SAGV we need to account all =
the pipes,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * not only the ones which are in s=
tate currently.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Grab all locks if we detect that=
 we are actually<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * going to do something.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (new_bw_state-&gt;pipe_sagv_reject !=
=3D old_bw_state-&gt;pipe_sagv_reject) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; DRM_DEBUG_KMS(&quot;State %p: old sagv mask 0x%x, new sagv mask 0x%=
x\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; old_bw_state-&gt;pipe_sagv_reject,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; new_bw_state-&gt;pipe_sagv_reject);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; ret =3D intel_atomic_serialize_global_state(&amp;new_bw_state-&gt;b=
ase);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (ret) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot=
;Could not serialize global state\n&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;/*<br>
&gt; &#43; * This function to be used before swap state<br>
&gt; &#43; */<br>
&gt; &#43;bool intel_can_enable_sagv(struct intel_atomic_state *state)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_device *dev =3D state-&gt;bas=
e.dev;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_bw_state *bw_state;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_has_sagv(dev_priv)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; DRM_DEBUG_KMS(&quot;No SAGV support detected\n&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return false;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_bw_get_state(state);<=
br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR_OR_NULL(bw_state)) {<br>
<br>
It can't be NULL. And if you get an error you must propagate it upwards.<br=
>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; WARN(1, &quot;Could not get bw_state\n&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return false;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (bw_state-&gt;sagv_calculated)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; goto out;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state-&gt;can_sagv =3D intel_calculat=
e_sagv_result(bw_state);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state-&gt;sagv_calculated =3D true;<b=
r>
&gt; &#43;<br>
&gt; &#43;out:<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return bw_state-&gt;can_sagv;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; /*<br>
&gt;&nbsp;&nbsp; * Calculate initial DBuf slice offset, based on slice size=
<br>
&gt;&nbsp;&nbsp; * and mask(i.e if slice size is 1024 and second slice is e=
nabled<br>
&gt; @@ -4042,6 &#43;4161,7 @@ skl_cursor_allocation(const struct intel_crt=
c_state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; u32 latency =3D dev_priv-&gt;wm.skl_latency[level];<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; skl_compute_plane_wm(crtc_state, level, latency, &amp;w=
p, &amp;wm, &amp;wm);<br>
&gt; &#43;<br>
<br>
Spurious whitespace.<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (wm.min_ddb_alloc =3D=3D U16_MAX)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<=
br>
&gt;&nbsp; <br>
&gt; @@ -4556,9 &#43;4676,83 @@ skl_plane_wm_level(const struct intel_crtc_=
state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_plane_wm *w=
m =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id];<br=
>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!level) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_pipe_wm *pipe_wm =3D &amp;crtc_state-&gt;wm.skl.op=
timal;<br>
<br>
Why is this here when &amp;crtc_state-&gt;wm.skl.optimal is already being u=
sed<br>
higher up?<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (pipe_wm-&gt;can_sagv)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return color_plane =
=3D=3D 0 ? &amp;wm-&gt;sagv_wm0 : &amp;wm-&gt;uv_sagv_wm0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return color_plane =3D=3D 0 =
? &amp;wm-&gt;wm[level] : &amp;wm-&gt;uv_wm[level];<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;static bool<br>
&gt; &#43;tgl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_state)<=
br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_crtc *crtc =3D crtc_state-&gt=
;uapi.crtc;<br>
<br>
Pls don't use the annoying drm_ types.<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(crtc-&gt;dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *intel_crtc =3D to_int=
el_crtc(crtc);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_ddb_entry *alloc =3D &amp;crt=
c_state-&gt;wm.skl.ddb;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u16 alloc_size;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u64 total_data_rate;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; enum plane_id plane_id;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int num_active;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u64 plane_data_rate[I915_MAX_PLANES] =3D=
 {};<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u32 blocks;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * If pipe is not active it can't a=
ffect SAGV rejection<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Checking it here is needed to le=
ave only cases when<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * alloc_size is 0 for any other re=
asons, except inactive<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * pipe. As inactive pipe is fine, =
however having no ddb<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * space available is already probl=
ematic - so need to<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * to separate those.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
<br>
Can't figure out what this comment is trying to say or why it's here.<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (!crtc_state-&gt;hw.active)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return true;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * No need to check gen here, we ca=
ll this only for gen12<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; total_data_rate =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; icl_get_total_relative_data_rate(crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane_data_rate);<b=
r>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; skl_ddb_get_pipe_allocation_limits(dev_p=
riv, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; total_data_rate,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; alloc, &amp;num_active);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; alloc_size =3D skl_ddb_entry_size(alloc)=
;<br>
<br>
Don't we already have this in the crtc state?<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (alloc_size =3D=3D 0)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return false;<br>
<br>
I don't think that can happen.<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Do check if we can fit L0 &#43; =
sagv_block_time and<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * disable SAGV if we can't.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; blocks =3D 0;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(intel_crtc, pl=
ane_id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * The only place, where we can't use skl_plane_wm_level<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * accessor, because if actually calls intel_can_enable_sagv<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; * which depends on that function.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_plane_wm *wm =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt=
;wm.skl.optimal.planes[plane_id];<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; blocks &#43;=3D wm-&gt;sagv_wm0.min_ddb_alloc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; blocks &#43;=3D wm-&gt;uv_sagv_wm0.min_ddb_alloc;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (blocks &gt; alloc_size) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot=
;Not enough ddb blocks(%d&lt;%d) for SAGV on pipe %c\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; alloc_size=
, blocks, pipe_name(intel_crtc-&gt;pipe));<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot;%d total blocks requ=
ired for SAGV, ddb entry size %d\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks, alloc_size);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return true;<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static int<br>
&gt;&nbsp; skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)<br>
&gt;&nbsp; {<br>
&gt; @@ -5140,11 &#43;5334,19 @@ static void skl_compute_plane_wm(const str=
uct intel_crtc_state *crtc_state,<br>
&gt;&nbsp; static void<br>
&gt;&nbsp; skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_params *wm_params,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level *levels)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_plane_wm *plane_wm,<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool yuv)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev=
_priv =3D to_i915(crtc_state-&gt;uapi.crtc-&gt;dev);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int level, max_level =3D ilk=
_wm_max_level(dev_priv);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Check which kind of plane is it =
and based on that calculate<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * correspondent WM levels.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level *levels =3D yuv ? pl=
ane_wm-&gt;uv_wm : plane_wm-&gt;wm;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level *result_=
prev =3D &amp;levels[0];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct skl_wm_level *sagv_wm =3D yuv ?<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;plane_wm-&gt;uv_sagv_wm0 : &amp;plane_wm-=
&gt;sagv_wm0;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=
=3D max_level; level&#43;&#43;) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct skl_wm_level *result =3D &amp;levels[level];<br>
&gt; @@ -5155,6 &#43;5357,27 @@ skl_compute_wm_levels(const struct intel_cr=
tc_state *crtc_state,<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; result_prev =3D result;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * For Gen12 if it is an L0 we need=
 to also<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * consider sagv_block_time when ca=
lculating<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * L0 watermark - we will need that=
 when making<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * a decision whether enable SAGV o=
r not.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * For older gens we agreed to copy=
 L0 value for<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * compatibility.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if ((INTEL_GEN(dev_priv) &gt;=3D 12)) {<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; u32 latency =3D dev_priv-&gt;wm.skl_latency[0];<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; latency &#43;=3D dev_priv-&gt;sagv_block_time_us;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; skl_compute_plane_wm(crtc_state, 0, latency,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_params, &amp;=
levels[0],<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sagv_wm);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; DRM_DEBUG_KMS(&quot;%d L0 blocks required for SAGV vs %d for non-SA=
GV\n&quot;,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; sagv_wm-&gt;min_ddb_alloc, levels[0].min_ddb_alloc);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; } else {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; /* Since all members are POD */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; *sagv_wm =3D levels[0];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
<br>
I was thinking more along the lines of<br>
<br>
&nbsp; skl_compute_wm_levels();<br>
&nbsp; skl_compute_transition_wm();<br>
&#43; skl_compute_sagv_wm();<br>
<br>
<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp; static void skl_compute_transition_wm(const struct intel_crtc_st=
ate *crtc_state,<br>
&gt; @@ -5237,7 &#43;5460,7 @@ static int skl_build_plane_wm_single(struct =
intel_crtc_state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_wm_levels(crtc_state, &amp;wm_pa=
rams, wm-&gt;wm);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_wm_levels(crtc_state, &amp;w=
m_params, wm, false);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_transition_wm(cr=
tc_state, &amp;wm_params, wm);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt; @@ -5259,7 &#43;5482,7 @@ static int skl_build_plane_wm_uv(struct inte=
l_crtc_state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_wm_levels(crtc_state, &amp;wm_pa=
rams, wm-&gt;uv_wm);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; skl_compute_wm_levels(crtc_state, &amp;w=
m_params, wm, true);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;&nbsp; }<br>
&gt; @@ -5598,9 &#43;5821,25 @@ skl_print_wm_changes(struct intel_atomic_st=
ate *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_priv-&gt;drm, crt=
c, plane) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum pl=
ane_id plane_id =3D plane-&gt;id;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const s=
truct skl_plane_wm *old_wm, *new_wm;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *old_wm_level, *new_wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 old_plane_res_l=
, new_plane_res_l;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8&nbsp; old_plane_=
res_b, new_plane_res_b;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 old_min_ddb_all=
oc, new_min_ddb_alloc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int color_plane =3D=
 0;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm =
=3D &amp;old_pipe_wm-&gt;planes[plane_id];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm =
=3D &amp;new_pipe_wm-&gt;planes[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm_level =3D sk=
l_plane_wm_level(old_crtc_state, plane_id, 0, color_plane);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm_level =3D sk=
l_plane_wm_level(new_crtc_state, plane_id, 0, color_plane);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_plane_res_l =3D=
 old_wm_level-&gt;plane_res_l;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_plane_res_b =3D=
 old_wm_level-&gt;plane_res_b;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_plane_res_l =3D=
 new_wm_level-&gt;plane_res_l;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_plane_res_b =3D=
 new_wm_level-&gt;plane_res_b;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_min_ddb_alloc =
=3D old_wm_level-&gt;min_ddb_alloc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_min_ddb_alloc =
=3D new_wm_level-&gt;min_ddb_alloc;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (skl=
_plane_wm_equals(dev_priv, old_wm, new_wm))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<br>
&gt; @@ -5624,7 &#43;5863,7 @@ skl_print_wm_changes(struct intel_atomic_sta=
te *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;[PLA=
NE:%d:%s]&nbsp;&nbsp; lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &quot; -&gt; %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n&quot=
;,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane-&gt;=
base.base.id, plane-&gt;base.name,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_wm-&gt;wm[0].ign=
ore_lines), old_wm-&gt;wm[0].plane_res_l,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_wm-&gt;wm[0]=
.ignore_lines), old_plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_=
wm-&gt;wm[1].ignore_lines), old_wm-&gt;wm[1].plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_=
wm-&gt;wm[2].ignore_lines), old_wm-&gt;wm[2].plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_=
wm-&gt;wm[3].ignore_lines), old_wm-&gt;wm[3].plane_res_l,<br>
&gt; @@ -5634,7 &#43;5873,7 @@ skl_print_wm_changes(struct intel_atomic_sta=
te *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_=
wm-&gt;wm[7].ignore_lines), old_wm-&gt;wm[7].plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(old_=
wm-&gt;trans_wm.ignore_lines), old_wm-&gt;trans_wm.plane_res_l,<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(new_wm-&gt;wm[0].ign=
ore_lines), new_wm-&gt;wm[0].plane_res_l,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(new_wm-&gt;wm[0]=
.ignore_lines), new_plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(new_=
wm-&gt;wm[1].ignore_lines), new_wm-&gt;wm[1].plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(new_=
wm-&gt;wm[2].ignore_lines), new_wm-&gt;wm[2].plane_res_l,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enast(new_=
wm-&gt;wm[3].ignore_lines), new_wm-&gt;wm[3].plane_res_l,<br>
&gt; @@ -5648,12 &#43;5887,12 @@ skl_print_wm_changes(struct intel_atomic_s=
tate *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;[PLA=
NE:%d:%s]&nbsp; blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; -&g=
t; %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n&quot;,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane-&gt;=
base.base.id, plane-&gt;base.name,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt;wm[0].plane_res=
_b, old_wm-&gt;wm[1].plane_res_b,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_plane_res_b, old_w=
m-&gt;wm[1].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[2].plane_res_b, old_wm-&gt;wm[3].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[4].plane_res_b, old_wm-&gt;wm[5].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[6].plane_res_b, old_wm-&gt;wm[7].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;trans_wm.plane_res_b,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt;wm[0].plane_res=
_b, new_wm-&gt;wm[1].plane_res_b,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_plane_res_b, new_w=
m-&gt;wm[1].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[2].plane_res_b, new_wm-&gt;wm[3].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[4].plane_res_b, new_wm-&gt;wm[5].plane_res_b,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[6].plane_res_b, new_wm-&gt;wm[7].plane_res_b,<br>
&gt; @@ -5663,12 &#43;5902,12 @@ skl_print_wm_changes(struct intel_atomic_s=
tate *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;[PLA=
NE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot; -&g=
t; %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n&quot;,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane-&gt;=
base.base.id, plane-&gt;base.name,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt;wm[0].min_ddb_a=
lloc, old_wm-&gt;wm[1].min_ddb_alloc,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_min_ddb_alloc, old=
_wm-&gt;wm[1].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[2].min_ddb_alloc, old_wm-&gt;wm[3].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[4].min_ddb_alloc, old_wm-&gt;wm[5].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;wm[6].min_ddb_alloc, old_wm-&gt;wm[7].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_wm-&gt=
;trans_wm.min_ddb_alloc,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt;wm[0].min_ddb_a=
lloc, new_wm-&gt;wm[1].min_ddb_alloc,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_min_ddb_alloc, new=
_wm-&gt;wm[1].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[2].min_ddb_alloc, new_wm-&gt;wm[3].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[4].min_ddb_alloc, new_wm-&gt;wm[5].min_ddb_alloc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_wm-&gt=
;wm[6].min_ddb_alloc, new_wm-&gt;wm[7].min_ddb_alloc,<br>
<br>
Here too I think the sagv wm should be treated more or less like the<br>
transition wm (ie. just printed as an extra).<br>
<br>
&gt; @@ -5829,6 &#43;6068,10 @@ skl_compute_wm(struct intel_atomic_state *s=
tate)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
ret;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_compute_sagv_mask(state);<=
br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return ret;<br>
<br>
This seems too early. We haven't even computed the ddb yet.<br>
<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D skl_compute_ddb(stat=
e);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return ret;<br>
&gt; @@ -5960,6 &#43;6203,9 @@ void skl_pipe_wm_get_hw_state(struct intel_c=
rtc *crtc,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; val =3D I915_READ(CUR_WM(pipe, lev=
el));<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_wm_=
level_from_reg_val(val, &amp;wm-&gt;wm[level]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (level =3D=3D 0)=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; memcpy(&amp;wm-&gt;sagv_wm0, &amp;wm-&gt;wm[le=
vel],<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size=
of(struct skl_wm_level));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (plane_id !=3D PLANE_CURSOR)<br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/in=
tel_pm.h<br>
&gt; index d60a85421c5a..65743a4cbcf6 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.h<br>
&gt; @@ -42,6 &#43;42,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc =
*crtc,<br>
&gt;&nbsp; void g4x_wm_sanitize(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; void vlv_wm_sanitize(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; bool intel_can_enable_sagv(struct intel_atomic_state *state);<br=
>
&gt; &#43;bool intel_has_sagv(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; int intel_enable_sagv(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; int intel_disable_sagv(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; bool skl_wm_level_equals(const struct skl_wm_level *l1,<br>
&gt; -- <br>
&gt; 2.24.1.485.gad05a3d8e5<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font>
</body>
</html>

--_000_4aa56e04b7534ec5b8764cc512250604intelcom_--

--===============1642768586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1642768586==--
