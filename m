Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8882B6867
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:15:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84F989A92;
	Tue, 17 Nov 2020 15:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45A389A92
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:14:59 +0000 (UTC)
IronPort-SDR: dwZ3a1rzqaq4PGdRq1CWkjppkzSWESpYRLqtZZA8n7AN5jBInXVlBuP5EspJLf15q2vhpSY/G4
 nHlleD2bxgIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="167429331"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="167429331"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 07:14:59 -0800
IronPort-SDR: ERKNJySu/MQSXsmKOESCtLRPXfJCziBY/C3VXJn8QITVQ/ZwTTSbTFhUVHiGchDERzjzNhv86s
 SHou1yuof4mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="330107418"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 17 Nov 2020 07:14:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Nov 2020 17:14:56 +0200
Date: Tue, 17 Nov 2020 17:14:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <20201117151456.GC6112@intel.com>
References: <20201113220358.24794-1-ville.syrjala@linux.intel.com>
 <20201113220358.24794-17-ville.syrjala@linux.intel.com>
 <20201117000901.GA29250@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117000901.GA29250@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Add planes affected by
 bigjoiner to the state
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

On Mon, Nov 16, 2020 at 04:09:01PM -0800, Navare, Manasi wrote:
> On Sat, Nov 14, 2020 at 12:03:51AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Make sure both the bigjoiner "master" and "slave" plane are
> > in the state whenever either of them is in the state.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 465877097582..1118ff73c0d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -15069,6 +15069,44 @@ static bool active_planes_affects_min_cdclk(st=
ruct drm_i915_private *dev_priv)
> >  		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >=3D 11);
> >  }
> >  =

> > +static int intel_crtc_add_bigjoiner_planes(struct intel_atomic_state *=
state,
> > +					   struct intel_crtc *crtc,
> > +					   struct intel_crtc *other)
> > +{
> > +	const struct intel_plane_state *plane_state;
> > +	struct intel_plane *plane;
> > +	u8 plane_ids =3D 0;
> > +	int i;
> > +
> > +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> > +		if (plane->pipe =3D=3D crtc->pipe)
> > +			plane_ids |=3D BIT(plane->id);
> > +	}
> > +
> > +	return intel_crtc_add_planes_to_state(state, other, plane_ids);
> =

> We call this function intel_crtc_add_planes_to_state again in intel_atomi=
c_check_planes again at
> the end, so arent we adding the planes to state twice for both master and=
 slave?
> =

> Do we need some condition to avoid adding it again at the end of intel_at=
omic_check_planes ?

No. That other stuff is there for the min_cdclk calculation.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
