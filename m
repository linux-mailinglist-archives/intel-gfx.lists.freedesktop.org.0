Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C322D275564
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 12:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232CE6E910;
	Wed, 23 Sep 2020 10:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615856E910
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 10:16:09 +0000 (UTC)
IronPort-SDR: ZmPV2kHZHBlaej47f2WPHLl6J4XEOq4OThXUC1fOjr+uAVTAf2AjuSKsp4sBaFgSk2ubDeByPO
 TU0IepMhq1fQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="158203615"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="158203615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 03:16:08 -0700
IronPort-SDR: zYYczR471vnl1C0plzUZ6Jvt5dJ4uiosbPEcAvOErbsu0b2iAmWeuXgDUjV7osTp8xY71Rqfb/
 OdI0JDJsUkDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="338609466"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2020 03:16:08 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 11:16:06 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 15:46:05 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [V13 5/5] drm/i915/dsi: Enable software vblank counter
Thread-Index: AQHWkOd8eMFB3K76OUOlFAnigQ7elal1on2AgABfqkA=
Date: Wed, 23 Sep 2020 10:16:05 +0000
Message-ID: <28ae2dd8415448fd90f0f2ee6c40130d@intel.com>
References: <20200922134426.9840-1-vandita.kulkarni@intel.com>
 <20200922134426.9840-6-vandita.kulkarni@intel.com>
 <20200923095939.GB6112@intel.com>
In-Reply-To: <20200923095939.GB6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
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

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 23, 2020 3:30 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [V13 5/5] drm/i915/dsi: Enable software vblank counter
> =

> On Tue, Sep 22, 2020 at 07:14:26PM +0530, Vandita Kulkarni wrote:
> > In case of DSI cmd mode, we get hw vblank counter updated after the TE
> > comes in, if we try to read the hw vblank counter in te handler we
> > wouldnt have the udpated vblank counter yet.
> > This will lead to a state where we would send the vblank event to the
> > user space in the next te, though the frame update would have
> > completed in the first TE duration itself.
> > Hence switch to using software timestamp based vblank counter.
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
> >  drivers/gpu/drm/i915/i915_irq.c              |  4 ++++
> >  2 files changed, 15 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c4f331f2af45..8b9e59e52708 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1808,6 +1808,17 @@ enum pipe intel_crtc_pch_transcoder(struct
> > intel_crtc *crtc)  static u32 intel_crtc_max_vblank_count(const struct
> > intel_crtc_state *crtc_state)  {
> >  	struct drm_i915_private *dev_priv =3D
> > to_i915(crtc_state->uapi.crtc->dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	u32 flags =3D crtc->mode_flags;
> =

> That's wrong. You need to look at the crtc_state instead.

Thanks,
I will use crtc_state.

I saw this happening =

crtc->mode_flags =3D crtc_state->mode_flags;
at intel_crtc_update_active_timings.

Thanks,
-Vandita
> =

> > +
> > +	/*
> > +	 * From Gen 11, In case of dsi cmd mode, frame counter wouldnt
> > +	 * have updated at the beginning of TE, if we want to use
> > +	 * the hw counter, then we would find it updated in only
> > +	 * the next TE, hence switching to sw counter.
> > +	 */
> > +	if (flags & (I915_MODE_FLAG_DSI_USE_TE0 |
> I915_MODE_FLAG_DSI_USE_TE1))
> > +		return 0;
> >
> >  	/*
> >  	 * On i965gm the hardware frame counter reads diff --git
> > a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index c2e4b227bdf3..634c60befe7e 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -682,8 +682,12 @@ u32 i915_get_vblank_counter(struct drm_crtc
> > *crtc)
> >  u32 g4x_get_vblank_counter(struct drm_crtc *crtc)  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> > +	struct drm_vblank_crtc *vblank =3D
> > +&dev_priv->drm.vblank[drm_crtc_index(crtc)];
> >  	enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
> >
> > +	if (!vblank->max_vblank_count)
> > +		return 0;
> > +
> >  	return I915_READ(PIPE_FRMCOUNT_G4X(pipe));
> >  }
> >
> > --
> > 2.21.0.5.gaeb582a
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
