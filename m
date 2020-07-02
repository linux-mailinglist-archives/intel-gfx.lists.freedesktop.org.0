Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5047212C16
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 20:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2536EACB;
	Thu,  2 Jul 2020 18:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DDC6E963
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 18:21:43 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z2so7350880wrp.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jul 2020 11:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3hPvGC/HkagaCR9HulPob6e55+qIh6naoY1GWRQP/P8=;
 b=UyCARtoBCRxJz8yzvVPLXJEETcY1MimBLC5mOAzoosrh2Pjd8B5VFX7RYHhv8mr5JS
 w3083ls2AlVka+7WgZ/xxcUj3MIZdGgoB8EaigsY+zuR+Qyn15LDBIjQT2llEb8ZgW4r
 qZiQP1zLCTgxAAk5J+DqTmc6Q072nB3zsWTo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3hPvGC/HkagaCR9HulPob6e55+qIh6naoY1GWRQP/P8=;
 b=QKzfQEsKLqdBg2NPY4iBRGmAN8j3hnag6o5Hr9CYeBbHVLTPG4BDhcrYb6oFs/rhgK
 MvgZK4pqez9iCBDTX9j6d9GWfnOrVitId2+ODUY9ywlq45AsBDPFRWl+f71kVWi+oWAO
 7/W1PkjQglWHtsRf66jM2vVwfYo0gcyW4lf6S5352STPwQRMBkT30jnuHzqFjL3dYrzw
 23g5PvFcrl8hv3xFIQasFwim8+PqYbI9DnJkowG5Re73fyt2h62IiqrMUwMcRYdqK6BH
 mztK/iEkLZcatdoT06rCerCvmWjY1l7IcDd7ySHDJ21EVpSGjwdcKgXnWfig19AbRS6e
 km+g==
X-Gm-Message-State: AOAM531sRjar8L0/D5yAevl00vfcjpi0gbHaw23eTDsh9Zn1Pm7GWcwE
 lz7X3j3yyJ63x7wPtV2pFxJrZA==
X-Google-Smtp-Source: ABdhPJy9vmA6imnvMObJEUW/p+OQIMBPOpiRjvTTVls/209rJgxCRsDdiiuED8PRwO417cH4YBjhtA==
X-Received: by 2002:adf:f14e:: with SMTP id y14mr32774321wro.151.1593714101975; 
 Thu, 02 Jul 2020 11:21:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 30sm12394767wrm.74.2020.07.02.11.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 11:21:41 -0700 (PDT)
Date: Thu, 2 Jul 2020 20:21:39 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Alex Deucher <alexdeucher@gmail.com>
Message-ID: <20200702182139.GD3278063@phenom.ffwll.local>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-2-daniel.vetter@ffwll.ch>
 <ad375dbb-760b-b2e9-cfab-94fba61f4eb7@amd.com>
 <CADnq5_NY1P8nM9gSL9zb1fpizsFxgRwvztQRg426-fEKMupq+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADnq5_NY1P8nM9gSL9zb1fpizsFxgRwvztQRg426-fEKMupq+w@mail.gmail.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/amdgpu: Use
 __drm_atomic_helper_crtc_reset
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
Cc: Stylon Wang <stylon.wang@amd.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Roman Li <roman.li@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Harry Wentland <hwentlan@amd.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Mikita Lipski <mikita.lipski@amd.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 01:41:17PM -0400, Alex Deucher wrote:
> On Fri, Jun 12, 2020 at 1:24 PM Harry Wentland <hwentlan@amd.com> wrote:
> >
> > On 2020-06-12 12:00 p.m., Daniel Vetter wrote:
> > > Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
> > > which means vblank state isn't ill-defined and fail-y at driver load
> > > before the first modeset on each crtc.
> > >
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Alex Deucher <alexander.deucher@amd.com>
> > > Cc: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
> > > Cc: Harry Wentland <harry.wentland@amd.com>
> > > Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
> > > Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> > > Cc: Roman Li <roman.li@amd.com>
> > > Cc: Mikita Lipski <mikita.lipski@amd.com>
> > > Cc: Stylon Wang <stylon.wang@amd.com>
> >
> > Reviewed-by: Harry Wentland <harry.wentland@amd.com>
> >
> 
> Daniel, do you want to take the whole series, or should I pull this in
> through my tree?  Either way works for me.  Thanks for the patch!

Merged the entire series through drm-misc-next now.
-Daniel

> 
> Alex
> 
> > Harry
> >
> > > ---
> > >  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 4 +---
> > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> > > index 68a73065b516..36d605a6eb16 100644
> > > --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> > > +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> > > @@ -4594,9 +4594,7 @@ static void dm_crtc_reset_state(struct drm_crtc *crtc)
> > >       if (WARN_ON(!state))
> > >               return;
> > >
> > > -     crtc->state = &state->base;
> > > -     crtc->state->crtc = crtc;
> > > -
> > > +     __drm_atomic_helper_crtc_reset(crtc, &state->base);
> > >  }
> > >
> > >  static struct drm_crtc_state *
> > >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
