Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6050629609B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 16:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818D46F568;
	Thu, 22 Oct 2020 14:04:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53F76F568
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 14:04:02 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id c194so2257426wme.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 07:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=7iIgzbcg+YAGTVDkWWYKMyE4HAM4OLmgf1xsobC9fvg=;
 b=QyUZba4MHoZ0SKQXHSHlM5MYzjvHLwzunnd4O4+08t+q4E/CwI6La/lEXR17mwAo8u
 RA1bT0vqDBXx5MrOS/iKzLycXPjyRG01woT3wCzOMN8zbv1BRlSXyle6GqzmwYbz/smb
 UbDrQSvKQIfLf3dCIxnPlOLZkwZ3D2VyJEpKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=7iIgzbcg+YAGTVDkWWYKMyE4HAM4OLmgf1xsobC9fvg=;
 b=NYReXI1AXZGQiXl5b3OuC2iH6c9yJ0epRUukEfD7WQMdUf/bWDqDMYZjI/Ys/WCVHQ
 WyDv4luz1M2IMcuUKpaI7Ux4kbF9hgeCfmLffXbjQ2TLiOWV1V12bgyTL8otFgjKuD7H
 3QH4tEGqj8Mf/Q/D7Fc7ixaTQyGIoaGSD1MCZwLJwqC0C7oxiogrnqaOdq8R+LacnXZ0
 irXPJq7RGGPGyvXpt03x8ozcdlNlIEHCslu4Grx8i8A41RIKVKW/8/8aq/+/kL9lddei
 CeWXweI5JJY09TFYn8uXvT0KDE5n5KxuRlHfZBX0bwSRXZ2rmV4czrsJx3zEByCuteG4
 8nCQ==
X-Gm-Message-State: AOAM531KLIeXWQfu8LIF8cNSGY7LrBl0qesfaCdBubC4FC+vmNLsl7sq
 pFiFyi5FW8HLMRhH7EVcyLJOWw==
X-Google-Smtp-Source: ABdhPJzjmTwjfSmKa9Ky12fscbaPma37B94wpmPbfxOz6I8MEv5t11MJ/YTuTfvVvYFPuXLiuWULrA==
X-Received: by 2002:a1c:bc06:: with SMTP id m6mr2890589wmf.68.1603375441273;
 Thu, 22 Oct 2020 07:04:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l3sm5305750wmg.32.2020.10.22.07.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 07:04:00 -0700 (PDT)
Date: Thu, 22 Oct 2020 16:03:58 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Kazlauskas, Nicholas" <nicholas.kazlauskas@amd.com>
Message-ID: <20201022140358.GY401619@phenom.ffwll.local>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <86236137-4a3b-69af-1769-8c4ac8603c08@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86236137-4a3b-69af-1769-8c4ac8603c08@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/atomic-helpers: remove
 legacy_cursor_update hacks
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
 Daniel Vetter <daniel.vetter@intel.com>, mikita.lipski@amd.com,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 22, 2020 at 09:36:23AM -0400, Kazlauskas, Nicholas wrote:
> On 2020-10-21 12:32 p.m., Daniel Vetter wrote:
> > The stuff never really worked, and leads to lots of fun because it
> > out-of-order frees atomic states. Which upsets KASAN, among other
> > things.
> > =

> > For async updates we now have a more solid solution with the
> > ->atomic_async_check and ->atomic_async_commit hooks. Support for that
> > for msm and vc4 landed. nouveau and i915 have their own commit
> > routines, doing something similar.
> > =

> > For everyone else it's probably better to remove the use-after-free
> > bug, and encourage folks to use the async support instead. The
> > affected drivers which register a legacy cursor plane and don't either
> > use the new async stuff or their own commit routine are: amdgpu,
> > atmel, mediatek, qxl, rockchip, sti, sun4i, tegra, virtio, and vmwgfx.
> > =

> > Inspired by an amdgpu bug report.
> > =

> > v2: Drop RFC, I think with amdgpu converted over to use
> > atomic_async_check/commit done in
> > =

> > commit 674e78acae0dfb4beb56132e41cbae5b60f7d662
> > Author: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
> > Date:   Wed Dec 5 14:59:07 2018 -0500
> > =

> >      drm/amd/display: Add fast path for cursor plane updates
> > =

> > we don't have any driver anymore where we have userspace expecting
> > solid legacy cursor support _and_ they are using the atomic helpers in
> > their fully glory. So we can retire this.
> > =

> > References: https://bugzilla.kernel.org/show_bug.cgi?id=3D199425
> > Cc: mikita.lipski@amd.com
> > Cc: Michel D=E4nzer <michel@daenzer.net>
> > Cc: harry.wentland@amd.com
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> =

> I'm fine with the idea but it looks like we need modification to amdgpu to
> not break anything:
> =

> if (state->legacy_cursor_update) {
> /* ... */
> 		state->async_update =3D
> 			!drm_atomic_helper_async_check(dev, state);
> =

> =

> We only check async update for legacy_cursor_updates here which won't cov=
er
> the atomic path. I think it's safe to drop the check here but that should
> probably be done before or as part of this series.

This part is fine, you're essentially duplicating what the helpers are
doing too. I'm not sure whether we should lift this to core atomic
semantics or something else, but should be all ok as-is. Might still be
good to test this in case something isn't 100% complete and amdgpu atomic
commit still relies on legacy_cursor_update semantics somewhere.

But after this patch your atomic code and atomic helpers check/commit
functions match (I think), so we /should/ be good.

Cheers, Daniel

> =

> Regards,
> Nicholas Kazlauskas
> =

> > ---
> >   drivers/gpu/drm/drm_atomic_helper.c | 13 -------------
> >   1 file changed, 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_=
atomic_helper.c
> > index a7bcb4b4586c..549a31e6042c 100644
> > --- a/drivers/gpu/drm/drm_atomic_helper.c
> > +++ b/drivers/gpu/drm/drm_atomic_helper.c
> > @@ -1481,13 +1481,6 @@ drm_atomic_helper_wait_for_vblanks(struct drm_de=
vice *dev,
> >   	int i, ret;
> >   	unsigned crtc_mask =3D 0;
> > -	 /*
> > -	  * Legacy cursor ioctls are completely unsynced, and userspace
> > -	  * relies on that (by doing tons of cursor updates).
> > -	  */
> > -	if (old_state->legacy_cursor_update)
> > -		return;
> > -
> >   	for_each_oldnew_crtc_in_state(old_state, crtc, old_crtc_state, new_c=
rtc_state, i) {
> >   		if (!new_crtc_state->active)
> >   			continue;
> > @@ -2106,12 +2099,6 @@ int drm_atomic_helper_setup_commit(struct drm_at=
omic_state *state,
> >   			continue;
> >   		}
> > -		/* Legacy cursor updates are fully unsynced. */
> > -		if (state->legacy_cursor_update) {
> > -			complete_all(&commit->flip_done);
> > -			continue;
> > -		}
> > -
> >   		if (!new_crtc_state->event) {
> >   			commit->event =3D kzalloc(sizeof(*commit->event),
> >   						GFP_KERNEL);
> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
