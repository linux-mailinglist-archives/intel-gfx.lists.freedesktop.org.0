Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B6A1EE57E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:38:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA6B89449;
	Thu,  4 Jun 2020 13:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9918289449
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 13:38:07 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id d21so3156407vsh.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 06:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y45pBWGJKRfkaoCpV3o24vwpTbM8zvk4kEhs1qkMkdA=;
 b=tH5xRfpnoXm1AE7QXb+rTnebufDCOmATb9miBC7Eyq7Wnw9uEK1gub//xhoNTuMJbL
 3lHaiyLj7SCxsRyJfi14CdE9IDAuts3gIETZCCzxqOWm+n7NISCnWsru0f2b/VUe02YL
 TlijTkaBVglQejtcmghllUqmY0qUAG+TiSM7SIxgVgJJNp7t8o1x3EmuCF/MkZENIXMV
 M3ajT66pDUQR8hT5bTUkOsHgYttQFnTDCLvpYC7U0AKOiBCHziXlvZVUU6dNLf6MQo3R
 /3GidIggU2YEBolzrEr8ZCgVCCtxJy01Nn3AN4SF40/WE12FSEAMqiOytmBSFpzoDmx1
 PIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y45pBWGJKRfkaoCpV3o24vwpTbM8zvk4kEhs1qkMkdA=;
 b=WIrgTn3ivm3/1zVuTgR2FbFSFbOvwCUM7dhkCS72MyIn855j5Mk3GKaKhjMUo9NE9W
 qcKxm0M065RXFkQxuf6bFp1Pyv1LZTQfbRELxHxmmoYMATvk5XLEVujeodle2DkRkWz5
 nyX2UbSANvyaFtrsg31iFP5+e6LJFfIpVRVxInP27/9L4QwradwsaCL4NCXIioZKodfv
 FRVX8MiNdjQxlQXXHVwpsUPSPaT0he1IkHJOx8gyFmYZoeFXlOSCQx7tuWNo6lU1kHGi
 UPyPt5y5TbpNBuYehiPrmB8iakgkU7x0t0CjrqLagJIWKcDWnXPgUSwF1cEV+eWVR9KB
 8xZg==
X-Gm-Message-State: AOAM530YY9fJ66sgbTP1pnBt7tPfjYNO/g4TpUSGiWcL34NBaS/9TRNH
 Wgzds8Y8hyaQgkugmYtAc3nBnW5TJNSdvCQVgvH7Mmhm
X-Google-Smtp-Source: ABdhPJxgF3Tto2ylfJdsKwV+LyiyOYV0RtZrUZ0qEZZOgBvxVw50gqfDHj/GiaxAJhTa1w6iRNoTenQwNS+XmviZD+Y=
X-Received: by 2002:a05:6102:10ce:: with SMTP id
 t14mr3684484vsr.164.1591277886628; 
 Thu, 04 Jun 2020 06:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
 <20200604103751.18816-14-chris@chris-wilson.co.uk>
In-Reply-To: <20200604103751.18816-14-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jun 2020 14:37:40 +0100
Message-ID: <CAM0jSHM=qwi9h20Lu9JCz8KXPNJHo7ToUv63t9eADM-U9MZm9A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 14/22] drm/i915/gem: Async GPU relocations
 only
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 4 Jun 2020 at 11:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Reduce the 3 relocation patches down to the single path that accommodates
> all. The primary motivation for this is to guard the relocations with a
> natural fence (derived from the i915_request used to write the
> relocation from the GPU).
>
> The tradeoff in using async gpu relocations is that it increases latency
> over using direct CPU relocations, for the cases where the target is
> idle and accessible by the CPU. The benefit is greatly reduced lock
> contention and improved concurrency by pipelining.
>
> Note that forcing the async gpu relocations does reveal a few issues
> they have. Firstly, is that they are visible as writes to gem_busy,
> causing to mark some buffers are being to written to by the GPU even
> though userspace only reads. Secondly is that, in combination with the
> cmdparser, they can cause priority inversions. This should be the case
> where the work is being put into a common workqueue losing our priority
> information and so being executed in FIFO from the worker, denying us
> the opportunity to reorder the requests afterwards.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
