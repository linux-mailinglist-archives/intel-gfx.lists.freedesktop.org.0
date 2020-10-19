Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE03292AE1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFCF6E985;
	Mon, 19 Oct 2020 15:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D366E985
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 15:51:42 +0000 (UTC)
IronPort-SDR: A+L5vfkVVcMbKYm/nPckYuHtBmbx4Z4tMB+MAXUx1AnunYFsTaLZosotn+hXEPKeqtPWWhT9CF
 CRmkH5U1wAyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184665670"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="184665670"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:51:42 -0700
IronPort-SDR: 3/rUvbg9lb3561bAy/YGR5cSWk3Jb6NRM34nm+ak2fSQWy/yMnQi5bDSCnQJFQxGvgbsaaDcEz
 r9EfMJTYsirQ==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="532674846"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:51:41 -0700
Date: Mon, 19 Oct 2020 18:51:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201019155137.GI3199870@ideak-desk.fi.intel.com>
References: <20201016194800.25581-1-ville.syrjala@linux.intel.com>
 <20201019152701.GE3199870@ideak-desk.fi.intel.com>
 <20201019153434.GR6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019153434.GR6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Move the lspcon resume from
 .reset() to intel_dp_sink_dpms()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 19, 2020 at 06:34:34PM +0300, Ville Syrj=E4l=E4 wrote:
> On Mon, Oct 19, 2020 at 06:27:01PM +0300, Imre Deak wrote:
> > On Fri, Oct 16, 2020 at 10:47:59PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Rather that try to trick LSPCON back into PCON mode from the .reset()
> > > hook let's just do that as a regular part of the normal modeset
> > > sequence, which is going to take care of the system resume case. Duri=
ng
> > > a normal modeset this should normally be a nop as the mode should have
> > > already been switched by .detect().
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
> > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index 52075a241eaf..4784aaeb934e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3490,6 +3490,8 @@ void intel_dp_sink_dpms(struct intel_dp *intel_=
dp, int mode)
> > >  	} else {
> > >  		struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
> > >  =

> > > +		lspcon_resume(dp_to_dig_port(intel_dp));
> > =

> > Only applies when lspcon->active (the check could be moved to
> > lspcon_resume).
> =

> lspcon->active is mostly nonsense these days, and lspcon_resume()
> already checks it to se if it should take the resume or init path.
> I have no idea why there would be any difference between those paths
> anyway.

Ah ok, I was looking at an old version of the code, so this patch looks
ok.

> > =

> > With that fixed:
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > =

> > > +
> > >  		/*
> > >  		 * When turning on, we need to retry for 1ms to give the sink
> > >  		 * time to wake up.
> > > @@ -6782,14 +6784,11 @@ void intel_dp_encoder_reset(struct drm_encode=
r *encoder)
> > >  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->dev);
> > >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(to_intel_encoder(enco=
der));
> > > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > >  	intel_wakeref_t wakeref;
> > >  =

> > >  	if (!HAS_DDI(dev_priv))
> > >  		intel_dp->DP =3D intel_de_read(dev_priv, intel_dp->output_reg);
> > >  =

> > > -	lspcon_resume(dig_port);
> > > -
> > >  	intel_dp->reset_link_params =3D true;
> > >  =

> > >  	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv) &&
> > > -- =

> > > 2.26.2
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
