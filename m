Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DC112D1B5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:07:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3173789EFF;
	Mon, 30 Dec 2019 16:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E84B89EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:07:14 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id i4so8381698vkc.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 08:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QgeSp3bQehuChmYxKBnmiYOtcBXEB8slgLwijhEVfMI=;
 b=WPy8XuEPrxT6PHqi1OJ8RpOIGRJBU9/SDlIeyOctbY+ksLgST17rxqTQRZv6or8RgN
 gPlYwjzht+aNCg46LOJv9tGrGUsRK5mOU1NTOYCYrla2mY92VqxV2vvr8aPT1SaD2T1B
 7KSYFps0vMadVPI5f3zbXB9I2SVcNe1pPwiw+cH4Qum7N4myIagG3aFpzDZuAS8DzrIi
 Jv3nKp0vq6V5giVr0fpKv/PHzT1RErm3cPaOQMtMVlPFz6QMlkuZPOULD7PbMve8Qlff
 vuOeks8aTHytvBUZto6Egg7LByRPSNKlQS5G0anZVcyJ0aSb+c4q//q2UeXL+RJCA7tL
 Jv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QgeSp3bQehuChmYxKBnmiYOtcBXEB8slgLwijhEVfMI=;
 b=qeo1gtp0hVUQ+njd0F91qH4EeCdmzk+2Y0DMKtvegIt5VoTpB0D8owqRgd9kaRx6M2
 8RjQURLoH390CcUpxomcpMxe1N6pcwa5tgRbxGexWAueSshR6vEyB8T/iDF5o4GL9euX
 z3KF0yyXeJO4U5jBb5XY6wNwZft5E6CbggiPLaT44zTVrzhgMVidHA+1n1XWvS6o8ehS
 SdFSXHI9AGwp7JhJNX8YflRFsygbfauAcBwcVUZirOvpHder3meJh0z6D/tdd8r1t3bz
 s83lbUxwfCUTnP2Gc1SAHQ0KlxoPg63e50F54wu9KUGzRJdY2NiXIBFMwSqU7CcNWlpd
 yuEA==
X-Gm-Message-State: APjAAAUoSQN4B4g9muFVuTGrk5igFC32jT40+etoXgs2CuwvtiKzMPwh
 yYs7tdedcodBeoaUHz1EQwkxJQOKx+XhlNnJNjk=
X-Google-Smtp-Source: APXvYqyuku5okPn6hgKr5n4Frv+jGhW/OsuUVkYLSrU1SLt2IDwdIEJlB4pZ0+3YIkAO86w7GpPb2ykGvIB8tng9CDI=
X-Received: by 2002:a1f:8fc3:: with SMTP id r186mr32996712vkd.87.1577722033310; 
 Mon, 30 Dec 2019 08:07:13 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-5-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 16:06:47 +0000
Message-ID: <CAM0jSHOsrHys3HoaKxSXaTyod+EHzc8yC+uvWanZEewysPinPA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Ignore stale context state
 upon resume
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We leave the kernel_context on the HW as we suspend (and while idle).
> There is no guarantee that is complete in memory, so we try to inhibit
> restoration from the kernel_context. Reinforce the inhibition by
> scrubbing the context.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c             | 17 +++++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 +-
>  2 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 14e7e179855f..b1508dbd1063 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2494,6 +2494,11 @@ static int execlists_context_alloc(struct intel_context *ce)
>
>  static void execlists_context_reset(struct intel_context *ce)
>  {
> +       u32 *regs;
> +
> +       CE_TRACE(ce, "reset\n");
> +       GEM_BUG_ON(!intel_context_is_pinned(ce));
> +
>         /*
>          * Because we emit WA_TAIL_DWORDS there may be a disparity
>          * between our bookkeeping in ce->ring->head and ce->ring->tail and
> @@ -2510,8 +2515,17 @@ static void execlists_context_reset(struct intel_context *ce)
>          * So to avoid that we reset the context images upon resume. For
>          * simplicity, we just zero everything out.
>          */
> -       intel_ring_reset(ce->ring, 0);
> +       intel_ring_reset(ce->ring, ce->ring->emit);
> +
> +       regs = memset(ce->lrc_reg_state, 0, PAGE_SIZE);
> +       execlists_init_reg_state(regs, ce, ce->engine, ce->ring, true);
>         __execlists_update_reg_state(ce, ce->engine);
> +
> +       /* Avoid trying to reload the garbage */
> +       regs[CTX_CONTEXT_CONTROL] |=
> +               _MASKED_BIT_ENABLE(CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT);
> +
> +       ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
>  }
>
>  static const struct intel_context_ops execlists_context_ops = {
> @@ -3968,7 +3982,6 @@ static void init_common_reg_state(u32 * const regs,
>                                             CTX_CTRL_RS_CTX_ENABLE);
>
>         regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
> -       regs[CTX_BB_STATE] = RING_BB_PPGTT;

Zero clue what that does...

Otherwise,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
