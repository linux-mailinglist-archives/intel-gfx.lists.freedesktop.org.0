Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A61745E7
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 10:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132446E196;
	Sat, 29 Feb 2020 09:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 086866E196
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 09:34:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Feb 2020 01:34:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,499,1574150400"; 
 d="scan'208,217";a="227803346"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga007.jf.intel.com with ESMTP; 29 Feb 2020 01:34:24 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sat, 29 Feb 2020 09:34:23 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 29 Feb 2020 09:34:23 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Sat, 29 Feb 2020 09:34:23 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v18 4/8] drm/i915: Introduce more *_state_changed
 indicators
Thread-Index: AQHV6ygcvVP4sP4SqEO3nuWy072ucqgsAYGAgAM5qoCAARfBAIAAeosAgAEdFX4=
Date: Sat, 29 Feb 2020 09:34:23 +0000
Message-ID: <ceb355b86ad84eeba8817b53713fe27a@intel.com>
References: <20200224153240.9047-5-stanislav.lisovskiy@intel.com>
 <20200225145733.32043-1-stanislav.lisovskiy@intel.com>
 <20200227161243.GR13686@intel.com>
 <e5fbc6ec99cc32a123f90f48954b0ebc6c2061fc.camel@intel.com>,
 <20200228161236.GH13686@intel.com>
In-Reply-To: <20200228161236.GH13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v18 4/8] drm/i915: Introduce more
 *_state_changed indicators
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
Content-Type: multipart/mixed; boundary="===============0476079982=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0476079982==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ceb355b86ad84eeba8817b53713fe27aintelcom_"

--_000_ceb355b86ad84eeba8817b53713fe27aintelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> But this patch is not about that - it is about how we signal/determine
>> that some change has to be written at commit stage.
>>As you remember when we were discussed offline, I just wanted to have
>> some expicit way to mark if some global state subsystem had changed,
>>without having to do any additional checks, because imho all the checks
>> we should do during atomic check, while commit simply applies what has
>> to be applied.
>>
>>If you are really against having those boolean or any other way to be
>>able so simply mark some stage object "dirty" (just like mem pages
>>analogy) then would vote at least to have some helper functions to do
>>that.
>>i.e smth like:
>>
>>bool pipe_sagv_mask_changed(..)


>This is just a !=3D, no? Don't see a function really making it any more cl=
ear.


it is more compact at least(imho) and also it makes it more clear why

we do this "!=3D".

>>
>> bool ddb_state_changed(...)

>So far I don't see any real need to check for that.


The idea behind this is that we need to recompute SAGV only

when either active pipes had changed or wm/ddb allocations had changed(lets

say we now use a different mode or less planes and so on).


Currently we have _no_ flag that indicates if ddb/wm had changed and

recomputing SAGV everytime "just in case" looks redundant.


To me it looks easier rather than having comparisons with implicit

meaning.

Would be even nicer to unify that idea in a sense that any global object

like bw_state, dbuf_state can be checked if it's state had changed and to

have it as some helper functions for that in intel_global_state.c or someth=
ing like that.



If you can propose a better way, please do: I think you got the idea,

what I mean.

________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Friday, February 28, 2020 6:12:36 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Roper, Matthew D
Subject: Re: [PATCH v18 4/8] drm/i915: Introduce more *_state_changed indic=
ators

On Fri, Feb 28, 2020 at 08:56:58AM +0000, Lisovskiy, Stanislav wrote:
> On Thu, 2020-02-27 at 18:12 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Feb 25, 2020 at 04:57:33PM +0200, Stanislav Lisovskiy wrote:
> > > The reasoning behind this is such that current dependencies
> > > in the code are rather implicit in a sense, we have to constantly
> > > check a bunch of different bits like state->modeset,
> > > state->active_pipe_changes, which sometimes can indicate counter
> > > intuitive changes.
> > >
> > > By introducing more fine grained state change tracking we achieve
> > > better readability and dependency maintenance for the code.
> > >
> > > For example it is no longer needed to evaluate active_pipe_changes
> > > to understand if there were changes for wm/ddb - lets just have
> > > a correspondent bit in a state, called ddb_state_changed.
> > >
> > > active_pipe_changes just indicate whether there was some pipe added
> > > or removed. Then we evaluate if wm/ddb had been changed.
> > > Same for sagv/bw state. ddb changes may or may not affect if out
> > > bandwidth constraints have been changed.
> > >
> > > v2: Add support for older Gens in order not to introduce
> > > regressions
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  2 ++
> > >  drivers/gpu/drm/i915/display/intel_bw.c       | 28 ++++++++++++++-
> > > -
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 16 ++++++----
> > >  .../drm/i915/display/intel_display_types.h    | 32 ++++++++++++---
> > > ----
> > >  drivers/gpu/drm/i915/intel_pm.c               |  5 ++-
> > >  5 files changed, 62 insertions(+), 21 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > index d043057d2fa0..0db9c66d3c0f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -525,6 +525,8 @@ void intel_atomic_state_clear(struct
> > > drm_atomic_state *s)
> > >    state->dpll_set =3D state->modeset =3D false;
> > >    state->global_state_changed =3D false;
> > >    state->active_pipes =3D 0;
> > > + state->ddb_state_changed =3D false;
> > > + state->bw_state_changed =3D false;
> >
> > Not really liking these.
> >
> > After some pondering I was thinking along the lines of something
> > simple
> > like this:
> >
> > struct bw_state {
> >      u8 sagv_reject;
> > };
> >
> > bw_check()
> > {
> >      for_each_crtc_in_state() {
> >              if (sagv_possible(crtc_state))
> >                      new->sagv_reject &=3D ~BIT(pipe);
> >              else
> >                      new->sagv_reject |=3D BIT(pipe);
> >      }
> >
> >      calculate new->qgv_mask
> > }
>
> This is exactly what's done in the next patch, except
> that I store pipe, which are allowed to have SAGV, i.e:

