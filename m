Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 219DE2509B3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 22:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C972E6E550;
	Mon, 24 Aug 2020 20:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9008D6E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 20:00:54 +0000 (UTC)
IronPort-SDR: qRfo0qFe8Q+idJQpGPgGM5yvopdhsaEoL0IiSp9M+2aG+I6ttPV+XTHqHSUbC8GFj6FnivgWv0
 vVqeBgTO6kHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="135527122"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="135527122"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 13:00:54 -0700
IronPort-SDR: DN5vuu6V+drfxLCC1e/YXWASnHFRs4/4yLvE7Iji82zMDB13drgWdqMkro6g4uDg3QKly6RJIU
 lMU5AX/2WEaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="336278094"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 24 Aug 2020 13:00:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Aug 2020 23:00:51 +0300
Date: Mon, 24 Aug 2020 23:00:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20200824200051.GL6112@intel.com>
References: <20200817074418.24045-1-uma.shankar@intel.com>
 <20200824181619.GJ6112@intel.com>
 <a9aa11e60f064837b106d1c93ee2b6fc@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9aa11e60f064837b106d1c93ee2b6fc@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wait
 before fbc activation
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

On Mon, Aug 24, 2020 at 07:46:30PM +0000, Shankar, Uma wrote:
> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Monday, August 24, 2020 11:46 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank =
wait
> > before fbc activation
> > =

> > On Mon, Aug 17, 2020 at 01:14:18PM +0530, Uma Shankar wrote:
> > > Add an extra vblank before fbc is activated.
> > > WA: 1409689360
> > > Corruption with FBC around plane 1A enabling. In the Frame Buffer
> > > Compression programming sequence "Display Plane Enabling with FBC"
> > > add a wait for vblank between plane enabling step 1 and FBC enabling
> > > step 2.
> > =

> > Already there due to drm_atomic_helper_wait_for_flip_done().
> =

> Hi Ville,
> __intel_fbc_post_update is also called through intel_fbc_flush. The extra=
 wait at that point seem
> to be taking care of this case as well.
> =

> We can add it in vblank worker as suggested by Maarten or do you feel thi=
s should be handled differently.

There's already supposed to be something that prevents the frontbuffer
stuff from racing with plane updates.

> =

> Regards,
> Uma Shankar
> =

> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 2ab32e6532ff..0ed252ff2c53 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -1085,10 +1085,12 @@ static void __intel_fbc_post_update(struct
> > intel_crtc *crtc)
> > >  	if (!intel_fbc_can_activate(crtc))
> > >  		return;
> > >
> > > -	if (!fbc->busy_bits)
> > > +	if (!fbc->busy_bits) {
> > > +		intel_wait_for_vblank(dev_priv, crtc->pipe);
> > >  		intel_fbc_hw_activate(dev_priv);
> > > -	else
> > > +	} else {
> > >  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> > > +	}
> > >  }
> > >
> > >  void intel_fbc_post_update(struct intel_atomic_state *state,
> > > --
> > > 2.22.0
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
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
