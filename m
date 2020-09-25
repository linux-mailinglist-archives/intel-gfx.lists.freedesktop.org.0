Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 598DD27830B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 10:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BD36EC5A;
	Fri, 25 Sep 2020 08:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CA16EC5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 08:45:16 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id o5so2599941wrn.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 01:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZnwReSneJ0EO6tWXOlzzoVfdgoKgSlfHWIcUmw1JhbA=;
 b=hszl6QUtZrcVG7xoM6AvT9Ozl1zkctTNylIsk++ekkW5wMJBImOUuMmaiBJoAv0z5l
 bJ3dkFI3PjTbGWziETF0I7sMCJFd5obZQuKfff3bY7/HEt+vz2j6lVziKzdbsj+I6F8q
 PcM8rbsKL0VpZ4hFxHwg7sDI+wl7PNn9IillM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZnwReSneJ0EO6tWXOlzzoVfdgoKgSlfHWIcUmw1JhbA=;
 b=LQDU3nmEuurSRPorkGcHY92G9ql7QCL+MU+TgnlSCUU6vPR9Umjrpf/uojwWBiDSHA
 6hGucQbJnaiPYRlTvm+2Jkb7QlRYrTNj4YRP2qI/BbmWoHiuQN6rN5IVllbXMhGSVuJt
 BEYZL1yYY3WV5KAOBowWGw3mx8DruBwkjcidSZyrUAmYpXvXteSVUw+on0ZSd8Fx5Dhu
 VT2N56FcyH32CBn/kifpOcH6jMWlrdr5kjpYKkGNTCRO8lHSzp4vyPD3qAx0EbygsHQX
 hfBaSkH40ILmRwvOzsSzU7dLzejcrnpAHOZJRr//HFLxxIAhRoqScjGw9d3lE9rRfd7n
 FZAw==
X-Gm-Message-State: AOAM530YSt1OT7wjTwMVTJikNWphByheLoRfTAAe3mgfGaE0kNM7N6bK
 BdL4EbE4KQEcE/eU00rrtX9mDQ==
X-Google-Smtp-Source: ABdhPJwcUlLcUlRlrBROz3Pgd3a9H64lUYbF76tZV4vDjuNWwE5PS1qzjw+1paPk8/wSxHgdR+wDiA==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr3261429wra.412.1601023515037; 
 Fri, 25 Sep 2020 01:45:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u66sm2060780wmg.44.2020.09.25.01.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 01:45:14 -0700 (PDT)
