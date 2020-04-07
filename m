Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32B91A114D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF376E124;
	Tue,  7 Apr 2020 16:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A1B6E124
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 16:27:00 +0000 (UTC)
IronPort-SDR: XzMSBWLOhdduqiRN6Sa5UfDelBQn5V9ggrlx/SMNamShIePFtW0cwjRNigJWVTk7aNAXdHGoVd
 7iX9kBuMeC+Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 09:26:59 -0700
IronPort-SDR: OhKBNT1UJCqJixJXD/zLYDFCCzJSJ/fKDxUaHkiXNAZsSpOeznBGU0UNhuh8E5rXHTqHkKFD1l
 g32xSjCfyD/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,355,1580803200"; d="scan'208";a="240004867"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 07 Apr 2020 09:26:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Apr 2020 19:26:55 +0300
Date: Tue, 7 Apr 2020 19:26:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200407162655.GG6112@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
 <20200330122354.24752-5-stanislav.lisovskiy@intel.com>
 <20200330170731.GO13686@intel.com>
 <20200330181649.GA26073@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330181649.GA26073@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915: Adjust CDCLK accordingly
 to our DBuf bw needs
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

On Mon, Mar 30, 2020 at 09:16:49PM +0300, Lisovskiy, Stanislav wrote:
> On Mon, Mar 30, 2020 at 08:07:31PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Mar 30, 2020 at 03:23:53PM +0300, Stanislav Lisovskiy wrote:
> > > According to BSpec max BW per slice is calculated using formula
> > > Max BW =3D CDCLK * 64. Currently when calculating min CDCLK we
> > > account only per plane requirements, however in order to avoid
> > > FIFO underruns we need to estimate accumulated BW consumed by
> > > all planes(ddb entries basically) residing on that particular
> > > DBuf slice. This will allow us to put CDCLK lower and save power
> > > when we don't need that much bandwidth or gain additional
> > > performance once plane consumption grows.
> > > =

> > > v2: - Fix long line warning
> > >     - Limited new DBuf bw checks to only gens >=3D 11
> > > =

> > > v3: - Lets track used Dbuf bw per slice and per crtc in bw state
> > >       (or may be in DBuf state in future), that way we don't need
> > >       to have all crtcs in state and those only if we detect if
> > >       are actually going to change cdclk, just same way as we
> > >       do with other stuff, i.e intel_atomic_serialize_global_state
> > >       and co. Just as per Ville's paradigm.
> > >     - Made dbuf bw calculation procedure look nicer by introducing
> > >       for_each_dbuf_slice_in_mask - we often will now need to iterate
> > >       slices using mask.
> > >     - According to experimental results CDCLK * 64 accounts for
> > >       overall bandwidth across all dbufs, not per dbuf.
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c       | 61 +++++++++++++++++=
+-
> > >  drivers/gpu/drm/i915/display/intel_bw.h       |  8 +++
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 ++++++++
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  8 +++
> > >  .../drm/i915/display/intel_display_power.h    |  2 +
> > >  drivers/gpu/drm/i915/intel_pm.c               | 34 ++++++++++-
> > >  drivers/gpu/drm/i915/intel_pm.h               |  3 +
> > >  7 files changed, 138 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/dr=
m/i915/display/intel_bw.c
> > > index 573a1c206b60..e9d65820fb76 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -6,6 +6,7 @@
> > >  #include <drm/drm_atomic_state_helper.h>
> > >  =

> > >  #include "intel_bw.h"
> > > +#include "intel_pm.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_sideband.h"
> > >  #include "intel_atomic.h"
> > > @@ -338,7 +339,6 @@ static unsigned int intel_bw_crtc_data_rate(const=
 struct intel_crtc_state *crtc_
> > >  =

> > >  	return data_rate;
> > >  }
> > > -
> > >  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
> > >  			  const struct intel_crtc_state *crtc_state)
> > >  {
> > > @@ -419,6 +419,65 @@ intel_atomic_bw_get_state(struct intel_atomic_st=
ate *state)
> > >  	return to_intel_bw_state(bw_state);
> > >  }
> > >  =

