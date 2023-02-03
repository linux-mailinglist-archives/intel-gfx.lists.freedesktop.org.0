Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 327A368A168
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 19:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B196610E835;
	Fri,  3 Feb 2023 18:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E5B10E833;
 Fri,  3 Feb 2023 18:15:59 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id dt8so4888958oib.0;
 Fri, 03 Feb 2023 10:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=b3t3H+aA2KgB4EAc83s9ir4SliyMLQWPAeErskn177Q=;
 b=oEu2PRhO+MVkx90VLgdYyS9aKsEXIZcUQajibKOHHouCYkjo8/w5jghE1UOfnH+Sem
 hyCOjkNLKNz/q7UQDjUY1fIAWdGB6XXnlQQVwEq1JnKJOqLVeub/ZJi5piL33q9ActHZ
 ppzwpetCs3HninK06SkZqIf165gB70O5HKXvU8Tb9+hdlpEgDxVUeWO+YhK7n7Spf7KG
 ZkYI5QDBXzJdImFn6zrHtKwTXQpTvoyisIPpAJIyPfi8auKXFrAeXBvcCZxRY2rv+EmH
 Jj3AFPQtaS/0CpQC6sl2WqW15gw4ObSo9RqA2DMl0TPnJxBzQh4dU0JqC3Eexy2BM4KW
 iLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=b3t3H+aA2KgB4EAc83s9ir4SliyMLQWPAeErskn177Q=;
 b=zPO/tr05DZEn2+acsc6PI0BH+R7QTDar/jDB5rRQKWxglGgL//yEthaSJCNokyI7Mh
 ZFWIgReMHsBFJrNSaCyr3YndkjFRdMl89dJuwrrXvH8NTP36Zq4vRpakxzlYjhrM/X0o
 ET3gMzPrWdEKz1hMsv5L9N8bEERw8i1bv6pX1691GHCFYPZrTqfU1cCkVLqUZuVZeBIJ
 9htloM9Wfyc1mSqJT+47N24vj6+SitzVLEsJ4Lfzr4ugtbo7RXTF5ICMO/9aAirVYBSx
 sg/EAElyiR9WZfciVxYSuxHmpA8UdT3hUROTVfvRRr5u38QGMfoImk5nS+NYFLcHMxir
 IbVw==
X-Gm-Message-State: AO0yUKVHByve6aQFBIgKZ5IMjDorzvP03znHm7DjTubZuvUIuPX+dXQX
 B5WAAos1t3wFu3DJ28aEbUQX/cUwYgc5Jt4juin/sR8xP4Q=
X-Google-Smtp-Source: AK7set9vjkE7o//vYuc1JhS77XzL5YZeTi+iclQY94ulHq8v4hgWcin4xF42ng4qxsn8v4qpvaGu0IC+ydiJ3PrDsw0=
X-Received: by 2002:a05:6808:280e:b0:360:ffcc:3685 with SMTP id
 et14-20020a056808280e00b00360ffcc3685mr385441oib.183.1675448158043; Fri, 03
 Feb 2023 10:15:58 -0800 (PST)
MIME-Version: 1.0
References: <20230203164937.4035503-1-robdclark@gmail.com>
In-Reply-To: <20230203164937.4035503-1-robdclark@gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 3 Feb 2023 10:15:56 -0800
Message-ID: <CAF6AEGvanLri-+Z5KgmgSFX2ShB09T7X7wxcSQk_0JV7PKGRng@mail.gmail.com>
To: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move fd_install after last use of
 fence
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
Cc: Rob Clark <robdclark@chromium.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, jason.ekstrand@collabora.com,
 intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 3, 2023 at 8:49 AM Rob Clark <robdclark@gmail.com> wrote:
>
> From: Rob Clark <robdclark@chromium.org>
>
> Because eb_composite_fence_create() drops the fence_array reference
> after creation of the sync_file, only the sync_file holds a ref to the
> fence.  But fd_install() makes that reference visable to userspace, so
> it must be the last thing we do with the fence.
>

Fixes: 00dae4d3d35d ("drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)")

> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index f266b68cf012..0f2e056c02dd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -3476,38 +3476,38 @@ i915_gem_do_execbuffer(struct drm_device *dev,
>
>  err_request:
>         eb_requests_get(&eb);
>         err = eb_requests_add(&eb, err);
>
>         if (eb.fences)
>                 signal_fence_array(&eb, eb.composite_fence ?
>                                    eb.composite_fence :
>                                    &eb.requests[0]->fence);
>
> +       if (unlikely(eb.gem_context->syncobj)) {
> +               drm_syncobj_replace_fence(eb.gem_context->syncobj,
> +                                         eb.composite_fence ?
> +                                         eb.composite_fence :
> +                                         &eb.requests[0]->fence);
> +       }
> +
>         if (out_fence) {
>                 if (err == 0) {
>                         fd_install(out_fence_fd, out_fence->file);
>                         args->rsvd2 &= GENMASK_ULL(31, 0); /* keep in-fence */
>                         args->rsvd2 |= (u64)out_fence_fd << 32;
>                         out_fence_fd = -1;
>                 } else {
>                         fput(out_fence->file);
>                 }
>         }
>
> -       if (unlikely(eb.gem_context->syncobj)) {
> -               drm_syncobj_replace_fence(eb.gem_context->syncobj,
> -                                         eb.composite_fence ?
> -                                         eb.composite_fence :
> -                                         &eb.requests[0]->fence);
> -       }
> -
>         if (!out_fence && eb.composite_fence)
>                 dma_fence_put(eb.composite_fence);
>
>         eb_requests_put(&eb);
>
>  err_vma:
>         eb_release_vmas(&eb, true);
>         WARN_ON(err == -EDEADLK);
>         i915_gem_ww_ctx_fini(&eb.ww);
>
> --
> 2.38.1
>
