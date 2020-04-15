Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4A71A9605
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 10:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF626E907;
	Wed, 15 Apr 2020 08:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AA16E907
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 08:17:28 +0000 (UTC)
IronPort-SDR: arFoWa07MWbPgZrK0p8+pnfmLXITXaEWkrhZ+CDrngwZ3nDy011MtcWhupPdLjoKqFEkRZBqOz
 wOvD8LkIxuCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 01:17:28 -0700
IronPort-SDR: Rq7jdfw4OXL1hRgtxn4TtysEPikQru1B6NJpNruGuOjpuQu6OlT7YlNAX2+gnxiRtQmM4+nPFO
 x2oDX4o7TrHg==
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="245633920"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 01:17:26 -0700
Date: Wed, 15 Apr 2020 11:14:02 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200415081402.GB17859@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
 <20200409154730.18568-5-stanislav.lisovskiy@intel.com>
 <20200414174044.GF6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414174044.GF6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v22 04/13] drm/i915: Add
 intel_atomic_get_bw_*_state helpers
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 14, 2020 at 08:40:44PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Apr 09, 2020 at 06:47:21PM +0300, Stanislav Lisovskiy wrote:
> > Add correspondent helpers to be able to get old/new bandwidth
> > global state object.
> > =

> > v2: - Fixed typo in function call
> > v3: - Changed new functions naming to use convention proposed
> >       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
> > v4: - Change function naming back to intel_atomic* pattern,
> >       was decided to rename in a separate patch series.
> > v5: - Fix function naming to match existing practices(Ville)
> > v6: - Removed spurious whitespace
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 28 ++++++++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
> >  2 files changed, 36 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/=
i915/display/intel_bw.c
> > index 88f367eb28ea..96f86cfa91d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -375,7 +375,33 @@ static unsigned int intel_bw_data_rate(struct drm_=
i915_private *dev_priv,
> >  	return data_rate;
> >  }
> >  =

> > -static struct intel_bw_state *
> > +struct intel_bw_state *
> > +intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	struct intel_global_state *bw_state;
> > +
> > +	bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_priv->=
bw_obj);
> > +	if (!bw_state)
> > +		return NULL;
> =

> This check isn't actually needed. I think in all the other cases we just
> get_new_state()
> {
> 	return to_foo_state(get_new_state());
> }
> =

> See eg. intel_atomic_get_new_{crtc,plane}_state()
> =

> Would be nice to be consistent.

My concern was that will this to_foo_state survive NULL
being passed, i.e underlying container_of macro will
then do this pointer arithmetics with NULL, i.e:

((type *)(NULL - offsetof(type, member))); })

which doesnt look nice to me, however if you say that this is ok, =

will change that.

Stan

> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> =

> > +
> > +	return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +	struct intel_global_state *bw_state;
> > +
> > +	bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_priv->=
bw_obj);
> > +	if (!bw_state)
> > +		return NULL;
> > +
> > +	return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> >  intel_atomic_get_bw_state(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/=
i915/display/intel_bw.h
> > index a8aa7624c5aa..ac004d6f4276 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -24,6 +24,15 @@ struct intel_bw_state {
> >  =

> >  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, =
base)
> >  =

> > +struct intel_bw_state *
> > +intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_atomic_get_bw_state(struct intel_atomic_state *state);
> > +
> >  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
> >  int intel_bw_init(struct drm_i915_private *dev_priv);
> >  int intel_bw_atomic_check(struct intel_atomic_state *state);
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
