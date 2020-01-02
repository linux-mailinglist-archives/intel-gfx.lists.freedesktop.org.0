Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC04812F1E6
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 00:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019B36E15B;
	Thu,  2 Jan 2020 23:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7363D6E15B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 23:44:51 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id t14so7165545wmi.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 15:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YI50omODjlBKVPdrsznZUw7FhKpvGCDl//Pa/AETAFU=;
 b=Ju42CM4ykbGEar8kHwLxpjzcjvpB/PL7vf5Ks+RuONMcibtrFRvHWF0XQD6gmDKkWT
 Bo8+cgBxC0OZjWvusQ/R79trGVq7IH9HH7h8SLETsWzEkstAOBU4h8nnXfsISBOW2b/U
 9NissnP9K4di5BSuERdShyuIxB2ZHM038zoBx9i7dGIC7EFdZpKl6xbFS0JzEHMEVSwM
 HufLXezBt1T75hpqrUAdD+k85Q+NJ4e3o3c210BrNOj1yRE8OWUDw/YfS11g3hevfD5L
 SR/gxiZM2+dtMJGO4tmHNAbssVAujcOQmsNNPakBQwHT5bILhOpY0cwwnIXgejwPov/t
 vgwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YI50omODjlBKVPdrsznZUw7FhKpvGCDl//Pa/AETAFU=;
 b=dfHi/mSm3dmGqJggR9dKYA+rkSTjpdnthljG2cC+FZIlG878jjlR95mSFjpDN/y5Ns
 WVYSJHhJMFfbVMYycSOFlm7DU0rT+gpum081hGyK3lSwwzw5ne7FzkR7JrTZeeUQa6O3
 5r2gCCMSwcWexgbv+kQXmXILTDRtfVZW4PinLoDxgiIEpLHK/8DnIdSDGanqxW6EG93M
 +4VJab8oX43fFeHReK45OiqUaAtvXTDzVhRoT/DdKL1bUS/clccr+z95ZoQobfEOc6zX
 ekgTUJ4rdhTYVIbqQ6aj0GZXjxWy42cRUaJT1Kgs2RIkgvsn6KlheIrlDEN6roXL54KN
 sB7Q==
X-Gm-Message-State: APjAAAWW1xiDcF51KiQsoyx5JI831IIjWN2mZ8auSSZiudeiyFOTGHDs
 1JDa2fulb3NAuiZ3jntfufqmW/TJWa1/tBqa+Hk=
X-Google-Smtp-Source: APXvYqztbeaCFlCm/qDi8aS8EA9HkXKNDG+R0e0SN0PKsiv3FdVAZD4GlCSUURu7ft33ELXEfmGn1arCYTdLK4spPH8=
X-Received: by 2002:a1c:61c1:: with SMTP id
 v184mr15923790wmb.160.1578008690043; 
 Thu, 02 Jan 2020 15:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20190306131957.GC3888@intel.com>
 <20190308232321.30168-1-lucas.demarchi@intel.com>
In-Reply-To: <20190308232321.30168-1-lucas.demarchi@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 2 Jan 2020 15:44:38 -0800
Message-ID: <CAKi4VAKSi1otf_R_D1mPEvCjR1+MRfhQ0NEc_-hJ298W=wdTRQ@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: remove ICP_PP_CONTROL
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

Today I saw this register and had a vague memory of having already
removed it in the past.
It seems this patch has never been reviewed/applied.

Ping

Lucas De Marchi

On Fri, Mar 8, 2019 at 3:23 PM Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>
> This register was placed in the middle of the PP_STATUS definition
> instead of together with the PP_CONTROL where it should. Since it's not
> used and there are no current plans to use it, just remove the
> definition.
>
> v2: remove the define rather than moving it.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 11 -----------
>  1 file changed, 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c0cd7a836799..4a855befa838 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4692,17 +4692,6 @@ enum {
>  #define _PP_STATUS                     0x61200
>  #define PP_STATUS(pps_idx)             _MMIO_PPS(pps_idx, _PP_STATUS)
>  #define   PP_ON                                (1 << 31)
> -
> -#define _PP_CONTROL_1                  0xc7204
> -#define _PP_CONTROL_2                  0xc7304
> -#define ICP_PP_CONTROL(x)              _MMIO(((x) == 1) ? _PP_CONTROL_1 : \
> -                                             _PP_CONTROL_2)
> -#define  POWER_CYCLE_DELAY_MASK        (0x1f << 4)
> -#define  POWER_CYCLE_DELAY_SHIFT       4
> -#define  VDD_OVERRIDE_FORCE            (1 << 3)
> -#define  BACKLIGHT_ENABLE              (1 << 2)
> -#define  PWR_DOWN_ON_RESET             (1 << 1)
> -#define  PWR_STATE_TARGET              (1 << 0)
>  /*
>   * Indicates that all dependencies of the panel are on:
>   *
> --
> 2.20.1
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
