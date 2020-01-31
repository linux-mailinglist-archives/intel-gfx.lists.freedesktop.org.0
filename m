Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8709214EF3B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:10:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34006E9B7;
	Fri, 31 Jan 2020 15:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28C56E9B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:10:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 07:10:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="262570042"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 31 Jan 2020 07:10:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 17:10:31 +0200
Date: Fri, 31 Jan 2020 17:10:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200131151031.GS13686@intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
 <20200124084456.2961-8-stanislav.lisovskiy@intel.com>
 <20200128233706.GI22783@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128233706.GI22783@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v16 7/7] drm/i915: Update dbuf slices only
 with full modeset
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

On Tue, Jan 28, 2020 at 03:37:06PM -0800, Matt Roper wrote:
> On Fri, Jan 24, 2020 at 10:44:56AM +0200, Stanislav Lisovskiy wrote:
> > During full modeset, global state(i.e dev_priv) is protected
> > by locking the crtcs in state, otherwise global state is not
> > serialized. Also if it is not a full modeset, we anyway
> > don't need to change DBuf slice configuration as Pipe configuration
> > doesn't change.
> =

> Looks correct, but don't we need this earlier so that we don't have a
> bad bisection point in the git history (assuming we rely on this rather
> than the extra locking from the previous patch to cover the DC off
> race)?

Could perhaps just squash into the patch that moves these calls here.
Or move just after that patch in the series.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> =

> Matt
> =

> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 1c957df5c28c..888a9e94032e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15373,7 +15373,8 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
> >  		intel_encoders_update_prepare(state);
> >  =

> >  	/* Enable all new slices, we might need */
> > -	icl_dbuf_slice_pre_update(state);
> > +	if (state->modeset)
> > +		icl_dbuf_slice_pre_update(state);
> >  =

> >  	/* Now enable the clocks, plane, pipe, and connectors that we set up.=
 */
> >  	dev_priv->display.commit_modeset_enables(state);
> > @@ -15432,7 +15433,8 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
> >  	}
> >  =

> >  	/* Disable all slices, we don't need */
> > -	icl_dbuf_slice_post_update(state);
> > +	if (state->modeset)
> > +		icl_dbuf_slice_post_update(state);
> >  =

> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_=
crtc_state, i) {
> >  		intel_post_plane_update(state, crtc);
> > -- =

> > 2.24.1.485.gad05a3d8e5
> > =

> =

> -- =

> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