I think inverted mask idea leads to neater code because then we
don't have to care which pipes are actually present in the hw
and which are fused off/not present:

sagv_reject =3D=3D 0 -> SAGV possible
sagv_reject !=3D 0 -> SAGV not possible

>
>  struct intel_bw_state {
>        struct intel_global_state base;
>
> +     /*
> +      * Contains a bit mask, used to determine, whether
> correspondent
> +      * pipe allows SAGV or not.
> +      */
> +     u8 pipe_sagv_mask;
> +
> +     /*
> +      * Used to determine if we already had calculated
> +      * SAGV mask for this state once.
> +      */
> +     bool sagv_calculated;
> +
> +     /*
> +      * Contains final SAGV decision based on current mask,
> +      * to prevent doing the same job over and over again.
> +      */
> +     bool can_sagv;
> +
>
> Also the mask is calculated almost exactly same way:
>
> static void icl_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +     struct intel_crtc *crtc;
> +     struct intel_crtc_state *new_crtc_state;
> +     int i;
> +     struct intel_bw_state *new_bw_state =3D
> intel_bw_get_state(state);
> +
> +     if (IS_ERR(new_bw_state)) {
> +             WARN(1, "Could not get bw_state\n");
> +             return;
> +     }
> +
> +     for_each_new_intel_crtc_in_state(state, crtc,
> +                                      new_crtc_state, i) {
> +             if (skl_can_enable_sagv_on_pipe(state, crtc->pipe))
> +                     new_bw_state->pipe_sagv_mask |=3D BIT(crtc-
> >pipe);
> +             else
> +                     new_bw_state->pipe_sagv_mask &=3D ~BIT(crtc-
> >pipe);
> +     }
> +}
>
> But this patch is not about that - it is about how we signal/determine
> that some change has to be written at commit stage.
> As you remember when we were discussed offline, I just wanted to have
> some expicit way to mark if some global state subsystem had changed,
> without having to do any additional checks, because imho all the checks
> we should do during atomic check, while commit simply applies what has
> to be applied.
>
> If you are really against having those boolean or any other way to be
> able so simply mark some stage object "dirty" (just like mem pages
> analogy) then would vote at least to have some helper functions to do
> that.
> i.e smth like:
>
> bool pipe_sagv_mask_changed(..)

This is just a !=3D, no? Don't see a function really making it any more cle=
ar.

>
> bool ddb_state_changed(...)

So far I don't see any real need to check for that.

