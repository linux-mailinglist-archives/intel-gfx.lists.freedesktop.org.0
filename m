Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED65F42C0C1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 14:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D4D6EA53;
	Wed, 13 Oct 2021 12:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1544E6EA57
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 12:57:38 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id o20so8139954wro.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 05:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RWBP2jgmVQOo/w/Jd//diXQQ2mjmTY+QBARYu4zYJQQ=;
 b=ClNw+mg+s3JKHQZTJJ9lJOI6V21fPoC4xQgddTIdQ5KDZXKpy0RQMSKJex+wFP9sBP
 MsJETo/DID5r5rlOhWZvXAMi9hRf54+YHWCiBLM08JBtYvLy0EOu7j/4cPkvhFQNQVNq
 EPSeCYNLvqpdFuT6lIIqBxydX1S/A8G3XPIR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RWBP2jgmVQOo/w/Jd//diXQQ2mjmTY+QBARYu4zYJQQ=;
 b=El8fQllL0NXfAQWlYEUSWuCwTLf8vY6iqXgFcD528cIy1gPkKKhTq9yS41FIW3z4LB
 iNOnffF/9/JXggyZo94ITVndJtXlpvPpbjJuAPdrlYT0ouCP7RIl6ZW03EinuelPhKJq
 izDSwCgpE4f0zBtE3V3lJeinN/cnOuLNXV6O794MHrzUC3rOErgndZxktEwCo4+4ms4C
 j3a0EVnA6f0y3bY4CkqUBqpdiBkJPLdyBfmtUQDDwG4bx5Nw4djnN4niPAAhm1UZvfEi
 oZ8dWSTolyhM0tVfG7bFtyRFKpQH31eTnJ8+UPVdq83tgy0HYJ3BNu/vT/W02A9AETNk
 WwJw==
X-Gm-Message-State: AOAM533wtf7r8qjSEp9E7+bmyt7pfbVwugLyhshr1jF+BfZG8pEQMVqL
 hDssmH3dra/uptt/cpRjLcIH0w==
X-Google-Smtp-Source: ABdhPJx9amzBZXM9r/xTcN0J3jhnwMOLwtcfR4mBWMjQsxcVaLGS5yeuyhe1byr5XMzQJLkw+vT6Kg==
X-Received: by 2002:a5d:5889:: with SMTP id n9mr40902772wrf.248.1634129856575; 
 Wed, 13 Oct 2021 05:57:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w26sm5372558wmk.34.2021.10.13.05.57.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 05:57:36 -0700 (PDT)
Date: Wed, 13 Oct 2021 14:57:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Message-ID: <YWbXvvTzMF1EZ5c7@phenom.ffwll.local>
References: <20211005065151.828922-1-bigeasy@linutronix.de>
 <YWbK8wSxNjVu9OLm@phenom.ffwll.local>
 <20211013123525.5nijgyx5ivnuujes@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211013123525.5nijgyx5ivnuujes@linutronix.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH] drm: Increase DRM_OBJECT_MAX_PROPERTY
 by 18.
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

On Wed, Oct 13, 2021 at 02:35:25PM +0200, Sebastian Andrzej Siewior wrote:
> On 2021-10-13 14:02:59 [+0200], Daniel Vetter wrote:
> > On Tue, Oct 05, 2021 at 08:51:51AM +0200, Sebastian Andrzej Siewior wrote:
> > > The warning poped up, it says it increase it by the number of occurrence.
> > > I saw it 18 times so here it is.
> > > It started to up since commit
> > >    2f425cf5242a0 ("drm: Fix oops in damage self-tests by mocking damage property")
> > > 
> > > Increase DRM_OBJECT_MAX_PROPERTY by 18.
> > > 
> > > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> > 
> > Which driver where? Whomever added that into upstream should also have
> > realized this (things will just not work) and include it in there. So if
> > things are tested correctly this should be part of a larger series to add
> > these 18 props somewhere.
> 
> This is on i915 with full debug. If I remember correctly, it wasn't
> there before commit
>    c7fcbf2513973 ("drm/plane: check that fb_damage is set up when used")
> 
> With that commit the box crashed until commit 
>    2f425cf5242a0 ("drm: Fix oops in damage self-tests by mocking damage property")
> 
> where I then observed this.

Hm there's a pile of commits there, and nothing immediately jumps to
light. The thing is, 18 is likely way too much, since if e.g. we have a
single new property on a plane and that pushes over the limit on all of
them, you get iirc 3x4 already simply because we have that many planes.

So would be good to know the actual culprit.

Can you pls try to bisect the above range, applying the patch as a fixup
locally (without commit, that will confuse git bisect a bit I think), so
we know what/where went wrong?

I'm still confused why this isn't showing up anywhere in our intel ci ...

Thanks, Daniel

> 
> > Also maybe we should just dynamically allocate this array if people have
> > this many properties on their objects.
> > -Daniel
> 
> Sebastian

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
