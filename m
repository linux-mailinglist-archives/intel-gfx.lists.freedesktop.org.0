Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341DE49F6A9
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 10:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832A510E4CE;
	Fri, 28 Jan 2022 09:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A252310E4A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 09:50:33 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id 71so5055138qkf.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 01:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DUh2Y5kLHOFlSTuK5Lgo3IhqrphHZwfMYIa6DFbe5W0=;
 b=Tp1A5Y9z3WQzZ8JkZfQuuIBiPJREcysh7cOhulkXVzWYcxqYKU14rBeJuQBJrJir/W
 XDh28oYG4MKEX3nHqu3sY0kqFvq3RBYEJQ8Je44u6KS9tmxOkMxp0Pb2gu9kEvGUbunl
 3vZIHDTxizAmtm+zuDMvXAiVnOjwykZW6BRtKaAAh5I+iuYP8hVUyPaTVMneoGIwpcnf
 RtH2Nx8GAquEd7bUmrZRwJ1v6+XubIysGnvht25E3cYGbxG9jdsA+jO7y4NFHQRhM9M7
 3cmd5c1J4NtikZJK9QORb89XwY2/BqbzKONOL3w0xtz01xvV8zoKw6ApXtl2+fW55Tf8
 2Pdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DUh2Y5kLHOFlSTuK5Lgo3IhqrphHZwfMYIa6DFbe5W0=;
 b=pMP14CTWUhSk55SlgZzzuCs6fW9UbUzg1Maelc+0c3EAAruC97WQv4iULXGUlL+VQ9
 XCDAbSZrr5ZfBavtqaLn6UedH3DDEsH3QZwT0k6LQ3ZnvVwuQx+9D1IWSkQ29UbMoGN8
 Eo4gMLY29JM9N6Mg42JDqXqqH/YJHuhjwO3X00xztpr5jdIC2l/WqStqUU8aWHXZilwg
 2uhGuAgAZZyi/nWMV8R6BUY+Ej2255ZdOG+Yo89Dx9Do2tmwbsSib9rMDvgPPTIH+I7G
 shYjlTUmQoMO9onzx7l4rVZO0NKSFxznCxRWLCmrWNU4HheD1YdXRAj9m7/P7a8Syygv
 62cA==
X-Gm-Message-State: AOAM530hkmqLPTU85dNEKzbATO5JuoNo4uNJ+ZkYrHvjF5dmbs7PzWBt
 o5whvYBJo1gzfiRHb0+aMJIUbEHf9tuiSUEuDnGawbCgA74=
X-Google-Smtp-Source: ABdhPJyPoZS9lm/wAg4sgblXpRnKXPryROfGxgwsSe62DMVAha3ka0KnFQ1jCxJN4HROD9cTith93a25IBzcgl/TFiU=
X-Received: by 2002:a05:620a:4012:: with SMTP id
 h18mr5320944qko.82.1643363432716; 
 Fri, 28 Jan 2022 01:50:32 -0800 (PST)
MIME-Version: 1.0
References: <20220127234118.111015-1-michael.cheng@intel.com>
 <20220127234118.111015-2-michael.cheng@intel.com>
In-Reply-To: <20220127234118.111015-2-michael.cheng@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 28 Jan 2022 09:50:06 +0000
Message-ID: <CAM0jSHPOShLknX2FQDSkogF518KXuZoFMCzh8HTZiQod=a24Pg@mail.gmail.com>
To: Michael Cheng <michael.cheng@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Re-work
 intel_write_status_page
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Jan 2022 at 23:41, Michael Cheng <michael.cheng@intel.com> wrote:
>
> Re-work intel_write_status_page to use drm_clflush_virt_range. This
> will prevent compiler errors when building for non-x86 architectures.
>
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 08559ace0ada..e6189fffa7a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -4,6 +4,7 @@
>
>  #include <asm/cacheflush.h>
>  #include <drm/drm_util.h>
> +#include <drm/drm_cache.h>
>
>  #include <linux/hashtable.h>
>  #include <linux/irq_work.h>
> @@ -144,15 +145,9 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
>          * of extra paranoia to try and ensure that the HWS takes the value
>          * we give and that it doesn't end up trapped inside the CPU!
>          */
> -       if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
> -               mb();
> -               clflush(&engine->status_page.addr[reg]);
> -               engine->status_page.addr[reg] = value;
> -               clflush(&engine->status_page.addr[reg]);
> -               mb();
> -       } else {
> -               WRITE_ONCE(engine->status_page.addr[reg], value);
> -       }
> +       drm_clflush_virt_range(&engine->status_page.addr[reg], PAGE_SIZE);
> +       WRITE_ONCE(engine->status_page.addr[reg], value);
> +       drm_clflush_virt_range(&engine->status_page.addr[reg], PAGE_SIZE);

s/PAGE_SIZE/sizeof(value) ?

>  }
>
>  /*

> --
> 2.25.1
>