>
> Stan
>
> >
> > >  }
> > >
> > >  struct intel_crtc_state *
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index bdad7476dc7b..d5be603b8b03 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -424,9 +424,27 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >    struct intel_crtc *crtc;
> > >    int i, ret;
> > >
> > > - /* FIXME earlier gens need some checks too */
> > > - if (INTEL_GEN(dev_priv) < 11)
> > > + /*
> > > +  * For earlier Gens let's consider bandwidth changed if ddb
> > > requirements,
> > > +  * has been changed.
> > > +  */
> > > + if (INTEL_GEN(dev_priv) < 11) {
> > > +         if (state->ddb_state_changed) {
> > > +                 bw_state =3D intel_bw_get_state(state);
> > > +                 if (IS_ERR(bw_state))
> > > +                         return PTR_ERR(bw_state);
> > > +
> > > +                 ret =3D intel_atomic_lock_global_state(&bw_state-
> > > >base);
> > > +                 if (ret)
> > > +                         return ret;
> > > +
> > > +                 DRM_DEBUG_KMS("Marking bw state changed for
> > > atomic state %p\n",
> > > +                               state);
> > > +
> > > +                 state->bw_state_changed =3D true;
> > > +         }
> > >            return 0;
> > > + }
> > >
> > >    for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state,
> > >                                        new_crtc_state, i) {
> > > @@ -447,7 +465,7 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >                old_active_planes =3D=3D new_active_planes)
> > >                    continue;
> > >
> > > -         bw_state  =3D intel_bw_get_state(state);
> > > +         bw_state =3D intel_bw_get_state(state);
> > >            if (IS_ERR(bw_state))
> > >                    return PTR_ERR(bw_state);
> > >
> > > @@ -468,6 +486,10 @@ int intel_bw_atomic_check(struct
> > > intel_atomic_state *state)
> > >    if (ret)
> > >            return ret;
> > >
> > > + DRM_DEBUG_KMS("Marking bw state changed for atomic state %p\n",
> > > state);
> > > +
> > > + state->bw_state_changed =3D true;
> > > +
> > >    data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
> > >    num_active_planes =3D intel_bw_num_active_planes(dev_priv,
> > > bw_state);
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 3031e64ee518..137fb645097a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -15540,8 +15540,10 @@ static void
> > > intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >             * SKL workaround: bspec recommends we disable the SAGV
> > > when we
> > >             * have more then one pipe enabled
> > >             */
> > > -         if (!intel_can_enable_sagv(state))
> > > -                 intel_disable_sagv(dev_priv);
> > > +         if (state->bw_state_changed) {
> > > +                 if (!intel_can_enable_sagv(state))
> > > +                         intel_disable_sagv(dev_priv);
> > > +         }
> > >
> > >            intel_modeset_verify_disabled(dev_priv, state);
> > >    }
> > > @@ -15565,7 +15567,7 @@ static void intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > >            intel_encoders_update_prepare(state);
> > >
> > >    /* Enable all new slices, we might need */
> > > - if (state->modeset)
> > > + if (state->ddb_state_changed)
> > >            icl_dbuf_slice_pre_update(state);
> > >
> > >    /* Now enable the clocks, plane, pipe, and connectors that we
> > > set up. */
> > > @@ -15622,7 +15624,7 @@ static void intel_atomic_commit_tail(struct
> > > intel_atomic_state *state)
> > >    }
> > >
> > >    /* Disable all slices, we don't need */
> > > - if (state->modeset)
> > > + if (state->ddb_state_changed)
> > >            icl_dbuf_slice_post_update(state);
> > >
> > >    for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state, new_crtc_state, i) {
> > > @@ -15641,8 +15643,10 @@ static void
> > > intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >    if (state->modeset)
> > >            intel_verify_planes(state);
> > >
> > > - if (state->modeset && intel_can_enable_sagv(state))
> > > -         intel_enable_sagv(dev_priv);
> > > + if (state->bw_state_changed) {
> > > +         if (intel_can_enable_sagv(state)
> > > +                 intel_enable_sagv(dev_priv);
> > > + }
> > >
> > >    drm_atomic_helper_commit_hw_done(&state->base);
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 0d8a64305464..12b47ba3c68d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -471,16 +471,6 @@ struct intel_atomic_state {
> > >
> > >    bool dpll_set, modeset;
> > >
> > > - /*
> > > -  * Does this transaction change the pipes that are
> > > active?  This mask
> > > -  * tracks which CRTC's have changed their active state at the
> > > end of
> > > -  * the transaction (not counting the temporary disable during
> > > modesets).
> > > -  * This mask should only be non-zero when intel_state->modeset
> > > is true,
> > > -  * but the converse is not necessarily true; simply changing a
> > > mode may
> > > -  * not flip the final active status of any CRTC's
> > > -  */
> > > - u8 active_pipe_changes;
> > > -
> > >    u8 active_pipes;
> > >
> > >    struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
> > > @@ -494,10 +484,30 @@ struct intel_atomic_state {
> > >    bool rps_interactive;
> > >
> > >    /*
> > > -  * active_pipes
> > > +  * active pipes
> > >     */
> > >    bool global_state_changed;
> > >
> > > + /*
> > > +  * Does this transaction change the pipes that are
> > > active?  This mask
> > > +  * tracks which CRTC's have changed their active state at the
> > > end of
> > > +  * the transaction (not counting the temporary disable during
> > > modesets).
> > > +  * This mask should only be non-zero when intel_state->modeset
> > > is true,
> > > +  * but the converse is not necessarily true; simply changing a
> > > mode may
> > > +  * not flip the final active status of any CRTC's
> > > +  */
> > > + u8 active_pipe_changes;
> > > +
> > > + /*
> > > +  * More granular change indicator for ddb changes
> > > +  */
> > > + bool ddb_state_changed;
> > > +
> > > + /*
> > > +  * More granular change indicator for bandwidth state changes
> > > +  */
> > > + bool bw_state_changed;
> > > +
> > >    /* Number of enabled DBuf slices */
> > >    u8 enabled_dbuf_slices_mask;
> > >
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > b/drivers/gpu/drm/i915/intel_pm.c
> > > index 409b91c17a7f..ac4b317ea1bf 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3894,7 +3894,7 @@ skl_ddb_get_pipe_allocation_limits(struct
> > > drm_i915_private *dev_priv,
> > >     * that changes the active CRTC list or do modeset would need
> > > to
> > >     * grab _all_ crtc locks, including the one we currently hold.
> > >     */
> > > - if (!intel_state->active_pipe_changes && !intel_state->modeset)
> > > {
> > > + if (!intel_state->ddb_state_changed) {
> > >            /*
> > >             * alloc may be cleared by clear_intel_crtc_state,
> > >             * copy from old state to be sure
> > > @@ -5787,6 +5787,9 @@ static int skl_wm_add_affected_planes(struct
> > > intel_atomic_state *state,
> > >                    return PTR_ERR(plane_state);
> > >
> > >            new_crtc_state->update_planes |=3D BIT(plane_id);
> > > +
> > > +         DRM_DEBUG_KMS("Marking ddb state changed for atomic
> > > state %p\n", state);
> > > +         state->ddb_state_changed =3D true;
> > >    }
> > >
> > >    return 0;
> > > --
> > > 2.24.1.485.gad05a3d8e5
> >
> >

--
Ville Syrj=E4l=E4
Intel

--_000_ceb355b86ad84eeba8817b53713fe27aintelcom_
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
t; font-size:13.3333px">&gt;&gt; But this patch is not about that - it is a=
bout how we signal/determine</span><br style=3D"color:rgb(33,33,33); font-f=
amily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,A=
rial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; that some change has to be written at commit =
stage.</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_norm=
al,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,=
EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;As you remember when we were discussed offline=
, I just wanted to have</span><br style=3D"color:rgb(33,33,33); font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; some expicit way to mark if some global state=
 subsystem had changed,</span><br style=3D"color:rgb(33,33,33); font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;without having to do any additional checks, be=
cause imho all the checks</span><br style=3D"color:rgb(33,33,33); font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; we should do during atomic check, while commi=
t simply applies what has</span><br style=3D"color:rgb(33,33,33); font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; to be applied.</span><br style=3D"color:rgb(3=
3,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe W=
P&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;</span><br style=3D"color:rgb(33,33,33); font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;If you are really against having those boolean=
 or any other way to be</span><br style=3D"color:rgb(33,33,33); font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;able so simply mark some stage object &quot;di=
rty&quot; (just like mem pages</span><br style=3D"color:rgb(33,33,33); font=
-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma=
,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;analogy) then would vote at least to have some=
 helper functions to do</span><br style=3D"color:rgb(33,33,33); font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;that.</span><br style=3D"color:rgb(33,33,33); =
font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Ta=
homa,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;i.e smth like:</span><br style=3D"color:rgb(33=
,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP=
&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;</span><br style=3D"color:rgb(33,33,33); font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;bool pipe_sagv_mask_changed(..)</span><br styl=
e=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quo=
t;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:=
13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;This is just a !=3D, no? Don't see a function r=
eally making it any more clear.</span></p>
<p><span style=3D"font-size:12pt"><br>
</span></p>
<p><span style=3D"font-size:12pt">it is more compact at least(imho) and als=
o it makes it more clear why</span><br>
</p>
<p>we do this &quot;!=3D&quot;.&nbsp;&nbsp;</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;&gt;</span><br style=3D"color:rgb(33,33,33); fo=
nt-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Taho=
ma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; bool ddb_state_changed(...)</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;So far I don't see any real need to check for that=
.</span><br>
</p>
<p><br>
</p>
<p>The idea behind this is that we need to recompute SAGV only</p>
<p>when either active pipes had changed or wm/ddb allocations had changed(l=
ets</p>
<p>say we now use a different mode or less planes and so on).</p>
<p><br>
</p>
<p>Currently we have _no_ flag that indicates if ddb/wm had changed and&nbs=
p;</p>
<p>recomputing SAGV everytime &quot;just in case&quot; looks redundant.</p>
<p><br>
</p>
<p>To me it looks easier rather than having comparisons with implicit</p>
<p>meaning.&nbsp;&nbsp;</p>
<p><span style=3D"font-size:12pt">Would be even nicer to unify that idea in=
 a sense that any global object</span></p>
<p><span style=3D"font-size:12pt">like bw_state, dbuf_state can be checked =
if it's state had changed and to</span></p>
<p><span style=3D"font-size:12pt">have it as some helper functions for that=
 in intel_global_state.c or something like that.</span></p>
<p><span style=3D"font-size:12pt">&nbsp;</span></p>
<p><span style=3D"font-size:12pt">If you can propose a better way, please d=
o: I think you got the idea,</span></p>
<p><span style=3D"font-size:12pt">what I mean.</span></p>
<div id=3D"x_Signature">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt"><br>
</span></font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrj=E4l=E4 &=
lt;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Friday, February 28, 2020 6:12:36 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v18 4/8] drm/i915: Introduce more *_state_change=
d indicators</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Fri, Feb 28, 2020 at 08:56:58AM &#43;0000, Liso=
vskiy, Stanislav wrote:<br>
&gt; On Thu, 2020-02-27 at 18:12 &#43;0200, Ville Syrj=E4l=E4 wrote:<br>
&gt; &gt; On Tue, Feb 25, 2020 at 04:57:33PM &#43;0200, Stanislav Lisovskiy=
 wrote:<br>
&gt; &gt; &gt; The reasoning behind this is such that current dependencies<=
br>
&gt; &gt; &gt; in the code are rather implicit in a sense, we have to const=
antly<br>
&gt; &gt; &gt; check a bunch of different bits like state-&gt;modeset,<br>
&gt; &gt; &gt; state-&gt;active_pipe_changes, which sometimes can indicate =
counter<br>
&gt; &gt; &gt; intuitive changes.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; By introducing more fine grained state change tracking we ac=
hieve<br>
&gt; &gt; &gt; better readability and dependency maintenance for the code.<=
br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; For example it is no longer needed to evaluate active_pipe_c=
hanges<br>
&gt; &gt; &gt; to understand if there were changes for wm/ddb - lets just h=
ave<br>
&gt; &gt; &gt; a correspondent bit in a state, called ddb_state_changed.<br=
>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; active_pipe_changes just indicate whether there was some pip=
e added<br>
&gt; &gt; &gt; or removed. Then we evaluate if wm/ddb had been changed.<br>
&gt; &gt; &gt; Same for sagv/bw state. ddb changes may or may not affect if=
 out<br>
&gt; &gt; &gt; bandwidth constraints have been changed.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; v2: Add support for older Gens in order not to introduce<br>
&gt; &gt; &gt; regressions<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@i=
ntel.com&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;&nbsp; drivers/gpu/drm/i915/display/intel_atomic.c&nbsp;&nbsp=
; |&nbsp; 2 &#43;&#43;<br>
&gt; &gt; &gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.c&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; | 28 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#4=
3;&#43;&#43;&#43;&#43;-<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt;&nbsp; drivers/gpu/drm/i915/display/intel_display.c&nbsp; | 1=
6 &#43;&#43;&#43;&#43;&#43;&#43;----<br>
&gt; &gt; &gt;&nbsp; .../drm/i915/display/intel_display_types.h&nbsp;&nbsp;=
&nbsp; | 32 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;---=
<br>
&gt; &gt; &gt; ----<br>
&gt; &gt; &gt;&nbsp; drivers/gpu/drm/i915/intel_pm.c&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 5 &#4=
3;&#43;-<br>
&gt; &gt; &gt;&nbsp; 5 files changed, 62 insertions(&#43;), 21 deletions(-)=
<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_atomic.c<br>
&gt; &gt; &gt; index d043057d2fa0..0db9c66d3c0f 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_atomic.c<br>
&gt; &gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_atomic.=
c<br>
&gt; &gt; &gt; @@ -525,6 &#43;525,8 @@ void intel_atomic_state_clear(struct=
<br>
&gt; &gt; &gt; drm_atomic_state *s)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; state-&gt;dpll_set =3D state-&gt;modeset =
=3D false;<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; state-&gt;global_state_changed =3D false;<=
br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; state-&gt;active_pipes =3D 0;<br>
&gt; &gt; &gt; &#43; state-&gt;ddb_state_changed =3D false;<br>
&gt; &gt; &gt; &#43; state-&gt;bw_state_changed =3D false;<br>
&gt; &gt; <br>
&gt; &gt; Not really liking these.<br>
&gt; &gt; <br>
&gt; &gt; After some pondering I was thinking along the lines of something<=
br>
&gt; &gt; simple<br>
&gt; &gt; like this:<br>
&gt; &gt; <br>
&gt; &gt; struct bw_state {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 sagv_reject;<br>
&gt; &gt; };<br>
&gt; &gt; <br>
&gt; &gt; bw_check()<br>
&gt; &gt; {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_crtc_in_state() {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; if (sagv_possible(crtc_state))<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;sagv_r=
eject &amp;=3D ~BIT(pipe);<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; else<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new-&gt;sagv_r=
eject |=3D BIT(pipe);<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; <br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; calculate new-&gt;qgv_mask<br>
&gt; &gt; }<br>
&gt; <br>
&gt; This is exactly what's done in the next patch, except <br>
&gt; that I store pipe, which are allowed to have SAGV, i.e:<br>
<br>
I think inverted mask idea leads to neater code because then we<br>
don't have to care which pipes are actually present in the hw<br>
and which are fused off/not present:<br>
<br>
sagv_reject =3D=3D 0 -&gt; SAGV possible<br>
sagv_reject !=3D 0 -&gt; SAGV not possible<br>
<br>
&gt; <br>
&gt;&nbsp; struct intel_bw_state {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state ba=
se;<br>
&gt;&nbsp; <br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Contains a bit mask, used to det=
ermine, whether<br>
&gt; correspondent<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * pipe allows SAGV or not.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; u8 pipe_sagv_mask;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Used to determine if we already =
had calculated<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * SAGV mask for this state once.<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bool sagv_calculated;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Contains final SAGV decision bas=
ed on current mask,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * to prevent doing the same job ov=
er and over again.<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bool can_sagv;<br>
&gt; &#43;<br>
&gt; <br>
&gt; Also the mask is calculated almost exactly same way:<br>
&gt; <br>
&gt; static void icl_compute_sagv_mask(struct intel_atomic_state *state)<br=
>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_crtc_state *new_crtc_state;=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_bw_state *new_bw_state =3D<=
br>
&gt; intel_bw_get_state(state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(new_bw_state)) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; WARN(1, &quot;Could not get bw_state\n&quot;);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_new_intel_crtc_in_state(state, =
crtc,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; new_crtc_state, i) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (skl_can_enable_sagv_on_pipe(state, crtc-&gt;pipe))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;pi=
pe_sagv_mask |=3D BIT(crtc-<br>
&gt; &gt;pipe);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; else<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; new_bw_state-&gt;pi=
pe_sagv_mask &amp;=3D ~BIT(crtc-<br>
&gt; &gt;pipe);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &#43;}<br>
&gt; <br>
&gt; But this patch is not about that - it is about how we signal/determine=
<br>
&gt; that some change has to be written at commit stage.<br>
&gt; As you remember when we were discussed offline, I just wanted to have<=
br>
&gt; some expicit way to mark if some global state subsystem had changed,<b=
r>
&gt; without having to do any additional checks, because imho all the check=
s<br>
&gt; we should do during atomic check, while commit simply applies what has=
<br>
&gt; to be applied.<br>
&gt; <br>
&gt; If you are really against having those boolean or any other way to be<=
br>
&gt; able so simply mark some stage object &quot;dirty&quot; (just like mem=
 pages<br>
&gt; analogy) then would vote at least to have some helper functions to do<=
br>
&gt; that. <br>
&gt; i.e smth like:<br>
&gt; <br>
&gt; bool pipe_sagv_mask_changed(..)<br>
<br>
This is just a !=3D, no? Don't see a function really making it any more cle=
ar.<br>
<br>
&gt; <br>
&gt; bool ddb_state_changed(...)<br>
<br>
So far I don't see any real need to check for that.<br>
<br>
&gt;&nbsp; <br>
&gt; Stan<br>
&gt; <br>
&gt; &gt; <br>
&gt; &gt; &gt;&nbsp; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp; struct intel_crtc_state *<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &gt; &gt; index bdad7476dc7b..d5be603b8b03 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.c<br=
>
&gt; &gt; &gt; @@ -424,9 &#43;424,27 @@ int intel_bw_atomic_check(struct<br=
>
&gt; &gt; &gt; intel_atomic_state *state)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; struct intel_crtc *crtc;<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; int i, ret;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; - /* FIXME earlier gens need some checks too */<br>
&gt; &gt; &gt; - if (INTEL_GEN(dev_priv) &lt; 11)<br>
&gt; &gt; &gt; &#43; /*<br>
&gt; &gt; &gt; &#43;&nbsp; * For earlier Gens let's consider bandwidth chan=
ged if ddb<br>
&gt; &gt; &gt; requirements,<br>
&gt; &gt; &gt; &#43;&nbsp; * has been changed.<br>
&gt; &gt; &gt; &#43;&nbsp; */<br>
&gt; &gt; &gt; &#43; if (INTEL_GEN(dev_priv) &lt; 11) {<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (st=
ate-&gt;ddb_state_changed) {<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_bw_get_state(s=
tate);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; return PTR_ERR(bw_state);<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D intel_atomic_lock_global_=
state(&amp;bw_state-<br>
&gt; &gt; &gt; &gt;base);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; return ret;<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DEBUG_KMS(&quot;Marking bw st=
ate changed for<br>
&gt; &gt; &gt; atomic state %p\n&quot;,<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; state);<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; state-&gt;bw_state_changed =3D tr=
ue;<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; return 0;<br>
&gt; &gt; &gt; &#43; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; for_each_oldnew_intel_crtc_in_state(state,=
 crtc,<br>
&gt; &gt; &gt; old_crtc_state,<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; new_crtc_state, i) {<br>
&gt; &gt; &gt; @@ -447,7 &#43;465,7 @@ int intel_bw_atomic_check(struct<br>
&gt; &gt; &gt; intel_atomic_state *state)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_active_planes =3D=3D new_active_planes)<b=
r>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bw_state&n=
bsp; =3D intel_bw_get_state(state);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bw_sta=
te =3D intel_bw_get_state(state);<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; if (IS_ERR(bw_state))<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return PTR_ERR(bw_sta=
te);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; @@ -468,6 &#43;486,10 @@ int intel_bw_atomic_check(struct<br=
>
&gt; &gt; &gt; intel_atomic_state *state)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; if (ret)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; return ret;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; &#43; DRM_DEBUG_KMS(&quot;Marking bw state changed for atomi=
c state %p\n&quot;,<br>
&gt; &gt; &gt; state);<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43; state-&gt;bw_state_changed =3D true;<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; data_rate =3D intel_bw_data_rate(dev_priv,=
 bw_state);<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; num_active_planes =3D intel_bw_num_active_=
planes(dev_priv,<br>
&gt; &gt; &gt; bw_state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_display.c<br=
>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; &gt; &gt; index 3031e64ee518..137fb645097a 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&gt; &gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display=
.c<br>
&gt; &gt; &gt; @@ -15540,8 &#43;15540,10 @@ static void<br>
&gt; &gt; &gt; intel_atomic_commit_tail(struct intel_atomic_state *state)<b=
r>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; * SKL workaround: bspec recommends we disable the SAGV<br>
&gt; &gt; &gt; when we<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; * have more then one pipe enabled<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; */<br>
&gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel=
_can_enable_sagv(state))<br>
&gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_disable_sagv(dev_priv);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (st=
ate-&gt;bw_state_changed) {<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_can_enable_sagv(state)=
)<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; intel_disable_sagv(dev_priv);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; intel_modeset_verify_disabled(dev_priv, state);<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; &gt; @@ -15565,7 &#43;15567,7 @@ static void intel_atomic_commit_=
tail(struct<br>
&gt; &gt; &gt; intel_atomic_state *state)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; intel_encoders_update_prepare(state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; /* Enable all new slices, we might need */=
<br>
&gt; &gt; &gt; - if (state-&gt;modeset)<br>
&gt; &gt; &gt; &#43; if (state-&gt;ddb_state_changed)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; icl_dbuf_slice_pre_update(state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; /* Now enable the clocks, plane, pipe, and=
 connectors that we<br>
&gt; &gt; &gt; set up. */<br>
&gt; &gt; &gt; @@ -15622,7 &#43;15624,7 @@ static void intel_atomic_commit_=
tail(struct<br>
&gt; &gt; &gt; intel_atomic_state *state)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; /* Disable all slices, we don't need */<br=
>
&gt; &gt; &gt; - if (state-&gt;modeset)<br>
&gt; &gt; &gt; &#43; if (state-&gt;ddb_state_changed)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; icl_dbuf_slice_post_update(state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; for_each_oldnew_intel_crtc_in_state(state,=
 crtc,<br>
&gt; &gt; &gt; old_crtc_state, new_crtc_state, i) {<br>
&gt; &gt; &gt; @@ -15641,8 &#43;15643,10 @@ static void<br>
&gt; &gt; &gt; intel_atomic_commit_tail(struct intel_atomic_state *state)<b=
r>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; if (state-&gt;modeset)<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; intel_verify_planes(state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; - if (state-&gt;modeset &amp;&amp; intel_can_enable_sagv(sta=
te))<br>
&gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_enab=
le_sagv(dev_priv);<br>
&gt; &gt; &gt; &#43; if (state-&gt;bw_state_changed) {<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (in=
tel_can_enable_sagv(state)<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_enable_sagv(dev_priv);<br>
&gt; &gt; &gt; &#43; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; drm_atomic_helper_commit_hw_done(&amp;stat=
e-&gt;base);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_display_type=
s.h<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &gt; &gt; index 0d8a64305464..12b47ba3c68d 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display_types.h<br>
&gt; &gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display=
_types.h<br>
&gt; &gt; &gt; @@ -471,16 &#43;471,6 @@ struct intel_atomic_state {<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; bool dpll_set, modeset;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; - /*<br>
&gt; &gt; &gt; -&nbsp; * Does this transaction change the pipes that are<br=
>
&gt; &gt; &gt; active?&nbsp; This mask<br>
&gt; &gt; &gt; -&nbsp; * tracks which CRTC's have changed their active stat=
e at the<br>
&gt; &gt; &gt; end of<br>
&gt; &gt; &gt; -&nbsp; * the transaction (not counting the temporary disabl=
e during<br>
&gt; &gt; &gt; modesets).<br>
&gt; &gt; &gt; -&nbsp; * This mask should only be non-zero when intel_state=
-&gt;modeset<br>
&gt; &gt; &gt; is true,<br>
&gt; &gt; &gt; -&nbsp; * but the converse is not necessarily true; simply c=
hanging a<br>
&gt; &gt; &gt; mode may<br>
&gt; &gt; &gt; -&nbsp; * not flip the final active status of any CRTC's<br>
&gt; &gt; &gt; -&nbsp; */<br>
&gt; &gt; &gt; - u8 active_pipe_changes;<br>
&gt; &gt; &gt; -<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; u8 active_pipes;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; struct intel_shared_dpll_state shared_dpll=
[I915_NUM_PLLS];<br>
&gt; &gt; &gt; @@ -494,10 &#43;484,30 @@ struct intel_atomic_state {<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; bool rps_interactive;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; /*<br>
&gt; &gt; &gt; -&nbsp; * active_pipes<br>
&gt; &gt; &gt; &#43;&nbsp; * active pipes<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; bool global_state_changed;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; &#43; /*<br>
&gt; &gt; &gt; &#43;&nbsp; * Does this transaction change the pipes that ar=
e<br>
&gt; &gt; &gt; active?&nbsp; This mask<br>
&gt; &gt; &gt; &#43;&nbsp; * tracks which CRTC's have changed their active =
state at the<br>
&gt; &gt; &gt; end of<br>
&gt; &gt; &gt; &#43;&nbsp; * the transaction (not counting the temporary di=
sable during<br>
&gt; &gt; &gt; modesets).<br>
&gt; &gt; &gt; &#43;&nbsp; * This mask should only be non-zero when intel_s=
tate-&gt;modeset<br>
&gt; &gt; &gt; is true,<br>
&gt; &gt; &gt; &#43;&nbsp; * but the converse is not necessarily true; simp=
ly changing a<br>
&gt; &gt; &gt; mode may<br>
&gt; &gt; &gt; &#43;&nbsp; * not flip the final active status of any CRTC's=
<br>
&gt; &gt; &gt; &#43;&nbsp; */<br>
&gt; &gt; &gt; &#43; u8 active_pipe_changes;<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43; /*<br>
&gt; &gt; &gt; &#43;&nbsp; * More granular change indicator for ddb changes=
<br>
&gt; &gt; &gt; &#43;&nbsp; */<br>
&gt; &gt; &gt; &#43; bool ddb_state_changed;<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43; /*<br>
&gt; &gt; &gt; &#43;&nbsp; * More granular change indicator for bandwidth s=
tate changes<br>
&gt; &gt; &gt; &#43;&nbsp; */<br>
&gt; &gt; &gt; &#43; bool bw_state_changed;<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; /* Number of enabled DBuf slices */<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; u8 enabled_dbuf_slices_mask;<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &gt; &gt; index 409b91c17a7f..ac4b317ea1bf 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &gt; &gt; @@ -3894,7 &#43;3894,7 @@ skl_ddb_get_pipe_allocation_limits=
(struct<br>
&gt; &gt; &gt; drm_i915_private *dev_priv,<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; * that changes the active CRTC list =
or do modeset would need<br>
&gt; &gt; &gt; to<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; * grab _all_ crtc locks, including t=
he one we currently hold.<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &gt; &gt; - if (!intel_state-&gt;active_pipe_changes &amp;&amp; !intel=
_state-&gt;modeset) <br>
&gt; &gt; &gt; {<br>
&gt; &gt; &gt; &#43; if (!intel_state-&gt;ddb_state_changed) {<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; /*<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; * alloc may be cleared by clear_intel_crtc_state,<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; * copy from old state to be sure<br>
&gt; &gt; &gt; @@ -5787,6 &#43;5787,9 @@ static int skl_wm_add_affected_pla=
nes(struct<br>
&gt; &gt; &gt; intel_atomic_state *state,<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return PTR_ERR(plane_=
state);<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; new_crtc_state-&gt;update_planes |=3D BIT(plane_id);<br>
&gt; &gt; &gt; &#43;<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRM_DE=
BUG_KMS(&quot;Marking ddb state changed for atomic<br>
&gt; &gt; &gt; state %p\n&quot;, state);<br>
&gt; &gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; state-=
&gt;ddb_state_changed =3D true;<br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt; &gt;&nbsp; <br>
&gt; &gt; &gt;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt; &gt; &gt; -- <br>
&gt; &gt; &gt; 2.24.1.485.gad05a3d8e5<br>
&gt; &gt; <br>
&gt; &gt; <br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font>
</body>
</html>

--_000_ceb355b86ad84eeba8817b53713fe27aintelcom_--

--===============0476079982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0476079982==--
