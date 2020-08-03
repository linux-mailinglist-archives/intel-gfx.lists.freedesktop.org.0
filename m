Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C9923A02D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 09:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFFC76E212;
	Mon,  3 Aug 2020 07:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C336E212
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 07:16:52 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id jp10so10961793ejb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Aug 2020 00:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNExgD8cQYK/vFe1jPUGAJYqJPBpgG+9G+wlsFyx4sM=;
 b=ebz8d2sD6Zgc05OUcr2Z1JxmKS56IA59Zg6W0mvtQDkUylKRKgg7hYykGGBvzMfgM/
 FC+9jqTxk8sr4m355L6eGmScK2C0QuACSyeOrReYIBI34oRTUp+uR5RqyyE5w3htIHRJ
 hN/htMUU35rdLYUNOhOv8zeXpCVu6yoUQ9wIMHEp0rGAi9hBiwk7S8vkAiVcUBvLKCmD
 6m08YUDBwUz33dZz8LCskqpL73gPWXedrGSfbwy7WNhKep0AM4DXt13KhgYMGagSPqBD
 CJvAfZX5fxG4nMX60KDBgoRr7pwfTdQScDX9Z84nyobx5VyqonG5vNo41Ck9DNbIZLO0
 1wTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNExgD8cQYK/vFe1jPUGAJYqJPBpgG+9G+wlsFyx4sM=;
 b=KAth1ebg5GNigJHM2h1vVvEDVWD/OdOSxAu9CI0ufwX4PlP0OL/XvpAUyT7vzxDjhP
 AMnXDWQnzoFL0yIN+edTHoLYU9vyq1FCvxFlzCQ7QixG9nNARd5OdWxinYPGbGxWkLM4
 oxQb9S4NR2TCuhKuMJZSqje5oqIzoAmoUo2rufaoTW95Na/STuG7V0SFVN9s/+U36mS9
 pzquaGcDPpl42I4lv9kLZx3nQUOQjQDnYfZyPVR13oVwnd7i/xwJbuZdhhL4LPeKXufB
 WnGDUbJ3srIusbGVEi4Lq6w+7yB/mPoCQuIdlvD8+5yzu+jEVc2Nuku0WgaU4SJg3+DF
 RK6Q==
X-Gm-Message-State: AOAM530FPhzy3AG6HrO6po04smw5NXEuVwS1lbDyroSbWRE0KY2Skb7W
 ilZJrsJWQezQUy/PmPGpFvCLq2JyS7jkqesj/wQAnA==
X-Google-Smtp-Source: ABdhPJwdNZ1ra9b2AVf6fPPJF9ZbuVlEtZOmdXalvpPjqzlk2rlNYAyj/etiGtMPf5ySU9uZemMiqka7o1f8swiRcsM=
X-Received: by 2002:a17:907:72c8:: with SMTP id
 du8mr14939193ejc.237.1596439011301; 
 Mon, 03 Aug 2020 00:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200728152144.1100-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728152144.1100-1-chris@chris-wilson.co.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 3 Aug 2020 17:16:40 +1000
Message-ID: <CAPM=9twnbntmtCqoKa6RsDeKEwrjjJBi=St7mDtMXtP9Uy+EZA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [CI] drm/i915: Filter wake_flags passed to
 default_wake_function
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

On Wed, 29 Jul 2020 at 01:21, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The flags passed to the wait_entry.func are passed onwards to
> try_to_wake_up(), which has a very particular interpretation for its
> wake_flags. In particular, beyond the published WF_SYNC, it has a few
> internal flags as well. Since we passed the fence->error down the chain
> via the flags argument, these ended up in the default_wake_function
> confusing the kernel/sched.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2110
> Fixes: ef4688497512 ("drm/i915: Propagate fence errors")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: <stable@vger.kernel.org> # v5.4+
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_sw_fence.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 295b9829e2da..4cd2038cbe35 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -164,9 +164,13 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
>
>                 do {
>                         list_for_each_entry_safe(pos, next, &x->head, entry) {
> -                               pos->func(pos,
> -                                         TASK_NORMAL, fence->error,
> -                                         &extra);
> +                               int wake_flags;
> +
> +                               wake_flags = fence->error;
> +                               if (pos->func == autoremove_wake_function)
> +                                       wake_flags = 0;
> +
> +                               pos->func(pos, TASK_NORMAL, wake_flags, &extra);
>                         }
>
>                         if (list_empty(&extra))

This seems to be heading for my tree at the moment, there is only one
place in the kernel where someone compares pos->func with
autoremove_wake_function, and it's in this file.

This seems horribly brittle, can we at least make this better in -next
even if we have to have this fix in fixes?

I also have to question the whole raison d'etre for i915_sw_fence,
it's initial commit says it was meant to be a core kernel struct, but
I haven't seen any effort on behalf of i915 team to make that happen,
I expect when that is attempted the whole thing will get shredded for
layering violations like the above.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
