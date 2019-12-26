Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1404912AEBC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 22:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF40896EB;
	Thu, 26 Dec 2019 21:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3E7896EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 21:10:03 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id d16so24523420wre.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 13:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DcU/ytIBzjIwmBEDAyk75lR6+Z79pirI0s4OsArKApY=;
 b=PK13bhCGhEOrP04hRUct6xrpV/PMM+soZakI5Z6U2cNfeGHcSv9yfhtAsF0cl2Hut6
 nIsXtu49ucCEAbhXBA6Lxb9kKVEr8Wg0jQXTWdG+dBV1a4Qr7F0oiXYFEGgy8Yb7A49t
 UQp9lXJV7Z5MWJBPX9tCEcKmRHUjzcFeHrZLXlzhhCtiPeoIiJfYqsTkeRYwWBD7tEAT
 lYawuPfVEjZKJJKa/8EzlVJTxiidS2OyIoIAId+CGXziOOmCTZV5a5FKQq3YTQHxJVPE
 ZyqVbWgEGz24BPv2p3TGmaG5RSigRoB8zFtCPFHW2HP0ZC0Jra9Yr8wQMx2SiBkVXE9I
 v0tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DcU/ytIBzjIwmBEDAyk75lR6+Z79pirI0s4OsArKApY=;
 b=VxgMfUXS1K/KyHUDmaW1J75vr0xbE4ONbzu50C1Ji6arcsMLM6iKts9GJ9zhHp0h4A
 t5+oZcEABnh/s37yPbx9h/UZ/UBkR3Jnac54OwcO0tPDfvLV71xX1WqLOFfeJEEtYn0f
 9Ez5PQneIv5ibeQOr83pCWqrRdbM/xl8ryGIDKRR8V61oV26FG0ot6qXdATle6Ri6zBO
 G4mRkkYHUS9LzUX7lUvCaXTEslrxUZg7RIwA9grZZguTcQ0BcFEodXZw6WBwebaMG6ue
 ++dRtsj4cpmZ+oQt4teCd/yGceoMRVD3EG1eviuW7otkUsSme/L998AN4Sw0UNFyipeZ
 J+TQ==
X-Gm-Message-State: APjAAAUzCucr3DUNlTC1bdo3Bs1tNv6FKC8NhvOsR4o9pKSY9hJxj6WD
 ts+lmoJmDdrFQdGjQUymsf2hlL9yMM2cwC/5N6a59UW+
X-Google-Smtp-Source: APXvYqyy5Bfxxt1+Rl9pW4lZpsEeDoJJZfnnlpvifC0Z4wjtghiTq4tSf5T97nbWirZJ1qfz+NE21Cnb3xqsCsnewUc=
X-Received: by 2002:adf:fc08:: with SMTP id i8mr1742602wrr.82.1577394602137;
 Thu, 26 Dec 2019 13:10:02 -0800 (PST)
MIME-Version: 1.0
References: <20191225175514.21271-1-swati2.sharma@intel.com>
In-Reply-To: <20191225175514.21271-1-swati2.sharma@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 26 Dec 2019 13:09:49 -0800
Message-ID: <CAKi4VAJOsg5pashSkEjTd4LrrbZ3ZXwK8ivw1PEfQbBrW5gWKA@mail.gmail.com>
To: Swati Sharma <swati2.sharma@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Increase log level if DSB
 engine gets busy
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 25, 2019 at 10:07 AM Swati Sharma <swati2.sharma@intel.com> wrote:
>
> Increase the log level if DSB engine gets busy. If dsb engine
> is busy, it should be an error condition to indicate there might be
> some difficulty with the hardware.
>
> If DSB engine gets busy, load luts will fail and as per current
> driver design if one instance of DSB engine gets busy, we are not
> allocating the other instance. So, increase the log level to indicate there
> could be an issue with driver/hardware.
>
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index ada006a690df..6f67b5dfa128 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -52,7 +52,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
>
>         dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
>         if (DSB_STATUS & dsb_ctrl) {
> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
> +               DRM_ERROR("DSB engine is busy.\n");

are we seeing this? Isn't it a dbg message because in this case we
would fallback to direct mmio?

Lucas De Marchi

>                 return false;
>         }
>
> @@ -72,7 +72,7 @@ static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
>
>         dsb_ctrl = I915_READ(DSB_CTRL(pipe, dsb->id));
>         if (DSB_STATUS & dsb_ctrl) {
> -               DRM_DEBUG_KMS("DSB engine is busy.\n");
> +               DRM_ERROR("DSB engine is busy.\n");
>                 return false;
>         }
>
> --
> 2.24.1
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
