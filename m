Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AACD531FFDB
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 21:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2704E6EC0D;
	Fri, 19 Feb 2021 20:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D392C6EC0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 20:33:54 +0000 (UTC)
IronPort-SDR: LVivcxz+UsU5GKOLOmzlBAzCMoGOYhti7GxQgQZJ2m9fdQVmtGCN7efSTYM0ppraOteokirwEt
 h0pDcWOdyiqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="181403604"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="181403604"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 12:33:54 -0800
IronPort-SDR: eyCZSylUXoiTFB0miGv7NyRNjjiR3LWeIf9oL6GiUbUlN7IGTaJuAU77KXv2ACR6lkNbfGOk6v
 2QIC1iV8fynQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="402151224"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 19 Feb 2021 12:33:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Feb 2021 22:33:50 +0200
Date: Fri, 19 Feb 2021 22:33:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YDAgri5FaAIIczRQ@intel.com>
References: <20210219191623.163775-1-jose.souza@intel.com>
 <YDAVngWZmA1KAqTy@intel.com>
 <3c15a574a5673471c2e3b747e24e4608c3b49f31.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c15a574a5673471c2e3b747e24e4608c3b49f31.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Read planes watermarks
 during initial state readout
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

On Fri, Feb 19, 2021 at 08:16:25PM +0000, Souza, Jose wrote:
> On Fri, 2021-02-19 at 21:46 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 19, 2021 at 11:16:23AM -0800, Jos=E9 Roberto de Souza wrote:
> > > Without this readout all plane watermarks will be kept at zero in the
> > > initial state readount causing two problems.
> > > =

> > > All active planes will always have their watermarks programmed
> > > again, even if what firmware programmed matches with the sanitized
> > > state during driver takeover.
> > > =

> > > State mismatch errors in disabled planes as watermarks will erroneous
> > > match with the calculated state if firmware left watermark registers
> > > with non-zero values.
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > > =A0drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> > > =A01 file changed, 2 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index d0da88751c72..14fba4411be7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13620,6 +13620,8 @@ static void intel_modeset_readout_hw_state(st=
ruct drm_device *dev)
> > > =A0			drm_calc_timestamping_constants(&slave->base,
> > > =A0							&slave_crtc_state->hw.adjusted_mode);
> > > =A0		}
> > > +
> > > +		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> > =

> > Strange. skl_wm_get_hw_state() should be doing this already.
> =

> It is only doing some ddb readouts noting related to plane watermarks, ma=
ybe call skl_pipe_wm_get_hw_state() from there would be better?

The call is definitely there in my copy of the code:

skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
{
 	struct intel_dbuf_state *dbuf_state =3D
                to_intel_dbuf_state(dev_priv->dbuf.obj.state);
        struct intel_crtc *crtc;

        for_each_intel_crtc(&dev_priv->drm, crtc) {
                struct intel_crtc_state *crtc_state =3D
                        to_intel_crtc_state(crtc->base.state);
                enum pipe pipe =3D crtc->pipe;
                enum plane_id plane_id;

                skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
		...


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
