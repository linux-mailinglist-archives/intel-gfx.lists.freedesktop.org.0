Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F0B30F6D6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269A06EE00;
	Thu,  4 Feb 2021 15:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A1BF6EE00;
 Thu,  4 Feb 2021 15:55:33 +0000 (UTC)
IronPort-SDR: FRhrA0uOvrMs+9fLqQVDwhZU8S95pu0qgfS/gRwnDkOPAqZhXnR0+nAw59MybD+cX2bKONBwO8
 L6M1fu1PZ/Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181416502"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="181416502"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:55:32 -0800
IronPort-SDR: hiAtXohmyZyMoXcITk8rN7pID1qP2jyxKtQbr6MWbq9OnS6kmOzuj6/kh1KFXFYLDKdIPuABUN
 +rUUd7bXK5iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="483340914"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Feb 2021 07:55:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 17:55:28 +0200
Date: Thu, 4 Feb 2021 17:55:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YBwY8DZnrPNXYvfy@intel.com>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <YBwTgHwZwMr8PwMr@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBwTgHwZwMr8PwMr@phenom.ffwll.local>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/vblank: Avoid storing a timestamp for
 the same frame twice
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 04:32:16PM +0100, Daniel Vetter wrote:
> On Thu, Feb 04, 2021 at 04:04:00AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > drm_vblank_restore() exists because certain power saving states
> > can clobber the hardware frame counter. The way it does this is
> > by guesstimating how many frames were missed purely based on
> > the difference between the last stored timestamp vs. a newly
> > sampled timestamp.
> > =

> > If we should call this function before a full frame has
> > elapsed since we sampled the last timestamp we would end up
> > with a possibly slightly different timestamp value for the
> > same frame. Currently we will happily overwrite the already
> > stored timestamp for the frame with the new value. This
> > could cause userspace to observe two different timestamps
> > for the same frame (and the timestamp could even go
> > backwards depending on how much error we introduce when
> > correcting the timestamp based on the scanout position).
> > =

> > To avoid that let's not update the stored timestamp unless we're
> > also incrementing the sequence counter. We do still want to update
> > vblank->last with the freshly sampled hw frame counter value so
> > that subsequent vblank irqs/queries can actually use the hw frame
> > counter to determine how many frames have elapsed.
> =

> Hm I'm not getting the reason for why we store the updated hw vblank
> counter?

Because next time a vblank irq happens the code will do:
diff =3D current_hw_counter - vblank->last

which won't work very well if vblank->last is garbage.

Updating vblank->last is pretty much why drm_vblank_restore()
exists at all.

> There's definitely a race when we grab the hw timestamp at a bad time
> (which can't happen for the irq handler, realistically), so maybe we
> should first adjust that to make sure we never store anything inconsistent
> in the vblank state?

Not sure what race you mean, or what inconsistent thing we store?

> =

> And when we have that we should be able to pull the inc =3D=3D 0 check out
> into _restore(), including comment. Which I think should be cleaner.
> =

> Or I'm totally off with why you want to store the hw vblank counter?
> =

> > =

> > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/drm_vblank.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> > index 893165eeddf3..e127a7db2088 100644
> > --- a/drivers/gpu/drm/drm_vblank.c
> > +++ b/drivers/gpu/drm/drm_vblank.c
> > @@ -176,6 +176,17 @@ static void store_vblank(struct drm_device *dev, u=
nsigned int pipe,
> >  =

> >  	vblank->last =3D last;
> >  =

> > +	/*
> > +	 * drm_vblank_restore() wants to always update
> > +	 * vblank->last since we can't trust the frame counter
> > +	 * across power saving states. But we don't want to alter
> > +	 * the stored timestamp for the same frame number since
> > +	 * that would cause userspace to potentially observe two
> > +	 * different timestamps for the same frame.
> > +	 */
> > +	if (vblank_count_inc =3D=3D 0)
> > +		return;
> > +
> >  	write_seqlock(&vblank->seqlock);
> >  	vblank->time =3D t_vblank;
> >  	atomic64_add(vblank_count_inc, &vblank->count);
> > -- =

> > 2.26.2
> > =

> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
