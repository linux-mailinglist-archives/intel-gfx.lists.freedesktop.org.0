Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4814512AD95
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 18:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0E689C69;
	Thu, 26 Dec 2019 17:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F3289C69
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 17:03:42 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id u2so6461998wmc.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 09:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LwNCLy0scVhcHHs6IiZIqubyWBC4aBKtt9CS9oD9Xzs=;
 b=WsG4Vqm23o/KCM76qat/NkwszXMF8TXDgNL2wa2Xlzjz66QM+aLxLgn6tcxawJJZi6
 ndCp/P9yAJ1wcQ/GiUKSmyNg/MUtnZfzZLM4waRTEv4usnqD/JkKCdK1ZG6cOAMYLc/+
 qB4dAdY3nFernI67JM7xSyDAmcs9tq9HrrXsdxid52EZHLbOiW3i7000XVjLbiqf5/Wd
 u0CS9xYNt16Ft7lbsl3tcPeq3q8t/os1fDXVUJt8zVLmw7zLLayzvGfT43rHNwBPGEp6
 pklorE0+QCKUvEXKM+aeYA/XZMMQaKj9/sqLVRbUl4T0x607XDGfaovRyvMnFJqYCXqZ
 TILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LwNCLy0scVhcHHs6IiZIqubyWBC4aBKtt9CS9oD9Xzs=;
 b=Y1EnPRnRk/REzw5wW9qYxlZX+6s+UqLx8KQguKSSlyhPJXtn8QRkk3R0pUMIR4/13C
 k5yclkNzZvA/ne3sXJg/bj4jBra9S6nuiru5ojfNvnbNB9qOR4D/pp2qC5iFV+BFA07n
 VLiy/L1ei58ak50WhEnoT8fh7CO/o0Uy7DgKH9P/GHB6brJp1zqUG0CeDW1cSdq5dEy5
 kkyv2WVnDJuPLEsp/9bG/rdDPwqWl10HLzdzQGEaQPfq19sMFMIJZ1Yh+hlr/dsAhORU
 ch9TBhSN5XBl4fG02EHOS6WFbPd5WzVOgYXwnGyy4lWwe64/lomn8GyXWK8/LAyhdpWz
 DAlw==
X-Gm-Message-State: APjAAAUbOzkwRobyNDUWX9JVhbqJbtUpUqB+8P9S24yo/LZpmaLtN9+f
 1iIPtiB+wdHdmOPbrCMLbGxk6AmzZn8KXVFzdpY=
X-Google-Smtp-Source: APXvYqysDxkhD+bF4gSJEQ6FzhkTgghNuRuo6f306JqBKdfOcc004ksZ9sfO/rB8vLjKLDRx0Yg/le7p5fQ8u8fK4og=
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr14277138wmf.60.1577379821447; 
 Thu, 26 Dec 2019 09:03:41 -0800 (PST)
MIME-Version: 1.0
References: <5cf1d94b-d076-9d99-13ef-cf26dec10430@gnu.org>
In-Reply-To: <5cf1d94b-d076-9d99-13ef-cf26dec10430@gnu.org>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 26 Dec 2019 09:03:29 -0800
Message-ID: <CAKi4VAL2TxiTfqz84fx7UTaiBxvXuknqCwtsFZFa2WFCz3PZpQ@mail.gmail.com>
To: Ebrahim Byagowi <ebrahim@gnu.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix enable OA report logic
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 25, 2019 at 12:05 AM Ebrahim Byagowi <ebrahim@gnu.org> wrote:
>
>
> Clang raises
>
>   drivers/gpu/drm/i915/i915_perf.c:2474:50: warning: operator '?:' has lower precedence than '|'; '|' will be evaluated first [-Wbitwise-conditional-parentheses]
>                              !(stream->sample_flags & SAMPLE_OA_REPORT) ?
>                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
>   drivers/gpu/drm/i915/i915_perf.c:2474:50: note: place parentheses around the '|' expression to silence this warning
>                              !(stream->sample_flags & SAMPLE_OA_REPORT) ?
>                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
>   drivers/gpu/drm/i915/i915_perf.c:2474:50: note: place parentheses around the '?:' expression to evaluate it first
>                              !(stream->sample_flags & SAMPLE_OA_REPORT) ?
>                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
>
> with -Wbitwise-conditional-parentheses and apparently is right
> as '|' is evaluated before '?:' which doesn't seem to be the intention
> here so let's put parentheses in the right place to fix it.
>
> Signed-off-by: Ebrahim Byagowi <ebrahim@gnu.org>

This has already been fixed by
9278bbb6e43c ("drm/i915/perf: Reverse a ternary to make sparse happy")

Maybe it missed a "Fixes", reason it was not propagated to stable kernel.

Lucas De Marchi

> ---
>  drivers/gpu/drm/i915/i915_perf.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 2ae14bc14931..db963f7c2e2e 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2471,9 +2471,9 @@ static int gen12_enable_metric_set(struct i915_perf_stream *stream)
>                             * If the user didn't require OA reports, instruct the
>                             * hardware not to emit ctx switch reports.
>                             */
> -                          !(stream->sample_flags & SAMPLE_OA_REPORT) ?
> -                          _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS) :
> -                          _MASKED_BIT_DISABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS));
> +                          (!(stream->sample_flags & SAMPLE_OA_REPORT) ?
> +                           _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS) :
> +                           _MASKED_BIT_DISABLE(GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS)));
>
>         intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
>                            (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
> --
> 2.24.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
