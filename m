Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F6511EC0C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA8796ED07;
	Fri, 13 Dec 2019 20:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6083C6ED07
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:49:41 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="297031961"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 13 Dec 2019 12:49:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 22:49:37 +0200
Date: Fri, 13 Dec 2019 22:49:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191213204937.GG1208@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-4-manasi.d.navare@intel.com>
 <20191213200637.GE1208@intel.com>
 <20191213204012.GE19224@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213204012.GE19224@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dp: Disable Port sync mode
 correctly on teardown
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 12:40:13PM -0800, Manasi Navare wrote:
> On Fri, Dec 13, 2019 at 10:06:37PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Dec 11, 2019 at 01:14:25PM -0800, Manasi Navare wrote:
> > > While clearing the Ports ync mode enable and master select bits
> > > we need to make sure that we perform a RMW for disable else
> > > it sets the other bits casuing unwanted sideeffects.
> > > =

> > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Fixes: 51528afe7c5e ("drm/i915/display/icl: Disable transcoder port s=
ync as part of crtc_disable() sequence")
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index c0a2dab3fe67..3fccda0f1f36 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -4599,7 +4599,8 @@ static void icl_disable_transcoder_port_sync(co=
nst struct intel_crtc_state *old_
> > >  		      transcoder_name(old_crtc_state->cpu_transcoder));
> > >  =

> > >  	reg =3D TRANS_DDI_FUNC_CTL2(old_crtc_state->cpu_transcoder);
> > > -	trans_ddi_func_ctl2_val =3D ~(PORT_SYNC_MODE_ENABLE |
> > > +	trans_ddi_func_ctl2_val =3D I915_READ(reg);
> > > +	trans_ddi_func_ctl2_val &=3D ~(PORT_SYNC_MODE_ENABLE |
> > >  				    PORT_SYNC_MODE_MASTER_SELECT_MASK);
> > >  	I915_WRITE(reg, trans_ddi_func_ctl2_val);
> > =

> > I915_WRITE(TRANS_DDI_FUNC_CTL2, 0);
> =

> So not even consider the other values that might have been set in this re=
g?
> You would prefer setting this to 0 directly?
> Right now i do see that no other bits are set, but things can change when=
 we
> start using DSI port sync mode or genlock mode etc.

No point in making it more complicated than it has to be.
In fact after the series I just posted we should probably just
suck this whole thing into intel_ddi_{enable,disable}_transcoder_func()
since on older platforms these bits live in TRANS_DDI_FUNC_CTL itself.

> =

> Manasi
> =

> > =

> > >  }
> > > -- =

> > > 2.19.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
