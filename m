Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 043EE3AAEEB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 10:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93A56E8BF;
	Thu, 17 Jun 2021 08:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7106E8BE
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 08:38:55 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id v9so5770153wrx.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 01:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=niCJQ3H8AiHapfvyh3qbwW9BZG651eP8Po7X5NizSRs=;
 b=jp0Mzj9zmTwFtVCASubVR/oVj32rfOuUhACHWfrgCM89xghuMfAYFlEMTD+NJB4p7C
 5HQ8wYsmYKgvHGKa+OAXfWs7Z31qzkuzZhf2DC7hCB+l/a3pqAUKblQAJwajUCxhS8hC
 +XKkEh8dPH2iP+LT64GSyehgfV4L9Q9rT45J4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=niCJQ3H8AiHapfvyh3qbwW9BZG651eP8Po7X5NizSRs=;
 b=P9SBdu6c+ujh/Ic7uE4qUvix0oJ4oVq1FZoKGdvemdX92BjGOqWiedR5lqJ4cruhOG
 D4lIaKFR2KVQzuN+peBgACVjzadGyf+QBfLcpSpd2+c+1Yxe1cNh7gCuNS37NtPBG0i9
 X3W6L1vWQQlTjSMPsBAvslqtn/iHJWCW7bJwNiEr2IL3isPrydZUmsmXduIjVDaZqsEr
 yu7Uoldu8yN/1X9In1BJQEPDYmzy5MsDda3mNHEbiSnEm1Fz9LHVpx4MMncAl5I6preR
 F4KhHup5yt0e1rtVSHI7N0uEHJAWqYODg/XxTFycD3D70yU3QTHj2BujZvf4Niw7VhSe
 DbaA==
X-Gm-Message-State: AOAM533u+XxxCH0jPn7QDIaRIopWNXNYb67kj6jRLzHajSs7JjB3zjcb
 Nl5zwFxgrjv+hxcg+PkyUrce+g==
X-Google-Smtp-Source: ABdhPJzq2dDQkQHFt47tYXkGJs+DBPqLWvkeegznk76cvDOsSLU/YJURuRP+fIgCcSVnFNQfHQ/VIQ==
X-Received: by 2002:a5d:64c3:: with SMTP id f3mr4211251wri.263.1623919134514; 
 Thu, 17 Jun 2021 01:38:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s7sm4504849wru.67.2021.06.17.01.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 01:38:54 -0700 (PDT)
Date: Thu, 17 Jun 2021 10:38:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YMsKHLshWwakmUAR@phenom.ffwll.local>
References: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
 <CAM0jSHMTc6o5M=xbYJDoR0NWpEthOcHMSB=Pb4dHnV9gdDj9eA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHMTc6o5M=xbYJDoR0NWpEthOcHMSB=Pb4dHnV9gdDj9eA@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove duplicated call to
 ops->pread
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
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 16, 2021 at 11:45:28AM +0100, Matthew Auld wrote:
> On Wed, 16 Jun 2021 at 10:04, Daniel Vetter <daniel.vetter@ffwll.ch> wrot=
e:
> >
> > Between
> >
> > commit ae30af84edb5b7cc95485922e43afd909a892e1b
> > Author: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Date:   Tue Mar 23 16:50:00 2021 +0100
> >
> >     drm/i915: Disable userptr pread/pwrite support.
> >
> > and
> >
> > commit 0049b688459b846f819b6e51c24cd0781fcfde41
> > Author: Matthew Auld <matthew.auld@intel.com>
> > Date:   Thu Nov 5 15:49:33 2020 +0000
> >
> >     drm/i915/gem: Allow backends to override pread implementation
> >
> > this accidentally landed twice.
> >
> > Cc: Matthew Auld <matthew.auld@intel.com
> > Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com

Pushed to drm-intel-gt-next, thanks for your review.
-Daniel

> =

> > ---
> >  drivers/gpu/drm/i915/i915_gem.c | 6 ------
> >  1 file changed, 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i91=
5_gem.c
> > index 6a0a3f0e36e1..07aa80773a02 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -469,12 +469,6 @@ i915_gem_pread_ioctl(struct drm_device *dev, void =
*data,
> >         if (ret !=3D -ENODEV)
> >                 goto out;
> >
> > -       ret =3D -ENODEV;
> > -       if (obj->ops->pread)
> > -               ret =3D obj->ops->pread(obj, args);
> > -       if (ret !=3D -ENODEV)
> > -               goto out;
> > -
> >         ret =3D i915_gem_object_wait(obj,
> >                                    I915_WAIT_INTERRUPTIBLE,
> >                                    MAX_SCHEDULE_TIMEOUT);
> > --
> > 2.32.0.rc2
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
