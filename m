Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F44A28BA80
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D31C6E479;
	Mon, 12 Oct 2020 14:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129936E479
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:12:54 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e18so19353026wrw.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 07:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g58ADCZPyRIHwE+21euAcqFmSP7pv60eybENpkbySbs=;
 b=EO0L4XbvN6NzkEivSp8yyVOzzWHwCNZ6/h6n34xbTyffBo8WLe3a3233j0flZ6ycjn
 lfO2q2+gzXNOinOrqBQ32jlCb9m/Z4J5ZjgSyiceEc1I2hkO64iSuSS2NtT6HarhDS2c
 04uvvFH1z81qX4NcqmVmJChcafoEjRP9zayGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g58ADCZPyRIHwE+21euAcqFmSP7pv60eybENpkbySbs=;
 b=i7D1r96sHQfjecz9JX2QOhAYQm4Gp3i8K4WYmhkJp8EgS+YzbgJpgFXZuGdxdZSP68
 Ky0G5QIjIAJoWqr1kc4s8+D/DRcX1rIV99eWBXiXvtbDV1nxctRhQne6jCiWWkbdB6cE
 165f1Pp/LU0QIAc6h0l1rQHU7ryku/wIzPt+fuhu2E5iMm7mbWlonhQkYIpYRmD503W2
 cKtxn2X0ukewHNBMdkxnzGZSnoI4aHWHpg/3zviizlGIH/ak2mPs6ggc2EX5lh49plwR
 iDkBGxKZM7/JQPso8AYb7q5CO83r5ajR5lM/VrBX2fJwXNkqxbppvwNjiWyIeugHC8bx
 soeg==
X-Gm-Message-State: AOAM533/robxnxVqwSWEt+9fkU3cHnluIIDPEDv5c0go+CWbt8KmWTx6
 09inf0N37Pm5udSfWIrhFWtGTw==
X-Google-Smtp-Source: ABdhPJyubphZCT2CrpO9e9m/CYDIDjsgXq5iTSJ8eSL7UPl4hvvgPVsSXkZTlS2JqrpBfM8K7bbg7w==
X-Received: by 2002:adf:bb07:: with SMTP id r7mr32062930wrg.150.1602511972692; 
 Mon, 12 Oct 2020 07:12:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 63sm25037141wrh.71.2020.10.12.07.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 07:12:51 -0700 (PDT)
Date: Mon, 12 Oct 2020 16:12:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201012141250.GV438822@phenom.ffwll.local>
References: <20201009102132.22770-1-chris@chris-wilson.co.uk>
 <CAKMK7uG51_t9988vTen2rK+gbwwjN0tLphpVhMd2nbsFTNi+GQ@mail.gmail.com>
 <160249974352.30484.764236348954464063@build.alporthouse.com>
 <CAKMK7uForN39MQ-1EsD5-TNfHG4=jXSMPR70T6QY0BhMQGVrRw@mail.gmail.com>
 <160251126986.3847.17805869986165580043@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160251126986.3847.17805869986165580043@build.alporthouse.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/vgem: Replace vgem_object_funcs with
 the common drm shmem helper
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 12, 2020 at 03:01:09PM +0100, Chris Wilson wrote:
> Quoting Daniel Vetter (2020-10-12 14:55:07)
> > On Mon, Oct 12, 2020 at 12:49 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > Quoting Daniel Vetter (2020-10-09 17:16:06)
> > > > On Fri, Oct 9, 2020 at 12:21 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > > >
> > > > > vgem is a minimalistic driver that provides shmemfs objects to
> > > > > userspace that may then be used as an in-memory surface and transported
> > > > > across dma-buf to other drivers. Since it's introduction,
> > > > > drm_gem_shmem_helper now provides the same shmemfs facilities and so we
> > > > > can trim vgem to wrap the helper.
> > > > >
> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > ---
> > > > >  drivers/gpu/drm/Kconfig         |   1 +
> > > > >  drivers/gpu/drm/vgem/vgem_drv.c | 281 ++------------------------------
> > > > >  drivers/gpu/drm/vgem/vgem_drv.h |  11 --
> > > > >  3 files changed, 13 insertions(+), 280 deletions(-)
> > > >
> > > > Nice diffstat :-)
> > > >
> > > > Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > >
> > > Unfortunately I had to drop the drm_gem_prime_mmap() since the existing
> > > expectation is that we hand the faulthandler off to shmemfs so we can
> > > release the module while the memory is exported.
> > 
> > That sounds like a broken igt. Once we have refcounting for
> > outstanding dma_fence/buf or anything else we'll block unloading of
> > the module (not unbinding of the driver). Which one is that?
> 
> The dma-buf is closed; all that remains is the mmap. Then from the
> perspective of the module, there is no reference back to the module
> since we delegate handling of the mmap back to the owner, the shmemfs
> builtin. That allows us to remove the module as its object code is no
> longer required.

Oh I know how that's possible, I wonder about which testcase encodes that.
Because it really shouldn't, since that's quite far away from the rough
consensus that we cobbled together on dri-devel a few months ago about how
hotunplug should work. If it's a vgem test, meh, we can change that
whenever. But if it's a generic test that falls over on vgem, then we need
to teach it better assumptions.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
