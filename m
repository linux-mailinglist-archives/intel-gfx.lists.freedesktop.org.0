Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6A14737D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 23:03:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88356E156;
	Thu, 23 Jan 2020 22:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991916E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 22:03:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 14:03:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="221738780"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jan 2020 14:03:20 -0800
Date: Thu, 23 Jan 2020 14:04:26 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200123220426.GB4379@intel.com>
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
 <20200123140128.GR13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123140128.GR13686@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 23, 2020 at 04:01:28PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Jan 22, 2020 at 04:24:14PM -0800, Manasi Navare wrote:
> > In the port sync mode, for the master crtc, the master_transcoder is IN=
VALID.
> > In that case since its value is -1, do not set the bit in the bitmask.
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Fixes: d0eed1545fe7 ("drm/i915: Fix post-fastset modeset check for port=
 sync")
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thanks for the review, I think populating master transcoder in master would=
 also need us
to change all the helpers for is_trans_port_sync_mode and the readout and t=
he commit_modeset_enables logic.
Its doable but too risky to change at this point incase it causes any regre=
ssions.

Still assume your r-b on this?

Manasi
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 878d331b9e8c..79f9054078ea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14649,8 +14649,10 @@ static int intel_atomic_check(struct drm_devic=
e *dev,
> >  		}
> >  =

> >  		if (is_trans_port_sync_mode(new_crtc_state)) {
> > -			u8 trans =3D new_crtc_state->sync_mode_slaves_mask |
> > -				   BIT(new_crtc_state->master_transcoder);
> > +			u8 trans =3D new_crtc_state->sync_mode_slaves_mask;
> > +
> > +			if (new_crtc_state->master_transcoder !=3D INVALID_TRANSCODER)
> > +				trans |=3D BIT(new_crtc_state->master_transcoder);
> >  =

> >  			if (intel_cpu_transcoders_need_modeset(state, trans)) {
> >  				new_crtc_state->uapi.mode_changed =3D true;
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
