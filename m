Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4E62CB06A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E944B6E948;
	Tue,  1 Dec 2020 22:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DEB6E948
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:46:35 +0000 (UTC)
IronPort-SDR: 1lsiOIaMppluYdwE/+FGZkjaqMWbDM30dZy916RtTlFDFpZY1gNfk0387fd95W66QK+JOQ4YOZ
 wjR1CHR+bU3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="159975308"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="159975308"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:46:34 -0800
IronPort-SDR: C36dTxwMGb1G4tT2RoSHJaqKWQSCujjSTuEHpblWA5KcljGsQbmoQfKMKDwrubLKIGOwm3gHlO
 CVEmFbw0ZgOw==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="364996520"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:46:34 -0800
Date: Tue, 1 Dec 2020 14:49:30 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201201224930.GA22644@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-5-manasi.d.navare@intel.com>
 <87r1p1sdch.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1p1sdch.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/display/dp: Add VRR crtc
 state variables
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

On Tue, Nov 10, 2020 at 12:41:50PM +0200, Jani Nikula wrote:
> On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> > Introduce VRR struct in intel_crtc_state and add
> > VRR crtc state variables Enable, Vtotalmin and Vtotalmax
> > to be derived from mode timings and VRR crtc property.
> =

> I'd squash this to the patch actually using it.

Okay will squash with Patch 5

Manasi

> =

> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index f6f0626649e0..f6f7ec024da7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1092,6 +1092,13 @@ struct intel_crtc_state {
> >  	struct intel_dsb *dsb;
> >  =

> >  	u32 psr2_man_track_ctl;
> > +
> > +	/* Variable Refresh Rate state */
> > +	struct {
> > +		bool enable;
> > +		u16 vtotalmin;
> > +		u16 vtotalmax;
> > +	} vrr;
> >  };
> >  =

> >  enum intel_pipe_crc_source {
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
