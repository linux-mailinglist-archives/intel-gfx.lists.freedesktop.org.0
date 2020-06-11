Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3B11F63AB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 10:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F69E6E046;
	Thu, 11 Jun 2020 08:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB0F6E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 08:34:34 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id t18so5209084wru.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 01:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=QepdUMREFHwlEXMSFJDNAoF8iHTQk6RVQGlxwgtSrqY=;
 b=E74LG/P+ZUE+YX56Cn6Zjyn3Qy68LzAK09BYAfg4YVk4oZ+KoKLm9RShaZSnfhXsyb
 lY/VAxAlqoD8wTaWeNQg/oJboc+vBicFQYrjFpdGQgCMIStdwNU8BV2ZJqMlutdLuJxA
 smQ33DorgG243Y/dKZ/bnO59viWQm2qRYJC1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=QepdUMREFHwlEXMSFJDNAoF8iHTQk6RVQGlxwgtSrqY=;
 b=pclU+kehh9MtXOkHeiCBZAIwgc3HuReHpauBK5+gU5O74tsaFKmBUCTkI7bGPa+vi1
 WzGIQS9PdZt1e11P7rDDAT/8WSVpXljOYY0zUzCSBuDZlaWXiB/bD3Wzhmft+sczByGE
 egokG52n010EULqDi8NLyflcRJHupPFqfUfLMCRBPaMieWmW5tUR4tstdYuCuspkhiDA
 oKNeeg8+oAFfyB4e+bol/jhDVC7iZIKxWC9NqYrwncCFpD3zvQ7BLMUmzvHim93xbjW+
 jTJ29HA2WwJf/Hrja1YH8OFY+741gQajHuB64LazpqYXkhIUsF8BwJ+jXE5O2R0bZ9Om
 z63Q==
X-Gm-Message-State: AOAM5326lRHJ/WEqTP+Wp1UBx3dyWUjewOSKg0jdeEWlLdDAvy3zvyQr
 wKTq0hdOQnzScYYSaU1uVqcD8Q==
X-Google-Smtp-Source: ABdhPJyPA+yFpnitoMF+MT8lLFomHpWx5gnHcG6eF5i3QAznWQkNqQBZVRnRMVL64cHRAoNHAdiHsw==
X-Received: by 2002:a5d:42cd:: with SMTP id t13mr8054435wrr.355.1591864473075; 
 Thu, 11 Jun 2020 01:34:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b14sm2955283wmj.47.2020.06.11.01.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 01:34:32 -0700 (PDT)
Date: Thu, 11 Jun 2020 10:34:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <20200611083430.GD20149@phenom.ffwll.local>
Mail-Followup-To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?=
 <thomas_os@shipmail.org>, 
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-5-daniel.vetter@ffwll.ch>
 <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b11c2140-1b9c-9013-d9bb-9eb2c1906710@shipmail.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 04/18] dma-fence: prime
 lockdep annotations
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 11, 2020 at 09:30:12AM +0200, Thomas Hellstr=F6m (Intel) wrote:
> =

> On 6/4/20 10:12 AM, Daniel Vetter wrote:
> > Two in one go:
> > - it is allowed to call dma_fence_wait() while holding a
> >    dma_resv_lock(). This is fundamental to how eviction works with ttm,
> >    so required.
> > =

> > - it is allowed to call dma_fence_wait() from memory reclaim contexts,
> >    specifically from shrinker callbacks (which i915 does), and from mmu
> >    notifier callbacks (which amdgpu does, and which i915 sometimes also
> >    does, and probably always should, but that's kinda a debate). Also
> >    for stuff like HMM we really need to be able to do this, or things
> >    get real dicey.
> > =

> > Consequence is that any critical path necessary to get to a
> > dma_fence_signal for a fence must never a) call dma_resv_lock nor b)
> > allocate memory with GFP_KERNEL. Also by implication of
> > dma_resv_lock(), no userspace faulting allowed. That's some supremely
> > obnoxious limitations, which is why we need to sprinkle the right
> > annotations to all relevant paths.
> > =

> > The one big locking context we're leaving out here is mmu notifiers,
> > added in
> > =

> > commit 23b68395c7c78a764e8963fc15a7cfd318bf187f
> > Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Date:   Mon Aug 26 22:14:21 2019 +0200
> > =

> >      mm/mmu_notifiers: add a lockdep map for invalidate_range_start/end
> > =

> > that one covers a lot of other callsites, and it's also allowed to
> > wait on dma-fences from mmu notifiers. But there's no ready-made
> > functions exposed to prime this, so I've left it out for now.
> > =

> > v2: Also track against mmu notifier context.
> > =

> > v3: kerneldoc to spec the cross-driver contract. Note that currently
> > i915 throws in a hard-coded 10s timeout on foreign fences (not sure
> > why that was done, but it's there), which is why that rule is worded
> > with SHOULD instead of MUST.
> > =

> > Also some of the mmu_notifier/shrinker rules might surprise SoC
> > drivers, I haven't fully audited them all. Which is infeasible anyway,
> > we'll need to run them with lockdep and dma-fence annotations and see
> > what goes boom.
> > =

> > v4: A spelling fix from Mika
> > =

> > Cc: Mika Kuoppala <mika.kuoppala@intel.com>
> > Cc: Thomas Hellstrom <thomas.hellstrom@intel.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > Cc: linux-rdma@vger.kernel.org
> > Cc: amd-gfx@lists.freedesktop.org
> > Cc: intel-gfx@lists.freedesktop.org
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > ---
> >   Documentation/driver-api/dma-buf.rst |  6 ++++
> >   drivers/dma-buf/dma-fence.c          | 41 ++++++++++++++++++++++++++++
> >   drivers/dma-buf/dma-resv.c           |  4 +++
> >   include/linux/dma-fence.h            |  1 +
> >   4 files changed, 52 insertions(+)
> =

> I still have my doubts about allowing fence waiting from within shrinkers.
> IMO ideally they should use a trywait approach, in order to allow memory
> allocation during command submission for drivers that
> publish fences before command submission. (Since early reservation object
> release requires that).

Yeah it is a bit annoying, e.g. for drm/scheduler I think we'll end up
with a mempool to make sure it can handle it's allocations.

> But since drivers are already waiting from within shrinkers and I take yo=
ur
> word for HMM requiring this,

Yeah the big trouble is HMM and mmu notifiers. That's the really awkward
one, the shrinker one is a lot less established.

I do wonder whether the mmu notifier constraint should only be set when
mmu notifiers are enabled, since on a bunch of arm-soc gpu drivers that
stuff just doesn't matter. But I expect that sooner or later these arm
gpus will show up in bigger arm cores, where you might want to have kvm
and maybe device virtualization and stuff, and then you need mmu
notifiers.

Plus having a very clear and consistent cross-driver api contract is imo
better than leaving this up to drivers and then having incompatible
assumptions.

I've pinged a bunch of armsoc gpu driver people and ask them how much this
hurts, so that we have a clear answer. On x86 I don't think we have much
of a choice on this, with userptr in amd and i915 and hmm work in nouveau
(but nouveau I think doesn't use dma_fence in there). I think it'll take
us a while to really bottom out on this specific question here.
-Daniel


> =

> Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@intel.com>
> =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
