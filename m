Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3F71614FB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 15:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CFFF6E969;
	Mon, 17 Feb 2020 14:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7B36E969
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 14:45:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 06:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,453,1574150400"; d="scan'208";a="229214214"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 17 Feb 2020 06:45:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2020 16:45:13 +0200
Date: Mon, 17 Feb 2020 16:45:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200217144513.GN13686@intel.com>
References: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
 <20200213184800.14147-2-ville.syrjala@linux.intel.com>
 <eb8d4416a1f73761899953e3ff62776c7fb18dc7.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb8d4416a1f73761899953e3ff62776c7fb18dc7.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Introduce proper dbuf state
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

On Mon, Feb 17, 2020 at 08:46:40AM +0000, Lisovskiy, Stanislav wrote:
> On Thu, 2020-02-13 at 20:47 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Add a global state to track the dbuf slices. Gets rid of all the
> > nasty
> > coupling between state->modeset and dbuf recompulation. Also we can
> > now
> > totally nuke state->active_pipe_changes.
> > =

> > dev_priv->wm.distrust_bios_wm still remains, but should probably also
> > get nuked from orbit later. Just didn't spend any significant time
> > pondering how to go about. The obvious thing would be to just
> > recompute
> > the thing every time.
> > =

> > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  69 ++++---
> >  .../drm/i915/display/intel_display_power.c    |   4 +-
> >  .../drm/i915/display/intel_display_types.h    |  13 --
> >  drivers/gpu/drm/i915/i915_drv.h               |  11 +-
> >  drivers/gpu/drm/i915/intel_pm.c               | 185 ++++++++++++--
> > ----
> >  drivers/gpu/drm/i915/intel_pm.h               |  22 +++
> >  6 files changed, 205 insertions(+), 99 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e09d3c93c52b..e331ab900336 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7558,6 +7558,8 @@ static void intel_crtc_disable_noatomic(struct
> > intel_crtc *crtc,
> >  		to_intel_bw_state(dev_priv->bw_obj.state);
> >  	struct intel_cdclk_state *cdclk_state =3D
> >  		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> > +	struct intel_dbuf_state *dbuf_state =3D
> > +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> >  	struct intel_crtc_state *crtc_state =3D
> >  		to_intel_crtc_state(crtc->base.state);
> >  	enum intel_display_power_domain domain;
> > @@ -7630,6 +7632,8 @@ static void intel_crtc_disable_noatomic(struct
> > intel_crtc *crtc,
> >  	cdclk_state->min_voltage_level[pipe] =3D 0;
> >  	cdclk_state->active_pipes &=3D ~BIT(pipe);
> >  =

> > +	dbuf_state->active_pipes &=3D ~BIT(pipe);
> > +
> =

> May be I'm wrong(so being not offensive here :) ), but feels kind of
> redundant to have active_pipes in cdclk_state and at the same time in
> dbuf_state. Why can't it be still =

> in some more general state, which is inherited/used/aggregated by those
> dbuf and cdclk states? Otherwise you will have to do this duplicate
> code initializations which I see here, for example if there would be
> even more states you have then three or more similar initializations
> here,
> doing the same thing. This pretty much increases probability that
> somewhere in the code, you will eventually forget to do all
> initializations(well I guess you understand).
> Or if you will have to update the behavior, based on active_pipes here
> somehow, you will also have to change the duplicate code all over the
> place.

The problem with putting such things in some central place is that then
we get everything coupled together with said state. You get annoying
ordering requirements on which order you compute those things etc.
IMO better to just encapsulate each thing as much as possible. This way
you don't have to think at all what those other states are doing with
their lives.

The readout is a bit ugly yes, but we could provide a small helper
for that. It would still probably have somewhat annoying ordering
constraints though since we perhaps don't want to do actual readout
of active_pipes multiple times.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
