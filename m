Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE11C2F32FE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 15:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C1B6E23F;
	Tue, 12 Jan 2021 14:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7526B6E23F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 14:33:33 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id e25so2326255wme.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 06:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZBQF6+KAJxHl6JaWYpU3hk0oLhLBN7AnirfyyeTyQCQ=;
 b=OXajfYYroQIPiqpVEjmcTzddAadWnRicv100S6ArZCnNo/ae84gda3bPwYCTmeA6/B
 KH+u2iGWviszZVtRroXShKRmmlGsv8T+Hm7OrzgRdsH3cZpt68e9JZX/8jTHhCe/O6Zg
 qyCZOQVoHH9I15lwvW8JfaoQL5bRYWDbh+i/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZBQF6+KAJxHl6JaWYpU3hk0oLhLBN7AnirfyyeTyQCQ=;
 b=sPXMwMWTQ3En6JqybOeFBb34EhqPpHIA71gTXMPD97nhTpTdAU/rFTXNUT6iTAEpyo
 DAAIokSuF0Za8lVNuK98RwTNnq2Dm19vOqee1jEbDvrjpr1PuY+5p0TJYtVvkrK8ikcJ
 D79NVjrJv3p0palSMSD0HfxdVkAdKMewKy4qwwgx3fmk5fFRamUgWXY2ybQociD9An1e
 I2giRRKS0y0dNQFwRKkZzsri36FhJizc0OxgFFfMwhABTF34tIs5ab7UAn5BSDrqFuMh
 3gK4XnKIJ7xtbki4Y0IGjFMsZYWw/VKYWJsY8qSpkjGWas1x9LKxtVtMTh1QmO9R+gVE
 zOaQ==
X-Gm-Message-State: AOAM530hTOEjJqY1GHL396mASavItov5jFTc6whHaLYFt9ihNbus0gM7
 zFOSqXmkutC01pfRsYiIF/kTQbFEh6zYRRUZ
X-Google-Smtp-Source: ABdhPJxR4/vdvoQppfi5YsynlFWnRCMM9+m+C5vE9ghWOtkMVeOPGpKb2kdwtQhmIaGfPtsUVyiV/A==
X-Received: by 2002:a1c:e902:: with SMTP id q2mr3823571wmc.143.1610462012218; 
 Tue, 12 Jan 2021 06:33:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y68sm4762563wmc.0.2021.01.12.06.33.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jan 2021 06:33:31 -0800 (PST)
Date: Tue, 12 Jan 2021 15:33:29 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <X/2zOWATsvk3oI8W@phenom.ffwll.local>
References: <20201127120718.454037-1-matthew.auld@intel.com>
 <20201127120718.454037-99-matthew.auld@intel.com>
 <160648391794.2925.9163508633021117030@build.alporthouse.com>
 <CAM0jSHPeEhguXs9hAagG5hhR9hxicR7CPyA4zEX=LCMxWMKwfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHPeEhguXs9hAagG5hhR9hxicR7CPyA4zEX=LCMxWMKwfA@mail.gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH 098/162] drm/i915/gtt: map the PD up
 front
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 12, 2021 at 10:47:57AM +0000, Matthew Auld wrote:
> On Fri, 27 Nov 2020 at 13:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Matthew Auld (2020-11-27 12:06:14)
> > > We need to general our accessor for the page directories and tables from
> > > using the simple kmap_atomic to support local memory, and this setup
> > > must be done on acquisition of the backing storage prior to entering
> > > fence execution contexts. Here we replace the kmap with the object
> > > maping code that for simple single page shmemfs object will return a
> > > plain kmap, that is then kept for the lifetime of the page directory.
> > >
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >
> > We are going to really struggle with this on 32b :(
> 
> Just go back to mapping everything on demand like we did previously,
> and unmap as soon as we are done with the current directory across
> alloc/insert/clear?

tbh if you run i915.ko on 32b kernels, on a modern platform, you deserve
all the pain you get. There's quite a bit of work going on to essentially
make kmap functions worse on 32b (we're not yet at the stage where people
propose to nuke them, but getting there slowly), so designing code today
with them in mind as primary justification is backwards.

What we can't do is keep kmap around forever, it'd need to be something
like vmap that has a long-term mapping intention behind it. And at that
point it's probably equally amounts of work to just go back to ad-hoc
kmap. Also the rules have changed somewhat with kmap_local anyway, a kmap
is a lot less painful in the code than it was with kmap_atomic.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
