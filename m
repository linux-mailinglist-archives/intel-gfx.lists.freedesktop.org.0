Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3D0151BA0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F006EF27;
	Tue,  4 Feb 2020 13:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D7C6EF27
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:47:51 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:47:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="219753576"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Feb 2020 05:47:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 15:47:41 +0200
Date: Tue, 4 Feb 2020 15:47:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200204134741.GK13686@intel.com>
References: <20200128235241.169694-1-jose.souza@intel.com>
 <20200128235241.169694-2-jose.souza@intel.com>
 <20200129114257.GR13686@intel.com>
 <3ab6b8071f4af31d0c6059748c6b5c54bfabd587.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ab6b8071f4af31d0c6059748c6b5c54bfabd587.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dgfx: Do not write in removed
 FBC fence registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 04, 2020 at 02:06:23AM +0000, Souza, Jose wrote:
> On Wed, 2020-01-29 at 13:42 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Jan 28, 2020 at 03:52:41PM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > =

> > > dgfx platforms do not support CPU fence and FBC host tracking so
> > > lets avoid write to removed registers.
> > > =

> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com
> > > >
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 7 ++++++-
> > >  1 file changed, 6 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 1f0d24a1dec1..12900b8ce28e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -314,7 +314,12 @@ static void gen7_fbc_activate(struct
> > > drm_i915_private *dev_priv)
> > >  		break;
> > >  	}
> > >  =

> > > -	if (params->fence_id >=3D 0) {
> > > +	if (IS_DGFX(dev_priv)) {
> > > +		/*
> > > +		 * dGFX GPUs don't have apperture or fences and only
> > > rely on FBC
> > > +		 * render nuke to track frontbuffer modifications
> > > +		 */
> > > +	} else if (params->fence_id >=3D 0) {
> > >  		dpfc_ctl |=3D IVB_DPFC_CTL_FENCE_EN;
> > >  		intel_de_write(dev_priv, SNB_DPFC_CTL_SA,
> > >  			       SNB_CPU_FENCE_ENABLE | params-
> > > >fence_id);
> > =

> > if (fence) {
> > 	do stuff
> > } else if (num_fences) {
> > 	do other stuff
> > }
> =

> Did not get what you want here.

Don't add a silly looking empty if block.

And don't make the assumption that dgfx is the only thing that
has no fences, instead actually check if we have fences or not.

> It is covering all cases:
> - DGFX that don't have the registers
> - Setting the registers when fence_id >=3D 0
> - Clearing the register when fences_id =3D=3D -1
> =

> > =

> > > -- =

> > > 2.25.0
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