> > > +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> > > +{
> > > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > +	int i =3D 0;
> > > +	enum plane_id plane_id;
> > > +	struct intel_crtc_state *crtc_state;
> > =

> > const
> =

> Why? There are lots of places where we use it that way.

Always make it const if you don't have to change it. Makes life a lot
easier when you immediately see that it can't mutate when you're not
looking. Which is also why pure functions are preferrable to those
with side effects.

> Even in intel_compute_min_cdclk:
> =

> struct intel_crtc_state *crtc_state;
> int min_cdclk, i;
> enum pipe pipe;
> =

> for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> =

> Also I grepped - almost every place in intel_display.c
> which has for_each_new_intel_crtc_in_state uses crtc_state as non-const.
> =

> It is called that way intel_calc_active_pipes, intel_atomic_check_crtcs,.=
..
> almost everywhere in intel_display.c
> =

> So can you please explain what do you mean?..
> =

> > =

> > > +	struct intel_crtc *crtc;
> > > +	int max_bw =3D 0;
> > > +	int min_cdclk;
> > > +	enum pipe pipe;
> > > +	struct intel_bw_state *bw_state;
> > > +	int slice_id =3D 0;
> > =

> > Bunch of needless intiialization, needlessly wide scope, etc.
> =

> max_bw needs to be accumulated so I guess it should be init to 0.
> =

> Agree regarding slice_id - just a leftover after I started to =

> use for_each_dbuf_slice macro.
> =

> > =

> > > +
> > > +	bw_state =3D intel_atomic_bw_get_state(state);
> > > +
> > =

> > Spurious whitespace.
> > =

> > > +	if (IS_ERR(bw_state))
> > > +		return PTR_ERR(bw_state);
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> > > +		struct intel_crtc_bw *crtc_bw =3D &bw_state->dbuf_bw_used[crtc->pi=
pe];
> > > +
> > > +		memset(&crtc_bw->dbuf_bw, 0, sizeof(crtc_bw->dbuf_bw));
> > > +
> > > +		for_each_plane_id_on_crtc(crtc, plane_id) {
> > > +			struct skl_ddb_entry *plane_alloc =3D
> > > +				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> > > +			struct skl_ddb_entry *uv_plane_alloc =3D
> > > +				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> > =

> > const
> > =

> > > +			unsigned int data_rate =3D crtc_state->data_rate[plane_id];
> > > +
> > =

> > more strange whitespace
> > =

> > > +			unsigned int dbuf_mask =3D skl_ddb_dbuf_slice_mask(dev_priv, plan=
e_alloc);
> > > +
> > > +			dbuf_mask |=3D skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
> > =

> > Looks bad when you initialize part of it in declaration and the rest
> > later.
> =

> Didn't want to have a long time here, will have to make a separate functi=
on then.

Not sure why you want a separate function.

foo =3D a | b ?

> =

> > =

> > > +
> > > +			DRM_DEBUG_KMS("Got dbuf mask %x for pipe %c ddb %d-%d plane %d da=
ta rate %d\n",
> > > +				      dbuf_mask, pipe_name(crtc->pipe), plane_alloc->start,
> > > +				      plane_alloc->end, plane_id, data_rate);
> > > +
> > > +			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
> > > +				crtc_bw->dbuf_bw[slice_id] +=3D data_rate;
> > =

> > This doesn't feel quite right for planar formats.
> > =

> > For pre-icl it works by accident since we only have the one slice so
> > we don't end up accounting for the full bandwidth from both color planes
> > to multiple slices. If we had multiple slices and chroma and luma had
> > been allocated to different slices we'd count the same thing multiple
> > times.
> > =

> > For icl+ we seem to assign the full data rate to the UV plane's slice(s)
> > since only the UV plane has data_rate[] !=3D 0.
> =

> This sounds interesting, so do you mean that we need something like data_=
rate =

> and data_rate_uv? =


Perhaps. Or maybe we just start tracking the data rate separately
for the master and slave planes on icl+. No real issue on pre-icl so
that would actually work AFAICS.

> My logic here is that we just get a set of slices used by uv and y planes
> in total and then account for data_rate for those. =

> We probably then need another patch to split data rate then.
> =

> I was aware of that actually but anyway being pessimistic here is better.
> Also same about if plane would be sitting on 2 slices at the same time.
> =

> > =

> > > +		}
> > > +	}
> > > +
> > > +	for_each_dbuf_slice(slice_id) {
> > > +		int total_bw_per_slice =3D 0;
> > > +
> > > +		for_each_pipe(dev_priv, pipe) {
> > > +			struct intel_crtc_bw *crtc_bw =3D &bw_state->dbuf_bw_used[pipe];
> > > +
> > > +			total_bw_per_slice +=3D crtc_bw->dbuf_bw[slice_id];
> > > +		}
> > > +		max_bw +=3D total_bw_per_slice;
> > =

> > So we're aggregating all the bw instead of per-slice? Is this based on
> > the other mail you sent? Deserves a comment explaining why we do such
> > odd things.
> =

> Agree need to add a comment. Currently it seems the only way to make it
> work without either having underruns or 8K not usable with bumped CDCLK.
> =

> > =

> > > +	}
> > > +
> > > +	min_cdclk =3D max_bw / 64;
> > > +
> > > +	return min_cdclk;
> > > +}
> > > +
> > >  int intel_bw_atomic_check(struct intel_atomic_state *state)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/dr=
m/i915/display/intel_bw.h
> > > index 9a5627be6876..d2b5f32b0791 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > @@ -10,11 +10,16 @@
> > >  =

