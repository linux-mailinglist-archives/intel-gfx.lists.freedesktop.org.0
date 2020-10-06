Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B952848F5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076EC89991;
	Tue,  6 Oct 2020 09:06:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0AF189991
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:06:18 +0000 (UTC)
IronPort-SDR: uB0nolVrMB1m5r3sTxYQaarvg4a63SL8UitjGrhaP+0SLJrvZkBwN7uMUzCGzVDPUgk4s6Qt9M
 jHJfnvVRA87w==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151350731"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="151350731"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:06:18 -0700
IronPort-SDR: xK3wqFL2EV5/K/mxS5Q2MVAoR46bBMT8VoAiF9Bn6Osgjk7NxBttzEOZ9NnwbcmqS7eJHZxfo7
 EV6eg19oLN2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="315536988"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 06 Oct 2020 02:06:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 12:06:15 +0300
Date: Tue, 6 Oct 2020 12:06:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20201006090615.GT6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-4-uma.shankar@intel.com>
 <20200929161417.GA6112@intel.com>
 <8c528c8d789647c6b4fcdf121c1e88b2@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c528c8d789647c6b4fcdf121c1e88b2@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 03/11] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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

On Mon, Oct 05, 2020 at 09:32:22PM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, September 29, 2020 9:44 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [v6 03/11] drm/i915/display: Attach HDR property for capab=
le Gen9
> > devices
> > =

> > On Tue, Sep 15, 2020 at 02:30:39AM +0530, Uma Shankar wrote:
> > > Attach HDR property for Gen9 devices with MCA LSPCON chips.
> > >
> > > v2: Cleaned HDR property attachment logic based on capability as per
> > > Jani Nikula's suggestion.
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > index 5e2d7ca1d20f..fd05210f4405 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > @@ -626,6 +626,11 @@ bool lspcon_init(struct intel_digital_port
> > > *dig_port)
> > >
> > >  	lspcon_detect_hdr_capability(lspcon);
> > >
> > > +	if (lspcon->hdr_supported)
> > > +		drm_object_attach_property(&connector->base,
> > > +					   connector->dev-
> > >mode_config.hdr_output_metadata_property,
> > > +					   0);
> > =

> > Hmm. This hdr capability detection is going to cause us extra grief whe=
n looking
> > at Kai-Heng's patch to defer lspcon detection until hotplug time. Not q=
uite sure
> > what to do about that though.
> =

> Yeah Ville, saw your comments and with Kai's change merge, I am thinking =
how to attach
> this dynamically. =


Not allowed. =


> =

> Can we just assume that Lspcon will support HDR as is the case in Gen9. W=
e can just attach this
> unconditionally at init if Lspcon is exposed from VBT. Will this be accep=
table or Any better ideas ?

I have no idea what these lspcon chips supports since -ENODOCS.

The only idea I have is to attempt an early probe for this, and if it
fails on some chips due to hpd not being asserted so be it.

>  =

> > > +
> > >  	connector->ycbcr_420_allowed =3D true;
> > >  	lspcon->active =3D true;
> > >  	DRM_DEBUG_KMS("Success: LSPCON init\n");
> > > --
> > > 2.26.2
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
