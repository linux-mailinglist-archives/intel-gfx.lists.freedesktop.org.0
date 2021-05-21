Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E9838C66A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 14:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C81EA6E49F;
	Fri, 21 May 2021 12:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEDA6E18E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 12:22:53 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id c14so19102908wrx.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 05:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tXzqoTh9Q6otGWSG/m2z4V/r+EdDHQXeOAwek5k1Apw=;
 b=fhGWDMtRWPPjaQRts6ngbU7RFDRPLZxsO/dYPBecxs11qDVpGOrqwFwTAclyPM2NM3
 nJP9nH1WfXkimY2pRXSwkgLLRAM1hH5iq2wdhk6yXFysmb/2V3dCMD+m/r8bCg5pCu20
 ytbeUFu8HYocl8xDkZD07SCx8OTWunCSNaeGb5HErEc3xvmS5tCcs72NgEZ5msvLwMmJ
 TOWwwzflosPbtN0ZPrkoNPsHKONhitwQCzjd2zYdQDaHymQK32IP8XUOxG5tKCfgtJrg
 sUALcf4OR6cFiuK4C+tykpV7nmZrJeviPP7dL+Zbes4wNiRGNZImMKgqKoXmpnF0BBeO
 sm8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tXzqoTh9Q6otGWSG/m2z4V/r+EdDHQXeOAwek5k1Apw=;
 b=os1xdbgMBquGfhJdh+bZiBKN3oS2XO6ay6qwP/uaYbz3tts+FeEzEgxYNfL5gqpCC8
 s9gaTnKwZvswOZ9aMfyBqQn9NMU8ZN9w2cuXr7dwXKfDkifPx8zM0k+/CTXBcFeIicag
 7ZxJzXxxCQHGctL1NP8UNtbnoYWLk03ZW/Bp4ZVpsuoJ3GKMKJa7WZm4PrNovo8piOTJ
 8caQspo9SAAZNvETS5eHgW22u/oCp2fW4Ri70nnAFmZ07L0R3mB0qNl+JJGjtJstA5W0
 9wRc7Igap4s3OPBmJFiIgvsmh7FuK3qYLebY44fu4xYWwN2XU04EinwcI26pMdv5JMxn
 Kxjw==
X-Gm-Message-State: AOAM531ill8KK5Lma83Nvnc7pZ8TIrua5ATNcAySEEKFdxQRkzXiBTti
 L8+YdSBxY7SbAxDT1vwZiCClmZoirTntWKsMzir9Vg==
X-Google-Smtp-Source: ABdhPJzs6JDh/PVfFHAZiz0tvGCOrZlKRQmwz7h15e9g9pD1J/vW4gLLdrMc8KrEGPgbhOVJa3TJluupr6PSsDmH+Fc=
X-Received: by 2002:adf:e70e:: with SMTP id c14mr9371714wrm.6.1621599771623;
 Fri, 21 May 2021 05:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
In-Reply-To: <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 13:22:40 +0100
Message-ID: <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/panfrost: Fix implicit sync
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 21 May 2021 at 10:10, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Currently this has no practial relevance I think because there's not
> many who can pull off a setup with panfrost and another gpu in the
> same system. But the rules are that if you're setting an exclusive
> fence, indicating a gpu write access in the implicit fencing system,
> then you need to wait for all fences, not just the previous exclusive
> fence.
>
> panfrost against itself has no problem, because it always sets the
> exclusive fence (but that's probably something that will need to be
> fixed for vulkan and/or multi-engine gpus, or you'll suffer badly).
> Also no problem with that against display.

Yeah, the 'second-generation Valhall' GPUs coming later this year /
early next year are starting to get pretty weird. Firmware-mediated
job scheduling out of multiple queues, userspace having direct access
to the queues and can do inter-queue synchronisation (at least I think
so), etc. For bonus points, synchronisation is based on $addr = $val
to signal and $addr == $val to wait, with a separate fence primitive
as well.

Obviously Arm should be part of this conversation here, but I guess
we'll have to wait for a while yet to see how everything's shaken out
with this new gen, and hope that whatever's been designed upstream in
the meantime is actually vaguely compatible ...

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
