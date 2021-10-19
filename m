Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB9A43386A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 16:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9B16E51C;
	Tue, 19 Oct 2021 14:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C546E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 14:31:59 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id y12so14659089eda.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 07:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RT2OWiu66UenIvORUGYG/GiRCyemF3VXNlRjAEErvao=;
 b=a4VY42HJalA72DhnkXpd9tI69pDyiIL9oOJ7/ZH4b5qD7xnc30mssvRB3cjOZ9gpS1
 S4WJsMv4GIlfvLpDJmm5CSlSUuZU3Ab0HJeX6j/UyfMmb1a4UFP9lNdy3jqax3O8rtp1
 gqXRlNaj/65fRr3cpsscUBAHgVLoRLi0kcXiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RT2OWiu66UenIvORUGYG/GiRCyemF3VXNlRjAEErvao=;
 b=zudew9F3pvf46flx4lZE01Bp+0xe6IDDEHnONQ2r/eVvzYpzImyOhu03oCTeYc6Qnb
 hxh3qA3But/Ufu/Wv9CrL0r8ttEeozRLfI285Lg0ypcgXCZI2bV5FU78bB2OzkPyDjaO
 Bn4hztKv+wJrnVBeD3tkUQWmS/zmIu3bC9GRJmZTTlTqveYtF+FIheLmLp6+whc1wyPL
 B6vqKdPgFif/jw8xsbRv1y79u2c9K/54lUN0HRyAuqk6BxcEMgtXJsVdgPeUkplHq6pB
 NZfa5K/eRTi2zIt4UvQrhiM8vKmrT5nVKGmV/bxZ9oYmKS14XKmeQoIzCE7WvnV906wP
 gS8A==
X-Gm-Message-State: AOAM531qMm3myQSK4NTrYrredP29+lYTZ4RjDXVZGKqws2qnz6S3k1ty
 gN7wCk4r+693iPoWAzXurrdfvw==
X-Google-Smtp-Source: ABdhPJyAM6JgxZkvD4lSzTHT1aiap2InBn5R1eowSjP+BYqEwXduZ8CcPEQ4r7OJ7dlznkvFTq09dw==
X-Received: by 2002:a50:d8c2:: with SMTP id y2mr54011219edj.360.1634653851982; 
 Tue, 19 Oct 2021 07:30:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t6sm11675493edj.27.2021.10.19.07.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 07:30:51 -0700 (PDT)
Date: Tue, 19 Oct 2021 16:30:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, tvrtko.ursulin@linux.intel.com
Message-ID: <YW7WmU/GLzgJbDQc@phenom.ffwll.local>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-25-christian.koenig@amd.com>
 <YWbr0/ey1rCbb0Yi@phenom.ffwll.local>
 <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <405b9df8-58fd-b8f2-cec2-acde69aa5633@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 24/28] drm: use new iterator in
 drm_gem_plane_helper_prepare_fb v2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 19, 2021 at 03:02:26PM +0200, Christian König wrote:
> Am 13.10.21 um 16:23 schrieb Daniel Vetter:
> > On Tue, Oct 05, 2021 at 01:37:38PM +0200, Christian König wrote:
> > > Makes the handling a bit more complex, but avoids the use of
> > > dma_resv_get_excl_unlocked().
> > > 
> > > v2: improve coding and documentation
> > > 
> > > Signed-off-by: Christian König <christian.koenig@amd.com>
> > > ---
> > >   drivers/gpu/drm/drm_gem_atomic_helper.c | 13 +++++++++++--
> > >   1 file changed, 11 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_gem_atomic_helper.c b/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > index e570398abd78..8534f78d4d6d 100644
> > > --- a/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > +++ b/drivers/gpu/drm/drm_gem_atomic_helper.c
> > > @@ -143,6 +143,7 @@
> > >    */
> > >   int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
> > >   {
> > > +	struct dma_resv_iter cursor;
> > >   	struct drm_gem_object *obj;
> > >   	struct dma_fence *fence;
> > > @@ -150,9 +151,17 @@ int drm_gem_plane_helper_prepare_fb(struct drm_plane *plane, struct drm_plane_st
> > >   		return 0;
> > >   	obj = drm_gem_fb_get_obj(state->fb, 0);
> > > -	fence = dma_resv_get_excl_unlocked(obj->resv);
> > > -	drm_atomic_set_fence_for_plane(state, fence);
> > > +	dma_resv_iter_begin(&cursor, obj->resv, false);
> > > +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> > > +		/* TODO: We only use the first write fence here and need to fix
> > > +		 * the drm_atomic_set_fence_for_plane() API to accept more than
> > > +		 * one. */
> > I'm confused, right now there is only one write fence. So no need to
> > iterate, and also no need to add a TODO. If/when we add more write fences
> > then I think this needs to be revisited, and ofc then we do need to update
> > the set_fence helpers to carry an entire array of fences.
> 
> Well could be that I misunderstood you, but in your last explanation it
> sounded like the drm_atomic_set_fence_for_plane() function needs fixing
> anyway because a plane could have multiple BOs.
> 
> So in my understanding what we need is a
> drm_atomic_add_dependency_for_plane() function which records that a certain
> fence needs to be signaled before a flip.

Yeah that's another issue, but in practice there's no libva which decodes
into planar yuv with different fences between the planes. So not a bug in
practice.

But this is entirely orthogonal to you picking up the wrong fence here if
there's not exclusive fence set:

- old code: Either pick the exclusive fence, or not fence if the exclusive
  one is not set.

- new code: Pick the exclusive fence or the first shared fence

New behaviour is busted, because scanning out and reading from a buffer at
the same time (for the next frame, e.g. to copy over damaged areas or some
other tricks) is very much a supported thing. Atomic _only_ wants to look
at the exclusive fence slot, which mean "there is an implicitly synced
write to this buffers". Implicitly synced reads _must_ be ignored.

Now amdgpu doesn't have this distinction in its uapi, but many drivers do.
-Daniel

> Support for more than one write fence then comes totally naturally.
> 
> Christian.
> 
> > -Daniel
> > 
> > > +		dma_fence_get(fence);
> > > +		break;
> > > +	}
> > > +	dma_resv_iter_end(&cursor);
> > > +	drm_atomic_set_fence_for_plane(state, fence);
> > >   	return 0;
> > >   }
> > >   EXPORT_SYMBOL_GPL(drm_gem_plane_helper_prepare_fb);
> > > -- 
> > > 2.25.1
> > > 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
