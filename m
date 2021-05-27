Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA4B392C91
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 13:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDA76EE82;
	Thu, 27 May 2021 11:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E8436EE7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 11:22:49 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id f18so7412868ejq.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 04:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Hsq4MI72k1IdZdZS7WsYodiUse6OcN72CW+w7uTnZMU=;
 b=DV98uznTRt5lRl//DvXjXXVQyMbRKkQKY19rl9cvS/yatz7d60aTj6R107nyR3aVlF
 5oriuwnZJnZtRBH9/5Cx4lJN5pEz/Wmvos/s4Os403W7s4abI5CWZIoQWapjZgKljdYv
 JjEh1uSLdEDYxd1OMmTvMXIbKQHggjbdom5Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Hsq4MI72k1IdZdZS7WsYodiUse6OcN72CW+w7uTnZMU=;
 b=CepMVyM/hVxGc9mXnCs/Qe4hvN8waVkIO+fPWFFHaThfMFNGei6ZXODTMNWKru5zdE
 Pba4vq2wpZHNq+i0kOfzogKE5VZ4tu0GOH5f2NhiArzyObO7Wc/Roc4Q+URMqD4O2Cd8
 y7ALQJ91yAkfXIqOByEXBP6F9CFXFG8/fHAWWoa9X1HUXEbyBN6xWKRtw5kTpesn3b/w
 9//f9zCwFXrack30BvysytaUimtOSkQrTY+g5Gh2e6bhY+LdgoTeC+JjrINiWPxJE1vK
 KD9I75vVOE2WjHXitfFLSFYdCmCIZdppYljFK7afd7Jykn/m8xLVSt5JYChKJFDlsPsy
 b0hw==
X-Gm-Message-State: AOAM533NvTcRxy6UncSyxuzKOFDqx6PMY12M7e3Tu3LilNNeU722CVsp
 5VlL+810SyegIXfwBRZfnv+KrQ==
X-Google-Smtp-Source: ABdhPJwkarwsxetAcfk71UD0ZDOG++V183h3c4XK4zicbtcGlnbV+MqLdDZtdCgsJVB2/cWm7RkXzw==
X-Received: by 2002:a17:906:c247:: with SMTP id
 bl7mr3362214ejb.288.1622114568300; 
 Thu, 27 May 2021 04:22:48 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z7sm847557ejm.122.2021.05.27.04.22.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 04:22:47 -0700 (PDT)
Date: Thu, 27 May 2021 13:22:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YK+BBWYzhlNbVnlg@phenom.ffwll.local>
References: <20210526163730.3423181-1-daniel.vetter@ffwll.ch>
 <55fb9d6c-23aa-bdce-250f-7f0377441a53@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55fb9d6c-23aa-bdce-250f-7f0377441a53@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable gpu relocations
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 27, 2021 at 01:16:13PM +0200, Maarten Lankhorst wrote:
> Op 2021-05-26 om 18:37 schreef Daniel Vetter:
> > Media userspace was the last userspace to still use them, and they
> > converted now too:
> >
> > https://github.com/intel/media-driver/commit/144020c37770083974bedf5990=
2b70b8f444c799
> >
> > This means no reason anymore to make relocations faster than they've
> > been for the first 9 years of gem. This code was added in
> >
> > commit 7dd4f6729f9243bd7046c6f04c107a456bda38eb
> > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > Date:   Fri Jun 16 15:05:24 2017 +0100
> >
> >     drm/i915: Async GPU relocation processing
> >
> > Furthermore there's pretty strong indications it's buggy, since the
> > code to use it by default as the only option had to be reverted:
> >
> > commit ad5d95e4d538737ed3fa25493777decf264a3011
> > Author: Dave Airlie <airlied@redhat.com>
> > Date:   Tue Sep 8 15:41:17 2020 +1000
> >
> >     Revert "drm/i915/gem: Async GPU relocations only"
> >
> > This code just disables gpu relocations, leaving the garbage
> > collection for later patches and more importantly, much less confusing
> > diff. Also given how much headaches this code has caused in the past,
> > letting this soak for a bit seems justified.
> >
> > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: "Thomas Hellstr=F6m" <thomas.hellstrom@linux.intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > ---
> >  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 43 ++++++++-----------
> >  1 file changed, 18 insertions(+), 25 deletions(-)
> =

> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> =

> Note that a lot of complexity may be removed with gpu relocations gone.
> Some igt tests might also start to fail, as they expect relocations to
> complete asynchronously.

Yeah I have the kernel side patch for that, at least in the execbuf code +
selftests. For igt I'm wawiting on CI to tell me what I all need to look
at and decide what to do with it.

> Is it kept in case we need to revive it?

I don't want to revive it, but I want to split the huge code changes from
the functional changes at least.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