Date: Fri, 25 Sep 2020 10:45:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Pekka Paalanen <ppaalanen@gmail.com>
Message-ID: <20200925084512.GD438822@phenom.ffwll.local>
References: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
 <20200923151852.2952812-1-daniel.vetter@ffwll.ch>
 <20200925112446.1b3cb2c8@eldfell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200925112446.1b3cb2c8@eldfell>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/atomic: document and enforce rules
 around "spurious" EBUSY
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 25, 2020 at 11:24:46AM +0300, Pekka Paalanen wrote:
> On Wed, 23 Sep 2020 17:18:52 +0200
> Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> 
> > When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
> > pull in arbitrary other resources, including CRTCs (e.g. when
> > reconfiguring global resources).
> > 
> > But in nonblocking mode userspace has then no idea this happened,
> > which can lead to spurious EBUSY calls, both:
> > - when that other CRTC is currently busy doing a page_flip the
> >   ALLOW_MODESET commit can fail with an EBUSY
> > - on the other CRTC a normal atomic flip can fail with EBUSY because
> >   of the additional commit inserted by the kernel without userspace's
> >   knowledge
> > 
> > For blocking commits this isn't a problem, because everyone else will
> > just block until all the CRTC are reconfigured. Only thing userspace
> > can notice is the dropped frames without any reason for why frames got
> > dropped.
> > 
> > Consensus is that we need new uapi to handle this properly, but no one
> > has any idea what exactly the new uapi should look like. Since this
> > has been shipping for years already compositors need to deal no matter
> > what, so as a first step just try to enforce this across drivers
> > better with some checks.
> > 
> > v2: Add comments and a WARN_ON to enforce this only when allowed - we
> > don't want to silently convert page flips into blocking plane updates
> > just because the driver is buggy.
> > 
> > v3: Fix inverted WARN_ON (Pekka).
> > 
> > v4: Drop the uapi changes, only add a WARN_ON for now to enforce some
> > rules for drivers.
> > 
> > v5: Make the WARNING more informative (Daniel)
> > 
> > v6: Add unconditional debug output for compositor hackers to figure
> > out what's going on when they get an EBUSY (Daniel)
> 
> ... gmail workaround ...
> 
> > ---
> >  drivers/gpu/drm/drm_atomic.c | 29 +++++++++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> > index 58527f151984..f1a912e80846 100644
> > --- a/drivers/gpu/drm/drm_atomic.c
> > +++ b/drivers/gpu/drm/drm_atomic.c
> > @@ -281,6 +281,10 @@ EXPORT_SYMBOL(__drm_atomic_state_free);
> >   * needed. It will also grab the relevant CRTC lock to make sure that the state
> >   * is consistent.
> >   *
> > + * WARNING: Drivers may only add new CRTC states to a @state if
> > + * drm_atomic_state.allow_modeset is set, or if it's a driver-internal commit
> > + * not created by userspace through an IOCTL call.
> > + *
> >   * Returns:
> >   *
> >   * Either the allocated state or the error code encoded into the pointer. When
> > @@ -1262,10 +1266,15 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
> >  	struct drm_crtc_state *new_crtc_state;
> >  	struct drm_connector *conn;
> >  	struct drm_connector_state *conn_state;
> > +	unsigned requested_crtc = 0;
> > +	unsigned affected_crtc = 0;
> >  	int i, ret = 0;
> >  
> >  	DRM_DEBUG_ATOMIC("checking %p\n", state);
> >  
> > +	for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> > +		requested_crtc |= drm_crtc_mask(crtc);
> 
> Is "old crtc state" the state that userspace is requesting as the new
> state?

It's a dummy iterator variable we don't care about, all we really want is
to know which crtc are all part of the update. But everyone else also
wants the state.

I'll shuffle the patches so the hunk Ville requested is in the right
patch.
-Daniel

> 
> > +
> >  	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
> >  		ret = drm_atomic_plane_check(old_plane_state, new_plane_state);
> >  		if (ret) {
> > @@ -1313,6 +1322,26 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
> >  		}
> >  	}
> >  
> > +	for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> > +		affected_crtc |= drm_crtc_mask(crtc);
> 
> And after driver check processing, the "old crtc state" has been
> modified by the driver to add anything it will necessarily need like
> other CRTCs?
> 
> What is "new state" then?
> 
> > +
> > +	/*
> > +	 * For commits that allow modesets drivers can add other CRTCs to the
> > +	 * atomic commit, e.g. when they need to reallocate global resources.
> > +	 * This can cause spurious EBUSY, which robs compositors of a very
> > +	 * effective sanity check for their drawing loop. Therefor only allow
> > +	 * drivers to add unrelated CRTC states for modeset commits.
> > +	 *
> > +	 * FIXME: Should add affected_crtc mask to the ATOMIC IOCTL as an output
> > +	 * so compositors know what's going on.
> > +	 */
> > +	if (affected_crtc != requested_crtc) {
> > +		DRM_DEBUG_ATOMIC("driver added CRTC to commit: requested 0x%x, affected 0x%0x\n",
> > +				 requested_crtc, affected_crtc);
> > +		WARN(!state->allow_modeset, "adding CRTC not allowed without modesets: requested 0x%x, affected 0x%0x\n",
> > +		     requested_crtc, affected_crtc);
> > +	}
> 
> This hunk looks good to me.
> 
> 
> Thanks,
> pq
> 
> > +
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL(drm_atomic_check_only);
> 



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
