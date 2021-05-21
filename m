Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EB538C99A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 16:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9226EA15;
	Fri, 21 May 2021 14:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BDA89346
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 14:58:16 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id u133so11296271wmg.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 07:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BiK6ojG15Q48bs8KPm2ciWDK5dida/2NExdceiLW9xs=;
 b=GnbCU1Zb/WGwtpwgOW16Ti2RNuEZvLW9Rti4H/yJBwqqskLBxsPyvl8tXzKefb+d/c
 HssifkAyFYUDax/ggJt/htI4c9IjIOou/xzYUeTPFM2IgpsFKnBHCW1wD91MntrMijKj
 EpVj3vBtZt50HZoD1NUavmic2L9kOuzvGJkvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BiK6ojG15Q48bs8KPm2ciWDK5dida/2NExdceiLW9xs=;
 b=qC5Tbb0Jp1iX1Q1UAyvvleiN6wkNvRdSQx0Gp9/O4QxCrN/pF79l/jOhGMHeiQ76ms
 4180zrDknsXPKBDXuYJL7VIo8iMBZvINWSs+BNuPut1Jkvqj4QEzTgDWQFahQGCwwMNg
 K6owCuaix5gdN1jGzlIgzGyLGTQGqXGKmq6R08AC2RsRVvDKQN16MCTZ2UrlcMM/exwX
 nU+NWk8GxgGbZ+8ZA5V0hcShrbadlFKKrzE3+BJa/U6gNl3aYO8tQeWB5hED4LlDtotW
 hzjJSKieRv/7Nej/G+0Hv/sker6maZCxRBn+lI2sWsS3wOmlY2QrI3iJxCty9TLAnjEi
 RBBg==
X-Gm-Message-State: AOAM532bSUB4pI5NjXEnor5T2c0rUV6c86LqBlggG++SJZ3VUuMq2RmB
 tIYZVSm+vhKonjlsEzkNap9QMQ==
X-Google-Smtp-Source: ABdhPJy7m2eER2QhlBmQf/mqn9lHvRk+9Xh0PWE4vRD+EmsuXm/j3SyyStuVbvbNR6ut4dFXmid5dg==
X-Received: by 2002:a1c:66c6:: with SMTP id a189mr9464911wmc.60.1621609094607; 
 Fri, 21 May 2021 07:58:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o8sm2374239wrs.60.2021.05.21.07.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 07:58:14 -0700 (PDT)
Date: Fri, 21 May 2021 16:58:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <YKfKhMIRxBybyYrx@phenom.ffwll.local>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <CAF6AEGvr_CWDGgKFTNGQTiApbg=kyOn=uBrRM_H3DO8UBq-W5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvr_CWDGgKFTNGQTiApbg=kyOn=uBrRM_H3DO8UBq-W5g@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [Mesa-dev] [PATCH 01/11] drm/amdgpu: Comply with
 implicit fencing rules
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Stone <daniels@collabora.com>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 21, 2021 at 07:58:57AM -0700, Rob Clark wrote:
> On Fri, May 21, 2021 at 2:10 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > - msm is mildly entertaining. It also supports MSM_SUBMIT_NO_IMPLICIT,
> >   but because it doesn't use the drm/scheduler it handles fences from
> >   the wrong context with a synchronous dma_fence_wait. See
> >   submit_fence_sync() leading to msm_gem_sync_object(). Investing into
> >   a scheduler might be a good idea.
> 
> Yeah, drm/scheduler is (along with a lot of other things) on the TODO
> list.  But this isn't quite as bad as it sounds because userspace uses
> a u_queue thread to call the submit ioctl rather than blocking the
> driver.  (It also offloads some other work from the driver thread,
> like submit merging to reduce # of ioctls.  Coincidentally that
> arrangement was a step towards preparing userspace for some
> hypothetical non-ioctl uapi ;-))

You're also holding a pile of locks, which I expect latest with
multi-engine buffer sharing will be pain. If you push this to the
scheduler then the locks aren't held. Or maybe I've misread the flow, it's
become all a bit a blurr after all these drivers :-)

> OTOH it would be good to move blocking until the system can free
> enough pages to repin bo's out of the ioctl path to better handle some
> memory pressure corner cases without having to be interruptable over a
> lot more of the submit path..  Running chrome+android on devices
> without a lot of memory is fun..

Uh that one needs the userspace thread. Or entirely different semantics of
your ioctl, because you're not allowed to allocate memory once any
dma_fence is visible. So offloading the entire pinning to a submit thread
is no-go.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
