Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C494B3B2D3D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 13:08:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2CC6EA1F;
	Thu, 24 Jun 2021 11:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B13880C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 11:08:26 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id g7so1558692wri.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 04:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QIhYwuUZh1E/gonAIS7dcnqcARAdk59HgVxHGkujk1w=;
 b=KYg6sCUgU5Bqq9lAHCwCyNk4iI8OOFRlW6guSXIP6LW87QwTsKYBYg3RnfRmt9k40Q
 mAp7Ad15MW5TVGrFh3HBAkqdPtc66Y3aMeWBrxtNnrw5qt8Oowa9wVcsYAlRfzrPWhZk
 rSfe9CqA4jUh2Iba07CNWbJByS6WmOvmSIaUc0CdCAVGyB7kBssEDVHwnwe0Hkaf4ZDk
 syGZAHp2spHeo7I1VkNl2ClSeQWeQhHBx5ltlruReLfOemdneSModtJiMAbs2cNJgCwR
 UEozWtd6Cbxre5SJsIle1RzEnYLkopuJHt9C9jX8RkiTEfNFAFH0C6U3RUZ6VEMOQND3
 4Ocg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QIhYwuUZh1E/gonAIS7dcnqcARAdk59HgVxHGkujk1w=;
 b=bPcDIBUfKR3jNFlT9IPu6paaMJY1cHHhx6CCNq3QCB45BZw6uB3hGwJcUlc6NKxffG
 P/p6y+FHOYhtst7bu3hEbSO/3nZEknn0C0s5Ey3KmviIprcGNVsi50PCKhLDKrnmeiZg
 FH74I22StRgv/lEOlbQfM7nNQazdpEZ740ELUTr5AAlKguUhBRXJF+bNnHtjLrmnhyLS
 rs45aTQawR4svGpGk5o2j+QiZ0NqXx+50M8DFgsnKpzmxwbctLcPXI8yshgEgmdYT3b6
 Iz3on/g3Bq927IOEFVPfJpfzJc1tHgPEKD/CcK334+cYfN9/OITDqG6S+/Y/m5OtFFZs
 K5wA==
X-Gm-Message-State: AOAM532CNIivrjGlW6QaO/H0wKN34vEVPhP8MZDTgMiusdsOj6SQQB45
 YHKy5pOpzDutDVZVCFi8KgRUs9t/aaf0mmzlVCB0lA==
X-Google-Smtp-Source: ABdhPJxZoRSMXwTUmNasGUwFhckdvqD70ZR4JKM/20OMS3RCLqJgbufNanpEClxPKCBbMcnvj83uF/kwgAhx/e5SHjs=
X-Received: by 2002:a5d:47cf:: with SMTP id o15mr3920624wrc.6.1624532904531;
 Thu, 24 Jun 2021 04:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210622165511.3169559-4-daniel.vetter@ffwll.ch>
 <20210623161955.3371466-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210623161955.3371466-1-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 24 Jun 2021 12:08:11 +0100
Message-ID: <CAPj87rN_P7u5JGWBOHc5BEXiz1Znek6fDTyj-uVr2nwEcGX_XA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [Mesa-dev] [PATCH] dma-buf: Document dma-buf
 implicit fencing/resv fencing rules
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
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Wang <kevin1.wang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Chen Li <chenli@uniontech.com>, ML mesa-dev <mesa-dev@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Dennis Li <Dennis.Li@amd.com>,
 Deepak R Varma <mh12gx2825@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 23 Jun 2021 at 17:20, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> +        *
> +        * IMPLICIT SYNCHRONIZATION RULES:
> +        *
> +        * Drivers which support implicit synchronization of buffer access as
> +        * e.g. exposed in `Implicit Fence Poll Support`_ should follow the
> +        * below rules.

'Should' ... ? Must.

> +        * - Drivers should add a shared fence through
> +        *   dma_resv_add_shared_fence() for anything the userspace API
> +        *   considers a read access. This highly depends upon the API and
> +        *   window system: E.g. OpenGL is generally implicitly synchronized on
> +        *   Linux, but explicitly synchronized on Android. Whereas Vulkan is
> +        *   generally explicitly synchronized for everything, and window system
> +        *   buffers have explicit API calls (which then need to make sure the
> +        *   implicit fences store here in @resv are updated correctly).
> +        *
> +        * - [...]

Mmm, I think this is all right, but it could be worded much more
clearly. Right now it's a bunch of points all smashed into one, and
there's a lot of room for misinterpretation.

Here's a strawman, starting with most basic and restrictive, working
through to when you're allowed to wriggle your way out:

Rule 1: Drivers must add a shared fence through
dma_resv_add_shared_fence() for any read accesses against that buffer.
This appends a fence to the shared array, ensuring that any future
non-read access will be synchronised against this operation to only
begin after it has completed.

Rule 2: Drivers must add an exclusive fence through
dma_resv_add_excl_fence() for any write accesses against that buffer.
This replaces the exclusive fence with the new operation, ensuring
that all future access will be synchronised against this operation to
only begin after it has completed.

Rule 3: Drivers must synchronise all accesses to buffers against
existing implicit fences. Read accesses must synchronise against the
exclusive fence (read-after-write), and write accesses must
synchronise against both the exclusive (write-after-write) and shared
(write-after-read) fences.

Note 1: Users like OpenGL and window systems on non-Android userspace
are generally implicitly synchronised. An implicitly-synchronised
userspace is unaware of fences from prior operations, so the kernel
mediates scheduling to create the illusion that GPU work is FIFO. For
example, an application will flush and schedule GPU write work to
render its image, then immediately tell the window system to display
that image; the window system may immediately flush and schedule GPU
read work to display that image, with neither waiting for the write to
have completed. The kernel provides coherence by synchronising the
read access against the write fence in the exclusive slot, so that the
image displayed is correct.

Note 2: Users like Vulkan and Android window system are generally
explicitly synchronised. An explicitly-synchronised userspace is
responsible for tracking its own read and write access and providing
the kernel with synchronisation barriers. For instance, a Vulkan
application rendering to a buffer and subsequently using it as a read
texture, must annotate the read operation with a read-after-write
synchronisation barrier.

Note 3: Implicit and explicit userspace can coexist. For instance, an
explicitly-synchronised Vulkan application may be running as a client
of an implicitly-synchronised window system which uses OpenGL for
composition; an implicitly-synchronised OpenGL application may be
running as a client of a window system which uses Vulkan for
composition.

Note 4: Some subsystems, for example V4L2, do not pipeline operations,
and instead only return to userspace when the scheduled work against a
buffer has fully retired.

Exemption 1: Fully self-coherent userspace may skip implicit
synchronisation barriers. For instance, accesses between two
Vulkan-internal buffers allocated by a single application do not need
to synchronise against each other's implicit fences, as the client is
responsible for explicitly providing barriers for access. A
self-contained OpenGL userspace also has no need to implicitly
synchronise its access if the driver instead tracks all access and
inserts the appropriate synchronisation barriers.

Exemption 2: When implicit and explicit userspace coexist, the
explicit side may skip intermediate synchronisation, and only place
synchronisation barriers at transition points. For example, a Vulkan
compositor displaying a buffer from an OpenGL application would need
to synchronise its first access against the fence placed in the
exclusive implicit-synchronisation slot. Once this read has fully
retired, the compositor has no need to participate in implicit
synchronisation until it is ready to return the buffer to the
application, at which point it must insert all its non-retired
accesses into the shared slot, which the application will then
synchronise future write accesses against.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
