Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF69324E73
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Feb 2021 11:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EDA6EC90;
	Thu, 25 Feb 2021 10:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7AB6EC8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 10:45:47 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id i9so3936187wml.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Feb 2021 02:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=3idtwS6zYmBRk0u2V+/NLyjIX5bD4fwV71S/p31/Emk=;
 b=GY2kulOW8cXMjk6JFjNY+kK4D0HnSV/CRAjloRweHgCc60nXzEPiSlW9Y7rbNpdmGv
 TGCH9qNwv8zEUUnjcgDGLf5AoImmiBhF3hUPKbvfSz2vXQcl2wI33AuaEqppJvxhdWdM
 rMecDg/tiLISxBtWnG62/bS4yLn6+Xrf8myeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3idtwS6zYmBRk0u2V+/NLyjIX5bD4fwV71S/p31/Emk=;
 b=HQIZMTMM6R7s4AMvK+R4oG5D661uvhbCHYhWi0f8zqD3uJd5ZXKfCNr98RM9TtvxOo
 DxK4qi2pxUtx56/3Nvw11PJSa+XB/rj6CCf4nptEFpgr5Lv0/QcwFmQMSQNDaB4KoYg5
 Wwuy80/aGhnjk9FimV9fMc0t06v28ANIFhj3I2aBUtwRvRHV7bE5c4G9uvMXatbn19lw
 CmEFG9m6/MxgeN/Q1UU5v9DpsNBnFraF2f+LA+cIgexl6fSel1t0zgQYXTPX2iWtUlml
 V+uCLnvKXRpBqF3l/zgbpCfwkRXjprPU95wY/BzjtdFUEhLAzHPq3cj1EGRjx1PUUh9+
 xhHQ==
X-Gm-Message-State: AOAM532ytCpzPqXgFJ2w4F5KlYqAwmijfxGJ72PI6U/f5g7h9sMF10Eu
 lZZ0Wzu9kPM3Mk6DmpL6k/4bCg==
X-Google-Smtp-Source: ABdhPJxiL7xIc7cnoY5mDWFeLwU9JFNqQVi3g5zMbx77RZ3f+ZhOBSDI2s6aRAhBEpxtlkq3F4PzzA==
X-Received: by 2002:a05:600c:350a:: with SMTP id
 h10mr2644384wmq.142.1614249945915; 
 Thu, 25 Feb 2021 02:45:45 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a14sm9232064wrg.84.2021.02.25.02.45.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Feb 2021 02:45:45 -0800 (PST)
Date: Thu, 25 Feb 2021 11:45:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YDd/1xvDoctHWgdD@phenom.ffwll.local>
References: <20210223105951.912577-1-daniel.vetter@ffwll.ch>
 <1a7c2295-6241-f2bf-4a78-6cadd43bc248@shipmail.org>
 <CAKMK7uHzRb6Q_LgPUrrHn18sorYo7ysTgB+PNE36LDUUsJpHDg@mail.gmail.com>
 <20210224184657.GR2643399@ziepe.ca>
 <b364d7e9-b323-e590-359d-32e067f3f5ee@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b364d7e9-b323-e590-359d-32e067f3f5ee@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require
 VM_PFNMAP vma for mmap
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
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 25, 2021 at 11:30:23AM +0100, Christian K=F6nig wrote:
> =

> =

> Am 24.02.21 um 19:46 schrieb Jason Gunthorpe:
> > On Wed, Feb 24, 2021 at 09:45:51AM +0100, Daniel Vetter wrote:
> > =

> > > Hm I figured everyone just uses MAP_SHARED for buffer objects since
> > > COW really makes absolutely no sense. How would we enforce this?
> > In RDMA we test
> > =

> > drivers/infiniband/core/ib_core_uverbs.c:       if (!(vma->vm_flags & V=
M_SHARED))
> > =

> > During mmap to reject use of MAP_PRIVATE on BAR pages.
> =

> That's a really good idea. MAP_PRIVATE and any driver mappings doesn't
> really work at all.

Yeah I feel like this is the next patch we need to add on this little
series of locking down dma-buf mmap semantics. Probably should also push
these into drm gem mmap code (and maybe ttm can switch over to that, it's
really the same).

One at a time.
-Daniel
> =

> Christian.
> =

> > =

> > Jason
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
