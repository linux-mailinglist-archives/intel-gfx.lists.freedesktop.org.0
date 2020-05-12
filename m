Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D179F1CF52F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 15:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B010E6E912;
	Tue, 12 May 2020 13:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF3E6E912
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 13:03:50 +0000 (UTC)
IronPort-SDR: /p73aQZHFCndicT7jz+VQ8urTr0/XrJI1yTQTgkdOqVeFuYJOX0EXavENF9gz+o36xbuKukGXr
 eE0GWtF2XDcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 06:03:50 -0700
IronPort-SDR: mJEl/7OeszCZSmT3++lQzi4ZTKBjlV38AJMiArq8hbMVhdMjXHVo7MyiDgZBjp35R5InJNCZ15
 2BiH4xzkGxtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="298018423"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 May 2020 06:03:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 16:03:45 +0300
Date: Tue, 12 May 2020 16:03:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200512130345.GP6112@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-4-stanislav.lisovskiy@intel.com>
 <20200512113925.GM6112@intel.com>
 <20200512124406.GA19632@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512124406.GA19632@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 3/6] drm/i915: Make active_pipes check
 skl specific
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

On Tue, May 12, 2020 at 03:44:06PM +0300, Lisovskiy, Stanislav wrote:
> On Tue, May 12, 2020 at 02:39:25PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Thu, May 07, 2020 at 05:45:00PM +0300, Stanislav Lisovskiy wrote:
> > > Seems that only skl needs to have SAGV turned off
> > > for multipipe scenarios, so lets do it this way.
> > =

> > It doesn't afaics. It's just someone added the check for some random
> > reason. So this should be reworded a bit. Also this isn't just about
> > skl/derivatives but all pre-icl so the <subject> is a bit misleading to=
o.
> =

> This is in BSpec anyway. And it was in the code before, so I really =

> don't get what do you mean here.

That's not what it says. It just suggests that if you guarantee that
you always have enough ddb for sagv in single pipe configuration then
you can just toggle sagv when transitioning between single vs. multi
pipe configurations. The implication being that you don't guarantee
enough ddb for sagv in multi pipe configurations, hence you simply
assume sagv can't be used with multiple pipes.

We don't even guarantee that out single pipe configuration has enough
ddb for sagv, hence we have to actually check the block time constraint
even in single pipe configurations. That makes the whole bspec paragraph
moot and we might as well just do the obvious thing and check the sagv
block time for all pipes (which we're already doing anyway).

> =

> > =

> > > =

> > > If anything blows up - we can always revert this patch.
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 15 +++++++++------
> > >  drivers/gpu/drm/i915/intel_pm.h |  3 ++-
> > >  2 files changed, 11 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index 3dc1ad66beb3..db188efee21e 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -3777,7 +3777,7 @@ void intel_sagv_pre_plane_update(struct intel_a=
tomic_state *state)
> > >  	if (!new_bw_state)
> > >  		return;
> > >  =

> > > -	if (!intel_can_enable_sagv(new_bw_state))
> > > +	if (!intel_can_enable_sagv(dev_priv, new_bw_state))
> > >  		intel_disable_sagv(dev_priv);
> > >  }
> > >  =

> > > @@ -3800,7 +3800,7 @@ void intel_sagv_post_plane_update(struct intel_=
atomic_state *state)
> > >  	if (!new_bw_state)
> > >  		return;
> > >  =

> > > -	if (intel_can_enable_sagv(new_bw_state))
> > > +	if (intel_can_enable_sagv(dev_priv, new_bw_state))
> > >  		intel_enable_sagv(dev_priv);
> > >  }
> > >  =

> > > @@ -3853,16 +3853,19 @@ static bool skl_crtc_can_enable_sagv(const st=
ruct intel_crtc_state *crtc_state)
> > >  	return true;
> > >  }
> > >  =

> > > -bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> > > +bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> > > +			   const struct intel_bw_state *bw_state)
> > >  {
> > > -	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes=
))
> > > -		return false;
> > > +	if (INTEL_GEN(dev_priv) < 11)
> > > +		if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipe=
s))
> > =

> > If (a && b && c)
> > 	return false;
> =

> Then the line would get too long, and it does exactly same thing.
> I really don't understand such comments.
> =

> Stan
> =

> > =

> > =

> > > +			return false;
> > >  =

> > >  	return bw_state->pipe_sagv_reject =3D=3D 0;
> > >  }
> > >  =

> > >  static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> > >  {
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > >  	int ret;
> > >  	struct intel_crtc *crtc;
> > >  	const struct intel_crtc_state *new_crtc_state;
> > > @@ -3896,7 +3899,7 @@ static int intel_compute_sagv_mask(struct intel=
_atomic_state *state)
> > >  			return ret;
> > >  	}
> > >  =

> > > -	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable_sagv(=
old_bw_state)) {
> > > +	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=3D intel_can_en=
able_sagv(dev_priv, old_bw_state)) {
> > =

> > >  		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> > >  		if (ret)
> > >  			return ret;
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/i=
ntel_pm.h
> > > index fd1dc422e6c5..614ac7f8d4cc 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.h
> > > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > > @@ -42,7 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
> > >  			      struct skl_pipe_wm *out);
> > >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> > >  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> > > -bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
> > > +bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> > > +			   const struct intel_bw_state *bw_state);
> > >  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> > >  int intel_disable_sagv(struct drm_i915_private *dev_priv);
> > >  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> > > -- =

> > > 2.24.1.485.gad05a3d8e5
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