> > >  #include "intel_display.h"
> > >  #include "intel_global_state.h"
> > > +#include "intel_display_power.h"
> > >  =

> > >  struct drm_i915_private;
> > >  struct intel_atomic_state;
> > >  struct intel_crtc_state;
> > >  =

> > > +struct intel_crtc_bw {
> > > +	int dbuf_bw[I915_MAX_DBUF_SLICES];
> > > +};
> > > +
> > >  struct intel_bw_state {
> > >  	struct intel_global_state base;
> > >  =

> > > @@ -31,6 +36,8 @@ struct intel_bw_state {
> > >  	 */
> > >  	u8 qgv_points_mask;
> > >  =

> > > +	struct intel_crtc_bw dbuf_bw_used[I915_MAX_PIPES];
> > =

> > The name of the struct isn't very good if it just contains the
> > dbuf bw numbers.
> > =

> > > +
> > >  	unsigned int data_rate[I915_MAX_PIPES];
> > >  	u8 num_active_planes[I915_MAX_PIPES];
> > =

> > Maybe collect all this to the per-crtc struct?
> > =

> > >  };
> > > @@ -53,5 +60,6 @@ void intel_bw_crtc_update(struct intel_bw_state *bw=
_state,
> > >  			  const struct intel_crtc_state *crtc_state);
> > >  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> > >  				  u32 points_mask);
> > > +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
> > >  =

> > >  #endif /* __INTEL_BW_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu=
/drm/i915/display/intel_cdclk.c
> > > index 979a0241fdcb..036774e7f3ec 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -25,6 +25,7 @@
> > >  #include "intel_cdclk.h"
> > >  #include "intel_display_types.h"
> > >  #include "intel_sideband.h"
> > > +#include "intel_bw.h"
> > >  =

> > >  /**
> > >   * DOC: CDCLK / RAWCLK
> > > @@ -2001,11 +2002,19 @@ int intel_crtc_compute_min_cdclk(const struct=
 intel_crtc_state *crtc_state)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D
> > >  		to_i915(crtc_state->uapi.crtc->dev);
> > > +	struct intel_atomic_state *state =3D NULL;
> > >  	int min_cdclk;
> > >  =

> > >  	if (!crtc_state->hw.enable)
> > >  		return 0;
> > >  =

> > > +	/*
> > > +	 * FIXME: Unfortunately when this gets called from intel_modeset_se=
tup_hw_state
> > > +	 * there is no intel_atomic_state at all. So lets not then use it.
> > > +	 */
> > > +	if (crtc_state->uapi.state)
> > > +		state =3D to_intel_atomic_state(crtc_state->uapi.state);
> > =

> > This still indicates that either this isn't the right place to call this
> > or we have the state stored in the wrong place.
> > =

> > I think I'd just move the thing into intel_compute_min_cdclk() as a sta=
rt.
> =

> Was thinking about this, why I didn't put it here is because just wanted
> to keep all cdclk regulating logic in this function, because intel_comput=
e_min_cdclk
> is kind of higher level already which is supposed to call that one per cr=
tc_state.
> Otherwise CDCLK regulating logic will be kind of spread across those two.

This is not a per-crtc limit so having it in the per-crtc function seems
wrong anyway to me.

> =

> > =

> > > +
> > >  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
> > >  =

> > >  	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> > > @@ -2080,6 +2089,22 @@ int intel_crtc_compute_min_cdclk(const struct =
intel_crtc_state *crtc_state)
> > >  	if (IS_TIGERLAKE(dev_priv))
> > >  		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> > >  =

