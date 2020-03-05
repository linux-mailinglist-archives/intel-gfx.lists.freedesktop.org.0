Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9809017A6CA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:55:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDB36E323;
	Thu,  5 Mar 2020 13:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D396E323
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 13:55:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="244281274"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 05 Mar 2020 05:55:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Mar 2020 15:55:24 +0200
Date: Thu, 5 Mar 2020 15:55:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200305135524.GM13686@intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
 <20200228203552.30273-2-ville.syrjala@linux.intel.com>
 <2f65710060a20a9d0622b545ee269ab2682e75cb.camel@intel.com>
 <20200304114649.GC13686@intel.com>
 <e8400308a790eb317b345a9164916c7f044a5cd9.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8400308a790eb317b345a9164916c7f044a5cd9.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes
 until we've compute the wms fully
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

On Wed, Mar 04, 2020 at 11:25:42PM +0000, Souza, Jose wrote:
> On Wed, 2020-03-04 at 13:46 +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Mar 04, 2020 at 12:21:01AM +0000, Souza, Jose wrote:
> > > On Fri, 2020-02-28 at 22:35 +0200, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > Currently we're comparing the watermarks between the old and new
> > > > states
> > > > before we've fully computed the new watermarks. In particular
> > > > skl_build_pipe_wm() will not account for the amount of ddb space
> > > > we'll
> > > > have. That information is only available during skl_compute_ddb()
> > > > which will proceed to zero out any watermark level exceeding the
> > > > ddb allocation. If we're short on ddb space this will end up
> > > > adding the plane to the state due erronously determining that the
> > > > watermarks have changed. Fix the problem by deferring
> > > > skl_wm_add_affected_planes() until we have the final watermarks
> > > > computed.
> > > > =

> > > > Noticed this when trying enable transition watermarks on glk.
> > > > We now computed the trans_wm as 28, but we only had 14 blocks
> > > > of ddb, and thus skl_compute_ddb() ended up disabling the cursor
> > > > trans_wm every time. Thus we ended up adding the cursor to every
> > > > commit that didn't actually affect the cursor at all.
> > > > =

> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/intel_pm.c | 16 ++++++++++++----
> > > >  1 file changed, 12 insertions(+), 4 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > > b/drivers/gpu/drm/i915/intel_pm.c
> > > > index 39299811b650..a3d76e69caae 100644
> > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > @@ -5762,16 +5762,24 @@ skl_compute_wm(struct intel_atomic_state
> > > > *state)
> > > >  		ret =3D skl_build_pipe_wm(new_crtc_state);
> > > >  		if (ret)
> > > >  			return ret;
> > > > -
> > > > -		ret =3D skl_wm_add_affected_planes(state, crtc);
> > > > -		if (ret)
> > > > -			return ret;
> > > >  	}
> > > >  =

> > > >  	ret =3D skl_compute_ddb(state);
> > > >  	if (ret)
> > > >  		return ret;
> > > >  =

> > > > +	/*
> > > > +	 * skl_compute_ddb() will have adjusted the final watermarks
> > > > +	 * based on how much ddb is available. Now we can actually
> > > > +	 * check if the final watermarks changed.
> > > > +	 */
> > > > +	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > > old_crtc_state,
> > > > +					    new_crtc_state, i) {
> > > > +		ret =3D skl_wm_add_affected_planes(state, crtc);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > =

> > > skl_compute_ddb() is already calling skl_wm_add_affected_planes()
> > > after
> > > do the ddb allocation for each pipe, so we could remove this chunk,
> > =

> > skl_compute_ddb() calls skl_*ddb*_add_affected_planes(), which is a
> > different thing..
> =

> Thanks

No, thank you for the review. Series pushed to dinq.

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > =

> > > with that:
> > > =

> > > Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > =

> > > > +
> > > >  	skl_print_wm_changes(state);
> > > >  =

> > > >  	return 0;

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
