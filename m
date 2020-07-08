Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F94218FBC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 20:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992EC6E910;
	Wed,  8 Jul 2020 18:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com
 [IPv6:2607:f8b0:4864:20::941])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BA16E910
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 18:32:52 +0000 (UTC)
Received: by mail-ua1-x941.google.com with SMTP id g4so1953334uaq.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 11:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZIsOW9L1zVSJLwPy+kwqApdQ1eA6tiZ3VYJkN83tGb8=;
 b=JJriwvjmL2bBVqjUXSwsKtrQueiAoSgk8zBM4aW7Gxku+3um6npiZEsfEeCthcY0ks
 scfQmrJPn/ZF2e7GNB9okKd2zIIREIhSw+BrP1jEphAICV9F8noQWC47e8T3y62H3Lni
 0zeC1EZOxrxpJweT/A/w5rPe73RGOl7iKm7a2u69bq+nHi6ZCo73nUsfTUMe+vBReAbD
 qHd4W12vn0Cs606Fo2xS7kyx/jfnJsu1TOKRpfOPeasNEe2Zh0TRw0ZDxnS9XlEr8Hbb
 Y2DmhNHv6Zodx5ErsJC+0nI97iBY9dAXHmC6FCbPypNsoOtX3H++jw/U/vc4cs3qC/88
 aYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZIsOW9L1zVSJLwPy+kwqApdQ1eA6tiZ3VYJkN83tGb8=;
 b=AsL9Iwp9yG9dlQBJI7qx/CKROQnlIPOWE3WGiTpBtxYI1Lfvc2BWn/4wzjld2zqQB7
 SeF9qqAcCM6DJ9/voep79VaPUsWW2mItROrhRcTsCudUODig++uN2dX+prE67i59iTaI
 /03gvWt8IiuPfwW9Z8trU3L5pcMolH25Ky+k9PI8fnjQJaDyi8j92YWeGdA3PBbqo3Pi
 HCS2WDWYr3G3gDWsuvViAgpJbShsErqr1ytZlvQKzcSeOVajni2SQRUA/z56LBDGJAfg
 9Z7ZRjhNynWEQCcIOb7qIOd4IQNYUw9XQKYeT2Z1wPIYcafcNXod6VvZd84wwU2IaS2M
 XkVg==
X-Gm-Message-State: AOAM532EaYIYYm+TYH/G3yPF9GT60uqjK8IUWv9ZvVBAnpt+33LH/qeY
 UDlEk1QEb2xHURBA9U2zVG7kijCiQbxeAGR1UoU=
X-Google-Smtp-Source: ABdhPJwehYXkLfB2VQw/Bj8l7y0Ee2QNFbtsnbn4xtYfcqUfqAGElMakCK4l1bwiiw4ferS/HsnagfBU/qtP3Qv+030=
X-Received: by 2002:ab0:186d:: with SMTP id j45mr44228279uag.104.1594233171991; 
 Wed, 08 Jul 2020 11:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-6-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 19:32:26 +0100
Message-ID: <CAM0jSHPRNktsmHHHaXZ3KiTP3LxDjFsftTw1ZkU99_Lt6dgHtw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Switch to object allocations
 for page directories
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The GEM object is grossly overweight for the practicality of tracking
> large numbers of individual pages, yet it is currently our only
> abstraction for tracking DMA allocations. Since those allocations need
> to be reserved upfront before an operation, and that we need to break
> away from simple system memory, we need to ditch using plain struct page
> wrappers.
>
> In the process, we drop the WC mapping as we ended up clflushing
> everything anyway due to various issues across a wider range of
> platforms. Though in a future step, we need to drop the kmap_atomic
> approach which suggests we need to pre-map all the pages and keep them
> mapped.
>
> v2: Verify our large scratch page is suitably DMA aligned; and manually
> clear the scratch since we are allocating random struct pages.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
>  .../gpu/drm/i915/gem/selftests/huge_pages.c   |   2 +-
>  .../drm/i915/gem/selftests/i915_gem_context.c |   2 +-
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  53 +--
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   1 +
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  89 ++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          |  37 ++-
>  drivers/gpu/drm/i915/gt/intel_gtt.c           | 303 ++++--------------
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |  94 ++----
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  42 ++-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |  16 +-
>  drivers/gpu/drm/i915/gvt/scheduler.c          |  17 +-
>  drivers/gpu/drm/i915/i915_drv.c               |   1 +
>  drivers/gpu/drm/i915/i915_drv.h               |   5 -
>  drivers/gpu/drm/i915/i915_vma.c               |  18 +-
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  23 ++
>  drivers/gpu/drm/i915/selftests/mock_gtt.c     |   4 +
>  17 files changed, 287 insertions(+), 421 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 5335f799b548..d0847d7896f9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -282,6 +282,7 @@ struct drm_i915_gem_object {
>                 } userptr;
>
>                 unsigned long scratch;
> +               u64 encode;
>
>                 void *gvt_info;
>         };
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 8291ede6902c..9fb06fcc8f8f 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -393,7 +393,7 @@ static int igt_mock_exhaust_device_supported_pages(void *arg)
>          */
>
>         for (i = 1; i < BIT(ARRAY_SIZE(page_sizes)); i++) {
> -               unsigned int combination = 0;
> +               unsigned int combination = SZ_4K;

Just an unrelated change?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
