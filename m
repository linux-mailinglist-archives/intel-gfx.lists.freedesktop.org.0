Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D66275674
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 12:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EDB46E915;
	Wed, 23 Sep 2020 10:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8491D6E915
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 10:35:15 +0000 (UTC)
IronPort-SDR: TbyNUUAD4WIdMT4w4lHQapBWWiLGOUK2Cd+wmCSqgpTyNHiI1Oo9lMyKUAsIUrLahbTQX9VVYU
 e19KB0K7HiDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="148593443"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="148593443"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 03:35:15 -0700
IronPort-SDR: 1GKvjVdmizs8n1xGyQfXf1FDqtCMR7TPWhpf1B0ZBeODBkcKc/unHS+wRk4EjM/4hA28ZuqtWo
 67xof7n9536w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="348836980"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Sep 2020 03:35:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Sep 2020 13:35:12 +0300
Date: Wed, 23 Sep 2020 13:35:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Message-ID: <20200923103512.GF6112@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-6-vandita.kulkarni@intel.com>
 <20200923095939.GB6112@intel.com>
 <28ae2dd8415448fd90f0f2ee6c40130d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28ae2dd8415448fd90f0f2ee6c40130d@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [V13 5/5] drm/i915/dsi: Enable software vblank
 counter
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 23, 2020 at 10:16:05AM +0000, Kulkarni, Vandita wrote:
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, September 23, 2020 3:30 PM
> > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.co=
m>
> > Subject: Re: [V13 5/5] drm/i915/dsi: Enable software vblank counter
> > =

> > On Tue, Sep 22, 2020 at 07:14:26PM +0530, Vandita Kulkarni wrote:
> > > In case of DSI cmd mode, we get hw vblank counter updated after the TE
> > > comes in, if we try to read the hw vblank counter in te handler we
> > > wouldnt have the udpated vblank counter yet.
> > > This will lead to a state where we would send the vblank event to the
> > > user space in the next te, though the frame update would have
> > > completed in the first TE duration itself.
> > > Hence switch to using software timestamp based vblank counter.
> > >
> > > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
> > >  drivers/gpu/drm/i915/i915_irq.c              |  4 ++++
> > >  2 files changed, 15 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index c4f331f2af45..8b9e59e52708 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1808,6 +1808,17 @@ enum pipe intel_crtc_pch_transcoder(struct
> > > intel_crtc *crtc)  static u32 intel_crtc_max_vblank_count(const struct
> > > intel_crtc_state *crtc_state)  {
> > >  	struct drm_i915_private *dev_priv =3D
> > > to_i915(crtc_state->uapi.crtc->dev);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	u32 flags =3D crtc->mode_flags;
> > =

> > That's wrong. You need to look at the crtc_state instead.
> =

> Thanks,
> I will use crtc_state.

I'd also frop the 'flags' variable. Single use so not much point.
Or at the very least call it 'mode_flags' so we know what it
actually is.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