> > > +	/*
> > > +	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
> > > +	 * - in some certain driver parts, we don't have any guarantee that
> > > +	 * parent exists. So we might be having a crtc_state without
> > > +	 * parent state.
> > > +	 */
> > > +	if (INTEL_GEN(dev_priv) >=3D 11) {
> > > +		if (state) {
> > > +			int dbuf_bw_cdclk =3D intel_bw_calc_min_cdclk(state);
> > > +
> > > +			DRM_DEBUG_KMS("DBuf bw min cdclk %d current min_cdclk %d\n",
> > > +				      dbuf_bw_cdclk, min_cdclk);
> > > +			min_cdclk =3D max(min_cdclk, dbuf_bw_cdclk);
> > > +		}
> > > +	}
> > > +
> > >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 9fd32d61ebfe..fa2870c0d7fd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14678,6 +14678,14 @@ static int intel_atomic_check_planes(struct =
intel_atomic_state *state,
> > >  		if (old_active_planes =3D=3D new_active_planes)
> > >  			continue;
> > >  =

> > > +		/*
> > > +		 * active_planes bitmask has been updated, whenever amount
> > > +		 * of active planes had changed we need to recalculate CDCLK
> > > +		 * as it depends on total bandwidth now, not only min_cdclk
> > > +		 * per plane.
> > > +		 */
> > > +		*need_cdclk_calc =3D true;
> > > +
> > >  		ret =3D intel_crtc_add_planes_to_state(state, crtc, new_active_pla=
nes);
> > >  		if (ret)
> > >  			return ret;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/dri=
vers/gpu/drm/i915/display/intel_display_power.h
> > > index 468e8fb0203a..9e33fb90422f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > > @@ -308,6 +308,8 @@ intel_display_power_put_async(struct drm_i915_pri=
vate *i915,
> > >  }
> > >  #endif
> > >  =

> > > +#define I915_MAX_DBUF_SLICES 2
> > > +
> > >  enum dbuf_slice {
> > >  	DBUF_S1,
> > >  	DBUF_S2,
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index 551933e3f7da..5dcd1cd09ad7 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4055,10 +4055,9 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice=
_mask,
> > >  	return offset;
> > >  }
> > >  =

> > > -static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> > > +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> > >  {
> > >  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> > > -
> > >  	drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
> > >  =

> > >  	if (INTEL_GEN(dev_priv) < 11)
> > > @@ -4067,6 +4066,37 @@ static u16 intel_get_ddb_size(struct drm_i915_=
private *dev_priv)
> > >  	return ddb_size;
> > >  }
> > >  =

> > > +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> > > +			    const struct skl_ddb_entry *entry)
> > > +{
> > > +	u32 slice_mask =3D 0;
> > > +	u16 ddb_size =3D intel_get_ddb_size(dev_priv);
> > > +	u16 num_supported_slices =3D INTEL_INFO(dev_priv)->num_supported_db=
uf_slices;
> > > +	u16 slice_size =3D ddb_size / num_supported_slices;
> > > +	u16 start_slice;
> > > +	u16 end_slice;
> > > +
> > > +	if (!skl_ddb_entry_size(entry))
> > > +		return 0;
> > > +
> > > +	start_slice =3D entry->start / slice_size;
> > > +	end_slice =3D (entry->end - 1) / slice_size;
> > > +
> > > +	DRM_DEBUG_KMS("ddb size %d slices %d slice size %d start slice %d e=
nd slice %d\n",
> > > +		      ddb_size, num_supported_slices, slice_size, start_slice, end=
_slice);
> > > +
> > > +	/*
> > > +	 * Per plane DDB entry can in a really worst case be on multiple sl=
ices
> > > +	 * but single entry is anyway contigious.
> > > +	 */
> > > +	while (start_slice <=3D end_slice) {
> > > +		slice_mask |=3D 1 << start_slice;
> > > +		start_slice++;
> > > +	}
> > =

> > GENMASK() or somehting?
> =

> Will fix, thanks for proposal.
> =

> > =

> > > +
> > > +	return slice_mask;
> > > +}
> > > +
> > >  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crt=
c_state,
> > >  				  u8 active_pipes);
> > >  =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/i=
ntel_pm.h
> > > index 069515f04170..41c61ad71ce6 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.h
> > > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > > @@ -37,6 +37,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *c=
rtc,
> > >  			       struct skl_ddb_entry *ddb_y,
> > >  			       struct skl_ddb_entry *ddb_uv);
> > >  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> > > +u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
> > > +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> > > +			    const struct skl_ddb_entry *entry);
> > >  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> > >  			      struct skl_pipe_wm *out);
> > >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
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
