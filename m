Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1DD338F98
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 15:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 721196F40A;
	Fri, 12 Mar 2021 14:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294EE6EEC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 14:15:07 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so15896550wml.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 06:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Af3mHPZaT2LqPuBFoXyUtYrCtuU51W2QCvy0JH+xM/c=;
 b=K5+4O2vLpHWuJ+nsGqSzGBmDM8uB6sSAkq04oKhFvkkF3urlatz3lBF6BT07cJZ+ra
 +GESRZUgblJtgpBXq6pOdVt79sGnPdAYYlw30eDP0KW/hOAcrBRFvd++YJd3fINZyBXB
 gnXsn+6bg1BNRwdumHXgV1NvaUkDxI8/XLfow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Af3mHPZaT2LqPuBFoXyUtYrCtuU51W2QCvy0JH+xM/c=;
 b=Yo6zsi2IKXmoQJkaMu+ZfJubDOchhyZ8BJH+bhwvzTmOWKjSBfVfWMuPHU5A0MGi2D
 L2mrT62v0ZcALIwGs10CboUvTEvHOu4vVdokKB9tg+5g7jiqEEhmk2AF9oWkD2ClzAgt
 vYTwEXmb0jyo9FLGHhWBCFbIgj90oO2ltOwZ16NDALOVBoBVYeJuXPt2zw74p7CDL95D
 +ycjH/UTLOpPYZXm8enBRqXn/Pi6Oox+Capq07a4IAtRKZHrUnBKvMSCBWLinBq3pZDD
 Kc+N7Hbg3P6D6Pu6tjrUkXt3bUhytsPE3uISZwO4fgmijoh28AX8tGzxdfQehQHvqqGa
 K6rA==
X-Gm-Message-State: AOAM530vmOCtqFeU9f+p0uvJkakdIFKJ2C5mG1j7lTsopgkVvES8Ca46
 /snVmcSRf816HRtFMXz7St7dww==
X-Google-Smtp-Source: ABdhPJzJ0pzqKsGjmqvPE9hbg/rFLfBqAQjZTBv3DIf7Vq2A9IQs0yMNEU+RDC6VOM4LWib9TcBhug==
X-Received: by 2002:a7b:c2aa:: with SMTP id c10mr13304059wmk.101.1615558505789; 
 Fri, 12 Mar 2021 06:15:05 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm2868382wmm.5.2021.03.12.06.15.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 06:15:05 -0800 (PST)
Date: Fri, 12 Mar 2021 15:15:03 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YEt3Z2GbRZmmFkE4@phenom.ffwll.local>
References: <20210310210049.723206-1-jason@jlekstrand.net>
 <87sg51un0c.wl-ashutosh.dixit@intel.com>
 <17824b43488.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <17824b43488.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] i915: Drop legacy execbuffer support
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 10:31:33PM -0600, Jason Ekstrand wrote:
> 
> On March 11, 2021 20:26:06 "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> 
> > On Wed, 10 Mar 2021 13:00:49 -0800, Jason Ekstrand wrote:
> > > 
> > > libdrm has supported the newer execbuffer2 ioctl and using it by default
> > > when it exists since libdrm commit b50964027bef249a0cc3d511de05c2464e0a1e22
> > > which landed Mar 2, 2010.  The i915 and i965 drivers in Mesa at the time
> > > both used libdrm and so did the Intel X11 back-end.  The SNA back-end
> > > for X11 has always used execbuffer2.
> > > 
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > > .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 100 ------------------
> > > drivers/gpu/drm/i915/gem/i915_gem_ioctls.h    |   2 -
> > > drivers/gpu/drm/i915/i915_drv.c               |   2 +-
> > > 3 files changed, 1 insertion(+), 103 deletions(-)
> > 
> > Don't we want to clean up references to legacy execbuffer in
> > include/uapi/drm/i915_drm.h too?
> 
> I thought about that but Daniel said we should leave them. Maybe a comment
> is in order?

These headers are copied unchanged to userspace for building. We don't use
kernel-headers packages directly in any of our userspace (I hope at
least), but still better safe than sorry and avoid compilation failures
simply due to updated uapi headers that lost a few old things.

Also we need at least the struct size because that's encoded in the ioctl
number, and at that point might as well keep the entire thing.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
