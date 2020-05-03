Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D691C42DF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 19:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9BDF6E44C;
	Mon,  4 May 2020 17:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.zx2c4.com (mail.zx2c4.com [192.95.5.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CCF89CA8
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 20:37:21 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id f47ff2c4
 for <intel-gfx@lists.freedesktop.org>;
 Sun, 3 May 2020 20:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=4oxhkRayVlbQD2eyndSaQE0tWZc=; b=vA549m
 QfhxuqTQ/UFjGIJfh7Pmgt4ABg7edALWKWwfr+p1a7XQUU+OstnbhpbqS7SAvgVk
 JFyEkLs4sNxlV9cfnMyfQiOhNv8VH/FGPtfK/S7mOPo27jeZnLCbYU0L+gGOFXQu
 1RgrDZSj7KWXUHl6carogwlb1a+TMju+JstP1XP0BCDYgp98tGi0Iy+NGRdP/dSX
 6+xKXkjuhXYnkF7XDe9v8kJcWoGC/9VzqXlXxJ9F3XTtWuTCiQ9ZpeZrRma29Mgj
 8kEEb52x9xW3FrJraAMXywcoqdn9XLgo4hnAGX17f0+21BfKZUNP3o78SZ/JWKHz
 h1kU4mhSVxR+Rk3g==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 4c8e9b75
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <intel-gfx@lists.freedesktop.org>;
 Sun, 3 May 2020 20:24:59 +0000 (UTC)
Received: by mail-il1-f169.google.com with SMTP id x2so9405397ilp.13
 for <intel-gfx@lists.freedesktop.org>; Sun, 03 May 2020 13:37:19 -0700 (PDT)
X-Gm-Message-State: AGi0PuaVWRFiSwMCx/v+/DVhdc2lPTz0zc1ZwyyOXHULurnfp7i45XkQ
 JrAlenhlRIlzHe9v87lD+GmjTQLLnPsdpbthiH4=
X-Google-Smtp-Source: APiQypIRfBeAuZGWtTR/twhRA+JKgfG0fxdVuT4KIOOzAu177n+yQghVKAOj9DMvm3a8v0062/KgRLH/QmcumDNrKd4=
X-Received: by 2002:a92:d4c4:: with SMTP id o4mr13779158ilm.38.1588538238517; 
 Sun, 03 May 2020 13:37:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200503203108.15420-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503203108.15420-1-chris@chris-wilson.co.uk>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Sun, 3 May 2020 14:37:07 -0600
X-Gmail-Original-Message-ID: <CAHmME9rK29z+uoEU4wBuZFF+=0vC_0zQWKcaW71ZrGV2spjwjw@mail.gmail.com>
Message-ID: <CAHmME9rK29z+uoEU4wBuZFF+=0vC_0zQWKcaW71ZrGV2spjwjw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Approved-At: Mon, 04 May 2020 17:32:53 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid using simd from interrupt
 context
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
Cc: intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 David Laight <David.Laight@aculab.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, May 3, 2020 at 2:31 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Query whether or not we are in a legal context for using SIMD, before
> using SSE4.2 registers.
>
> Suggested-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index 7b3b83bd5ab8..fc18d6c28d5f 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -24,6 +24,7 @@
>
>  #include <linux/kernel.h>
>  #include <asm/fpu/api.h>
> +#include <asm/simd.h>
>
>  #include "i915_memcpy.h"
>
> @@ -115,6 +116,9 @@ bool i915_memcpy_from_wc(void *dst, const void *src, unsigned long len)
>         if (unlikely(((unsigned long)dst | (unsigned long)src | len) & 15))
>                 return false;
>
> +       if (unlikely(!may_use_simd()))
> +               return false;
> +
>         if (static_branch_likely(&has_movntdqa)) {
>                 if (likely(len))
>                         __memcpy_ntdqa(dst, src, len >> 4);
> --
> 2.20.1

Looks like you beat me to the punch. Thanks for doing this.

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
