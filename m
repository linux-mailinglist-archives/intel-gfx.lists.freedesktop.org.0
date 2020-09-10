Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A2D26477B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A326E93F;
	Thu, 10 Sep 2020 13:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FBBE6E93F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:52:10 +0000 (UTC)
IronPort-SDR: Y8qpQeIutv2+g7+vy9lGc0FnOzkW8Bv1HQ+cb1Z3rfk15ln7/5vbcHawbqst9/7F47v/nlipgX
 xAUmOOu+Nqqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146254559"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146254559"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:52:09 -0700
IronPort-SDR: CUd3zz4AoYgxZv9B4jbxnguIHpc3cCnT5kziIiNeiGr9J0dYDz/cJ2cOqlj0We8E0wxTJ8uMRf
 rBOaTc3m+piw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="304886750"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 10 Sep 2020 06:52:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Sep 2020 16:52:06 +0300
Date: Thu, 10 Sep 2020 16:52:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20200910135206.GY6112@intel.com>
References: <20200910121153.6749-1-uma.shankar@intel.com>
 <878sdh21tq.fsf@intel.com>
 <fb5bd141583a40c3a33869da70e6ef2e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb5bd141583a40c3a33869da70e6ef2e@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for FBC
 activation within same frame
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

On Thu, Sep 10, 2020 at 01:42:23PM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Thursday, September 10, 2020 7:04 PM
> > To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.o=
rg
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait fo=
r FBC
> > activation within same frame
> > =

> > On Thu, 10 Sep 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> > > Add a vblank wait when fbc activation request comes for the same frame
> > > on TGL. This helps fix underrun related to fbc.
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 13 +++++++++++--
> > >  1 file changed, 11 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 135f5e8a4d70..3e1d715e4a4e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -1055,6 +1055,7 @@ static void __intel_fbc_post_update(struct
> > > intel_crtc *crtc)  {
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > > +	static u32 old_frame_cnt, new_frame_cnt;
> > =

> > In the strongest terms, do not add static data. These would be shared a=
cross
> > devices, which is certainly a bug.
> =

> Oh ok, yeah will remove this. I guess adding them to intel_fbc should be =
ok right ?

I didn't think we found what's really going on here. So this still
seems like random duct tape which just changs some timings.

> =

> Thanks & Regards,
> Uma Shankar
> =

> > BR,
> > Jani.
> > =

> > >
> > >  	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
> > >
> > > @@ -1075,10 +1076,18 @@ static void __intel_fbc_post_update(struct
> > intel_crtc *crtc)
> > >  	if (!intel_fbc_can_activate(crtc))
> > >  		return;
> > >
> > > -	if (!fbc->busy_bits)
> > > +	old_frame_cnt =3D new_frame_cnt;
> > > +	new_frame_cnt =3D intel_crtc_get_vblank_counter(crtc);
> > > +	if (!fbc->busy_bits) {
> > > +		if (IS_TIGERLAKE(dev_priv) &&
> > > +		    old_frame_cnt =3D=3D new_frame_cnt) {
> > > +			drm_dbg_kms(&dev_priv->drm, "Wait for vblank before
> > Activating FBC");
> > > +			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
> > > +		}
> > >  		intel_fbc_hw_activate(dev_priv);
> > > -	else
> > > +	} else {
> > >  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> > > +	}
> > >  }
> > >
> > >  void intel_fbc_post_update(struct intel_atomic_state *state,
> > =

> > --
> > Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
