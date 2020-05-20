Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E545D1DB0E8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 13:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E296E10F;
	Wed, 20 May 2020 11:03:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B1E6E10F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 11:03:25 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e1so2694766wrt.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 04:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=ct4iwtkqSx7W80DKvDt8WvEkiq9KjVIacJ0yr7BAVII=;
 b=gCn4N7N304bnLXil/a63o+C7lXWE4O+dUD5kr4U/QwkYok3WIYIss7MpTiwkIvDJDu
 Yb14/i8NGGvtiwnPpTQWB1oc/MHjv9gyvs+HjkbrsA9GEiFTSWKwCkg07hWlb9e22xpX
 cG1iXAAYqHj6N5FDXXS8FFy8ELfjoCREHTKlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=ct4iwtkqSx7W80DKvDt8WvEkiq9KjVIacJ0yr7BAVII=;
 b=NQEsOLQiDC4TAzpWj4XtcMcpNhDPgPJ3gRRe/Yar44YYJq/d8vqCVt7GhdrShbM0Op
 zPhtQOfyhj+L+zDK98WsO99jU0/g9gdiSvCuEG0Sy7l4WxG+MtEkwdttyBlRvUqK4oS3
 X2YMElFLw7DpUs+I70mn2Ld5pLjyl6Rjvm9kyxlyjs7VpMEGifc2MY8FK9kah+Ira1/T
 xMKXkmXaSb7l/rxGtqbbp9+Mf+wgLj353Lfnt75EZpHcXSdtMHeem/9f/q98q9bUZrGR
 TNXRwcdBPFIdp3EOzt7br9jsP4ndpijs0M5Abjwi3/j43pTaxBX5+SVpUEy0JuShRkEs
 LdDA==
X-Gm-Message-State: AOAM532QEG10xez+GcXgtlTIFk2Nh0GupeOsoWopASbtEY7MWmU44pYw
 6jqvma0WLT/OaPu/xC2Z6eVSPQ==
X-Google-Smtp-Source: ABdhPJzCd29Xl/wTekkJzbG2hFf7ELniw9c+535re3/QWPV7VzmtBOKv2TwjIms44WqcPc+fmic+SA==
X-Received: by 2002:adf:fe90:: with SMTP id l16mr3672440wrr.222.1589972604221; 
 Wed, 20 May 2020 04:03:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u65sm2743050wmg.8.2020.05.20.04.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:03:23 -0700 (PDT)
Date: Wed, 20 May 2020 13:03:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200520110320.GT206103@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Oded Gabbay <oded.gabbay@gmail.com>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, linux-rdma@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20200519132756.682888-1-daniel.vetter@ffwll.ch>
 <be86b73c-2fb3-a6c0-5a12-004af051210f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be86b73c-2fb3-a6c0-5a12-004af051210f@amd.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] dma-fence: add might_sleep annotation to
 _wait()
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
Cc: Oded Gabbay <oded.gabbay@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 Ben Skeggs <bskeggs@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 20, 2020 at 08:54:36AM +0200, Christian K=F6nig wrote:
> Am 19.05.20 um 15:27 schrieb Daniel Vetter:
> > Do it uncontionally, there's a separate peek function with
> > dma_fence_is_signalled() which can be called from atomic context.
> > =

> > v2: Consensus calls for an unconditional might_sleep (Chris,
> > Christian)
> > =

> > Full audit:
> > - dma-fence.h: Uses MAX_SCHEDULE_TIMOUT, good chance this sleeps
> > - dma-resv.c: Timeout always at least 1
> > - st-dma-fence.c: Save to sleep in testcases
> > - amdgpu_cs.c: Both callers are for variants of the wait ioctl
> > - amdgpu_device.c: Two callers in vram recover code, both right next
> >    to mutex_lock.
> > - amdgpu_vm.c: Use in the vm_wait ioctl, next to _reserve/unreserve
> > - remaining functions in amdgpu: All for test_ib implementations for
> >    various engines, caller for that looks all safe (debugfs, driver
> >    load, reset)
> > - etnaviv: another wait ioctl
> > - habanalabs: another wait ioctl
> > - nouveau_fence.c: hardcoded 15*HZ ... glorious
> > - nouveau_gem.c: hardcoded 2*HZ ... so not even super consistent, but
> >    this one does have a WARN_ON :-/ At least this one is only a
> >    fallback path for when kmalloc fails. Maybe this should be put onto
> >    some worker list instead, instead of a work per unamp ...
> > - i915/selftests: Hardecoded HZ / 4 or HZ / 8
> > - i915/gt/selftests: Going up the callchain looks safe looking at
> >    nearby callers
> > - i915/gt/intel_gt_requests.c. Wrapped in a mutex_lock
> > - i915/gem_i915_gem_wait.c: The i915-version which is called instead
> >    for i915 fences already has a might_sleep() annotation, so all good
> > =

> > Cc: Alex Deucher <alexander.deucher@amd.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Ben Skeggs <bskeggs@redhat.com>
> > Cc: "VMware Graphics" <linux-graphics-maintainer@vmware.com>
> > Cc: Oded Gabbay <oded.gabbay@gmail.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > Cc: linux-rdma@vger.kernel.org
> > Cc: amd-gfx@lists.freedesktop.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

intel-gfx-ci approves too, thanks to both of you for reviews, patch merged
to drm-misc-next.
-Daniel

> =

> > ---
> >   drivers/dma-buf/dma-fence.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > =

> > diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> > index 90edf2b281b0..656e9ac2d028 100644
> > --- a/drivers/dma-buf/dma-fence.c
> > +++ b/drivers/dma-buf/dma-fence.c
> > @@ -208,6 +208,8 @@ dma_fence_wait_timeout(struct dma_fence *fence, boo=
l intr, signed long timeout)
> >   	if (WARN_ON(timeout < 0))
> >   		return -EINVAL;
> > +	might_sleep();
> > +
> >   	trace_dma_fence_wait_start(fence);
> >   	if (fence->ops->wait)
> >   		ret =3D fence->ops->wait(fence, intr, timeout);
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
