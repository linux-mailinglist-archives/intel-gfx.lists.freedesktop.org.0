Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B031E147379
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 22:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29FA6E141;
	Thu, 23 Jan 2020 21:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D40D6E141
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 21:59:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 13:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="228145567"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2020 13:59:27 -0800
Date: Thu, 23 Jan 2020 14:00:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200123220032.GA4379@intel.com>
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
 <2b07d85811faa1a630403742975914bf5fc1c7ec.camel@intel.com>
 <20200123183155.GW13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123183155.GW13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Do not set master_trans
 bit in bitmak if INVALID_TRANSCODER
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

On Thu, Jan 23, 2020 at 08:31:55PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Jan 23, 2020 at 06:25:29PM +0000, Souza, Jose wrote:
> > On Wed, 2020-01-22 at 16:24 -0800, Manasi Navare wrote:
> > > In the port sync mode, for the master crtc, the master_transcoder is
> > > INVALID.
> > > In that case since its value is -1, do not set the bit in the
> > > bitmask.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Fixes: d0eed1545fe7 ("drm/i915: Fix post-fastset modeset check for
> > > port sync")
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 878d331b9e8c..79f9054078ea 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -14649,8 +14649,10 @@ static int intel_atomic_check(struct
> > > drm_device *dev,
> > >  		}
> > >  =

> > >  		if (is_trans_port_sync_mode(new_crtc_state)) {
> > > -			u8 trans =3D new_crtc_state-
> > > >sync_mode_slaves_mask |
> > > -				   BIT(new_crtc_state-
> > > >master_transcoder);
> > > +			u8 trans =3D new_crtc_state-
> > > >sync_mode_slaves_mask;
> > > +
> > > +			if (new_crtc_state->master_transcoder !=3D
> > > INVALID_TRANSCODER)
> > > +				trans |=3D BIT(new_crtc_state-
> > > >master_transcoder);
> > =

> > Why not set master_transcoder in port sync master too? Would avoid have
> > this check here and in future other places.
> =

> Not how the hardware works. So would complicate hw readout and
> programming code needlessly.

Yes and thats how we identify that it is the master since its master trans =
is INVALID

Manasi

> =

> > =

> > >  =

> > >  			if (intel_cpu_transcoders_need_modeset(state,
> > > trans)) {
> > >  				new_crtc_state->uapi.mode_changed =3D
> > > true;
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
