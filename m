Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89039310D5A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:46:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C346F476;
	Fri,  5 Feb 2021 15:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D0D6F473
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:46:31 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id c12so8172012wrc.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Feb 2021 07:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=u7/SEuxGGSvFM5z0jDsJr4RJEXZQqJFQ1pl7RdrOS98=;
 b=Z/eoqfWBxwZ/W2rEqpKdTLi2fo3bgkS/h1YY3EKe6gCPQ3n5bjVH4v+HLxNhtb2R1y
 g+8+1Y2T5RGYjNLVBqntdJJ+un1ajfX9as+XycVTsnv99ZVhVlAqCb5IgQVokK9a4kyN
 x3w4YwZPsXEdF712drA8fTHLKh+969eg5fxIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=u7/SEuxGGSvFM5z0jDsJr4RJEXZQqJFQ1pl7RdrOS98=;
 b=IQkLrmFKl1d/k9f8x4yJP8i8EdF4tZlr9I55LxYs2SiSft6hwf6/F2v5zITqgE1VRL
 rUELCpaueY2aPVIgqGlBdR8VHUmuE+sDeIN6snOnetub+LEZ6m5Ui4Al+sKdjbt9iFmm
 uEzdgwcoMUG5KWNsdZKcTKRMPhzh6G+bKHsIXgYtaztdo3cHHQ8jDjakegfZMuVnoYlu
 kIn9/u0y+SPcpuSWIAmm7gmApQQH8d0FeyVMXLeyOEcHKyo24cZgbigJmimo8IKzPDa8
 HKywbp/aAR7/UGeWW5UfuzKEn794mQGteapaf8CTbK78c+CjIdpGgm0qHSyvfOHzljNm
 AKBg==
X-Gm-Message-State: AOAM532ipH3JysQiNxs0qkA6HRyw3PdWw5A9iyTzmhrf4JCB5NhOCoF2
 GDtdxd57T+AgadyH71uKVzrGxA==
X-Google-Smtp-Source: ABdhPJz1uu37n/Ve0IhcDHT+Qsa7AZj2hRN+Msh59y87I6TiAg+GOL/u5CF2lNYUekYTivYeYqoZEg==
X-Received: by 2002:a05:6000:8c:: with SMTP id
 m12mr5726096wrx.101.1612539990351; 
 Fri, 05 Feb 2021 07:46:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q9sm10386588wme.18.2021.02.05.07.46.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 07:46:29 -0800 (PST)
Date: Fri, 5 Feb 2021 16:46:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YB1oU6asAR3ki4ZT@phenom.ffwll.local>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <YBwTgHwZwMr8PwMr@phenom.ffwll.local> <YBwY8DZnrPNXYvfy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YBwY8DZnrPNXYvfy@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
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
 dri-devel@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 05:55:28PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Feb 04, 2021 at 04:32:16PM +0100, Daniel Vetter wrote:
> > On Thu, Feb 04, 2021 at 04:04:00AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > drm_vblank_restore() exists because certain power saving states
> > > can clobber the hardware frame counter. The way it does this is
> > > by guesstimating how many frames were missed purely based on
> > > the difference between the last stored timestamp vs. a newly
> > > sampled timestamp.
> > > =

> > > If we should call this function before a full frame has
> > > elapsed since we sampled the last timestamp we would end up
> > > with a possibly slightly different timestamp value for the
> > > same frame. Currently we will happily overwrite the already
> > > stored timestamp for the frame with the new value. This
> > > could cause userspace to observe two different timestamps
> > > for the same frame (and the timestamp could even go
> > > backwards depending on how much error we introduce when
> > > correcting the timestamp based on the scanout position).
> > > =

> > > To avoid that let's not update the stored timestamp unless we're
> > > also incrementing the sequence counter. We do still want to update
> > > vblank->last with the freshly sampled hw frame counter value so
> > > that subsequent vblank irqs/queries can actually use the hw frame
> > > counter to determine how many frames have elapsed.
> > =

> > Hm I'm not getting the reason for why we store the updated hw vblank
> > counter?
> =

> Because next time a vblank irq happens the code will do:
> diff =3D current_hw_counter - vblank->last
> =

> which won't work very well if vblank->last is garbage.
> =

> Updating vblank->last is pretty much why drm_vblank_restore()
> exists at all.

Oh sure, _restore has to update this, together with the timestamp.

But your code adds such an update where we update the hw vblank counter,
but not the timestamp, and that feels buggy. Either we're still in the
same frame, and then we should story nothing. Or we advanced, and then we
probably want a new timestampt for that frame too.

Advancing the vblank counter and not advancing the timestamp sounds like a
bug in our code.

> > There's definitely a race when we grab the hw timestamp at a bad time
> > (which can't happen for the irq handler, realistically), so maybe we
> > should first adjust that to make sure we never store anything inconsist=
ent
> > in the vblank state?
> =

> Not sure what race you mean, or what inconsistent thing we store?

For the drm_handle_vblank code we have some fudge so we don't compute
something silly when the irq fires (like it often does) before
top-of-frame. Ofc that fudge is inheritedly racy, if the irq is extremely
delay (almost an entire frame) we'll get it wrong.

In practice it doesn't matter.

Now _restore can be called anytime, so we might end up in situations where
the exact point where we jump to the next frame count, and the exact time
where the hw counter jumps, don't lign up. And I think in that case funny
things can happen, and I'm not sure your approach of "update hw counter
but don't update timestamp" is the right way.

I think if we instead ignore any update if our fudge-corrected timestamp
is roughly the same, then we handle that race correctly and there's no
jumping around.

Cheers, Daniel

> > And when we have that we should be able to pull the inc =3D=3D 0 check =
out
> > into _restore(), including comment. Which I think should be cleaner.
> > =

> > Or I'm totally off with why you want to store the hw vblank counter?
> > =

> > > =

> > > Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/drm_vblank.c | 11 +++++++++++
> > >  1 file changed, 11 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblan=
k.c
> > > index 893165eeddf3..e127a7db2088 100644
> > > --- a/drivers/gpu/drm/drm_vblank.c
> > > +++ b/drivers/gpu/drm/drm_vblank.c
> > > @@ -176,6 +176,17 @@ static void store_vblank(struct drm_device *dev,=
 unsigned int pipe,
> > >  =

> > >  	vblank->last =3D last;
> > >  =

> > > +	/*
> > > +	 * drm_vblank_restore() wants to always update
> > > +	 * vblank->last since we can't trust the frame counter
> > > +	 * across power saving states. But we don't want to alter
> > > +	 * the stored timestamp for the same frame number since
> > > +	 * that would cause userspace to potentially observe two
> > > +	 * different timestamps for the same frame.
> > > +	 */
> > > +	if (vblank_count_inc =3D=3D 0)
> > > +		return;
> > > +
> > >  	write_seqlock(&vblank->seqlock);
> > >  	vblank->time =3D t_vblank;
> > >  	atomic64_add(vblank_count_inc, &vblank->count);
> > > -- =

> > > 2.26.2
> > > =

> > =

> > -- =

> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
