Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24A2D7AF3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 17:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494976E49D;
	Fri, 11 Dec 2020 16:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E966E49D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 16:31:01 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id q75so9144132wme.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 08:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=0aJqlMpxFQBrfFCs6sqCkMfuxmLBNkaqvClkNn2UQPQ=;
 b=Wdk9JBjvocAi2dqwxuNPHHzpObpiB5liK/Gt7nIdSSwgn8qupo+XFa1OazZwJKJa4U
 VZfqYNe8Jfpo+Ns7PYIu7VWm4ebDD02sKaaePLlSEhbL/H0VfL1iz3j3UvgJWsnblXbA
 lb7DvAhCSlr5SDMealgKnNRjYpenbWHN3U+VU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=0aJqlMpxFQBrfFCs6sqCkMfuxmLBNkaqvClkNn2UQPQ=;
 b=ARSVjqHI5YgXQMyhvzDAJGPhHkbzkFkEZa24dNYEOBvvVcMSPIoTEMNfTwFRs9QMtO
 z8bY70tLHkiDI0mhAuUG4v+84Tevb42Jhm5QihsjUl+xDrbaznoMgu8L/DF7woHrAYCl
 nltq7dDlqGxujtE47FYWdg/E7daEiRlVbWkxA8GMjB2u4njlvopaJcmUglyEArrTQo3W
 iNNK1ZMPPYrWhPuZxc8PZ8fvCe3DEL99LKs/tJu8Hk+mZq+IILRwAbsXbYlj/ZdugGoN
 Vdobpu3GtkwEb3ZAIEDE3LEIK5s1kQItR3XdU5LcMC4b5W/8TGNQr8u3UHmtJOJUb0UX
 quPg==
X-Gm-Message-State: AOAM532ttAl1ydO1fH2EFDDIdAFRm1qDGLNAZ05s0qIgM0DTu5+s1fA8
 aygP9fRv1S0AoAhQgoMGxXsfAg==
X-Google-Smtp-Source: ABdhPJwCeliXqsUkATdMzf50vwlfwEpDxoeyZlOwFYPOnTq38VjuEBG3mJIwlRjrNQ9giVdEVHiYXw==
X-Received: by 2002:a1c:234d:: with SMTP id j74mr14346222wmj.18.1607704259920; 
 Fri, 11 Dec 2020 08:30:59 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b9sm15633467wmd.32.2020.12.11.08.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 08:30:58 -0800 (PST)
Date: Fri, 11 Dec 2020 17:30:56 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20201211163056.GV401619@phenom.ffwll.local>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-28-daniel.vetter@ffwll.ch>
 <18e78a2d-6ede-97b8-3c8c-e85354a573f8@amd.com>
 <CAKMK7uGG0B+NfBFO7j7E9FnxY4ET+bCgTHp5vKKXEYDX_1aR+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uGG0B+NfBFO7j7E9FnxY4ET+bCgTHp5vKKXEYDX_1aR+Q@mail.gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 28/65] drm/ttm: WARN_ON non-empty lru when
 disabling a resource manager
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 04:56:20PM +0200, Daniel Vetter wrote:
> On Fri, Oct 23, 2020 at 4:54 PM Christian K=F6nig
> <christian.koenig@amd.com> wrote:
> >
> > Am 23.10.20 um 14:21 schrieb Daniel Vetter:
> > > ttm_resource_manager->use_type is only used for runtime changes by
> > > vmwgfx. I think ideally we'd push this functionality into drivers -
> > > ttm itself does not provide any locking to guarantee this is safe, so
> > > the only way this can work at runtime is if the driver does provide
> > > additional guarantees. vwmgfx does that through the
> > > vmw_private->reservation_sem. Therefore supporting this feature in
> > > shared code feels a bit misplaced.
> > >
> > > As a first step add a WARN_ON to make sure the resource manager is
> > > empty. This is just to make sure I actually understand correctly what
> > > vmwgfx is doing, and to make sure an eventual subsequent refactor
> > > doesn't break anything.
> > >
> > > This check should also be useful for other drivers, to make sure they
> > > haven't leaked anything.
> > >
> > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Christian Koenig <christian.koenig@amd.com>
> > > Cc: Huang Rui <ray.huang@amd.com>
> >
> > I'm pretty sure that this will trigger for vmwgfx. But that's what it is
> > supposed to do, isn't it?
> =

> Yeah, this is an accidental dump of my wip pile, and it's not done yet
> at all. Please disregard (at least for now).
> -Daniel
> =

> > Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Ok decided to submit these 3 patches finally, including the 2 vmwgfx fixes
which should avoid the splat. I included your r-b, pls complain if that's
not ok anymore.

Thanks, Daniel

> >
> > > ---
> > >   include/drm/ttm/ttm_resource.h | 4 ++++
> > >   1 file changed, 4 insertions(+)
> > >
> > > diff --git a/include/drm/ttm/ttm_resource.h b/include/drm/ttm/ttm_res=
ource.h
> > > index f48a70d39ac5..789ec477b607 100644
> > > --- a/include/drm/ttm/ttm_resource.h
> > > +++ b/include/drm/ttm/ttm_resource.h
> > > @@ -191,6 +191,10 @@ struct ttm_resource {
> > >   static inline void
> > >   ttm_resource_manager_set_used(struct ttm_resource_manager *man, boo=
l used)
> > >   {
> > > +     int i;
> > > +
> > > +     for (i =3D 0; i < TTM_MAX_BO_PRIORITY; i++)
> > > +             WARN_ON(!list_empty(&man->lru[i]));
> > >       man->use_type =3D used;
> > >   }
> > >
> >
> =

> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
