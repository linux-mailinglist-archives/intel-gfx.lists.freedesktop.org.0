Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AA42C6819
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63996EE00;
	Fri, 27 Nov 2020 14:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966936EE00
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 14:45:48 +0000 (UTC)
IronPort-SDR: XkJBKrnZSsNA+sKqxGJWOAc7c7nIuznvbbMhWmpRtV9WHOVNQj7HTh3j0/j5ketBhiYqf131ur
 9+FSfNrHEWTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="151657006"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="151657006"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 06:45:48 -0800
IronPort-SDR: KBpz/Ug1wrDwmB6cXmIJUwwugEMuk1tq2PothIc640dXverG0gWre432zb7XEVh9HGJNr6+0/l
 +IdejPWiZCZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="371595597"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Nov 2020 06:45:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Nov 2020 16:45:45 +0200
Date: Fri, 27 Nov 2020 16:45:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201127144545.GN6112@intel.com>
References: <20201119155050.20328-2-uma.shankar@intel.com>
 <20201119193614.25914-1-uma.shankar@intel.com>
 <d5698ec6956ff3f0df5d3bcce9b836fcd06ef7d0.camel@intel.com>
 <20201125161755.GN6112@intel.com>
 <ae57f8e2ddc7a2bda0d6f741d411c2a0b59efa80.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae57f8e2ddc7a2bda0d6f741d411c2a0b59efa80.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

On Wed, Nov 25, 2020 at 05:52:10PM +0000, Souza, Jose wrote:
> On Wed, 2020-11-25 at 18:17 +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Nov 24, 2020 at 10:03:35PM +0000, Souza, Jose wrote:
> > > On Fri, 2020-11-20 at 01:06 +0530, Uma Shankar wrote:
> > > > There are some corner cases wrt underrun when we enable
> > > > FBC with PSR2 on TGL. Recommendation from hardware is to
> > > > keep this combination disabled.
> > > > =

> > > > Bspec: 50422 HSD: 14010260002
> > > > =

> > > > v2: Added psr2 enabled check from crtc_state (Anshuman)
> > > > Added Bspec link and HSD referneces (Jose)
> > > > =

> > > > v3: Moved the logic to disable fbc to intel_fbc_update_state_cache
> > > > and removed the crtc->config usages, as per Ville's recommendation.
> > > > =

> > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > > =A0drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
> > > > =A01 file changed, 9 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu=
/drm/i915/display/intel_fbc.c
> > > > index a5b072816a7b..cb29c6f068f9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > @@ -701,6 +701,15 @@ static void intel_fbc_update_state_cache(struc=
t intel_crtc *crtc,
> > > > =A0	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > > =A0
> > > > =

> > > > =

> > > > =

> > > > =A0	cache->plane.visible =3D plane_state->uapi.visible;
> > > > +
> > > > +	/*
> > > > +	 * Tigerlake is not supporting FBC with PSR2.
> > > > +	 * Recommendation is to keep this combination disabled
> > > > +	 * Bspec: 50422 HSD: 14010260002
> > > > +	 */
> > > > +	if (crtc_state->has_psr2 && IS_TIGERLAKE(dev_priv))
> > > > +		cache->plane.visible =3D false;
> > > =

> > > Looks like a hack to me, would be better add a psr2 variable in intel=
_fbc_state_cache.
> > =

> > The plan is to remove most things from that cache anyway since it's
> > mostly pointless stuff that should just be handled directly via
> > the plane/crtc states. Not really convinced it makes sense to add
> > more crap to it at this time. So IMO this is good enough for now.
> =

> When this will happen? if soon okay.
> If there is no ETA IMHO is better do the right thing.

I was hoping to get back to it soon, but looks like there's
quite a bit more urgent work ahead for the moment. So don't
know when I'll get back to this.

So I guess path of least resitance would be for Uma to respin
with your suggested approach. It was one of the solutions I
also suggested originally, but I did also suggest this simpler
version Uma actually did.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
