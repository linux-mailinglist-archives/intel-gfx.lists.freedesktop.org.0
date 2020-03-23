Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0611318FEFD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 21:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F345D89DEC;
	Mon, 23 Mar 2020 20:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com
 [IPv6:2607:f8b0:4864:20::643])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A0789DEC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 20:24:13 +0000 (UTC)
Received: by mail-pl1-x643.google.com with SMTP id h11so6403559plk.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C0LsAz70o8cEG4Nw2F0iYGNC/gi7roMlmMUaydZViic=;
 b=mUNBTWdVOxOOX6AMAo6cgRH71ec0iV+SXDJ6JsA+ueMI12basjiumCLVcRvtdlfVsg
 OTGqufJENljEUWV9yNfmo/oi9+1JriOXNQdBg/sXHGWN4vH//BMyk3nxzIbD2bQw5sH6
 tFIP6XXBPMynW6Y4IHYYXZ8z4OQmViSCCKsxQKz1ZrOST7+Y6566R7oaniScAQNGHGvS
 sH3Wqn8bYzirLfVOTEuifD2Gt8kYBDBm1u4ydEfERAmCLUnrZLxYlspAAJnDpZb3rmO9
 O0zv3rUMz9wFk8HU9iqqIIbSnNC05bHEyosNyru1FjiuEL7939BWs3Qv2uU5oDKR+WnF
 TUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C0LsAz70o8cEG4Nw2F0iYGNC/gi7roMlmMUaydZViic=;
 b=CjkYwvgB2+KL1NgsYxniVpMtYXepw4ziSg48is6wOXJeVEZ60Mt5pt9N6rq/2lmmc2
 a5vRLjPI9It46yc25EjJ171UbcTiRBw7ErF9X3MzfYNvjQ9jrKhQKkAnIWc4Govk+qT8
 D3u6+0poI13ce7odpPivYAeWMDudohKxQsQx84VxtXqMsZ96lFzpoWfDKzkRH5AlJaEJ
 RF59oIbhSTHKKZzZstBBvYVCsHSOzQHls9Hiss1gWMSRQhmNTRURKBTWOsMvd1uxBjc9
 E82h7WyBwBnwTfZsGcrh9EqkZcS7/f33EGTCbpQczBYsM8rKI1gN6vPojheBrhYTSewE
 vvFQ==
X-Gm-Message-State: ANhLgQ0lVOMPI7D89g0xdiMoOjPRgqXVUXNxvmTISSnAk5fz+tkvQ++P
 6rB9iTu5EFUl86O+oZacqP9IhUFD6Z9MxCNnbe9I/Q==
X-Google-Smtp-Source: ADFU+vvYNOQvMVU8ZpcPZT3z+xHkhnMEd5HXpvvnpiNRLlGKXz7Ftce1nGRjzBbLh0Jk2Evgw+d0jvM44zxx6FFA7Rg=
X-Received: by 2002:a17:90b:8d2:: with SMTP id
 ds18mr1099401pjb.186.1584995052592; 
 Mon, 23 Mar 2020 13:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200323021053.17319-1-masahiroy@kernel.org>
In-Reply-To: <20200323021053.17319-1-masahiroy@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 23 Mar 2020 13:24:01 -0700
Message-ID: <CAKwvOdk3g0HzU1r90oRm46ACwfr=CwYjYxUs8w_x47n_sRsVTQ@mail.gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove always-defined
 CONFIG_AS_MOVNTDQA
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 22, 2020 at 7:12 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
> Use SSE4.1 movntdqa to accelerate reads from WC memory").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").

Indeed, I see 2.21 was released in 2010, and I see a commit modifying
existing support for movntdqa in 2008; it looks like these have been
supported for a while.  Thanks for this cleanup; the less we have to
invoke tools during make invocation, to lower the overhead of Kbuild.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by Clang's integrated assembler.
>
> Remove CONFIG_AS_MOVNTDQA, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  drivers/gpu/drm/i915/Makefile      | 3 ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 5 -----
>  2 files changed, 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a1f2411aa21b..e559e53fc634 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -28,9 +28,6 @@ subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>  CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
>  CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
>
> -subdir-ccflags-y += \
> -       $(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
> -
>  subdir-ccflags-y += -I$(srctree)/$(src)
>
>  # Please keep these build lists sorted!
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index fdd550405fd3..7b3b83bd5ab8 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -35,7 +35,6 @@
>
>  static DEFINE_STATIC_KEY_FALSE(has_movntdqa);
>
> -#ifdef CONFIG_AS_MOVNTDQA
>  static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len)
>  {
>         kernel_fpu_begin();
> @@ -93,10 +92,6 @@ static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len)
>
>         kernel_fpu_end();
>  }
> -#else
> -static void __memcpy_ntdqa(void *dst, const void *src, unsigned long len) {}
> -static void __memcpy_ntdqu(void *dst, const void *src, unsigned long len) {}
> -#endif
>
>  /**
>   * i915_memcpy_from_wc: perform an accelerated *aligned* read from WC
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323021053.17319-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
