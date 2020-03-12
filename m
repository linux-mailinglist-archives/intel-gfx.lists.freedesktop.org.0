Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E75241836C5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 18:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA46F89801;
	Thu, 12 Mar 2020 17:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEFD89801
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 17:01:27 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id e18so7256306ljn.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 10:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=64QWCKeN5lDwHCCMolMW5xu+X9rgWj7+rIyxLsgsIEw=;
 b=C3OzjUCm91v7Jnt7AJx2P3dnWyATQm7yrDdp9ZnzEWv7hjXeukXigJapd5ODbbx/pl
 ODujLlNI8onY6uy9Fp83o4H6poEFTycTXc7NjqqJLxbYHAJrN+HFuX8AWAF0m0cPXXFb
 NLSoEQEsZou3xYMqlm9sr6f3jhVITTkhONGcO3oltYW50QeVV2jlhqZ1MGQ9V5sY2qn5
 /8GqDBx0VXdgfk1sGyflArui+iSKn9f9h4OH9Ot+98vSVybEIzrrW25aeCHiCWzUsKo4
 ZbQ0murflSTEzTr9Zd2oeLPwliG+A4KImy5K5Uriu/dWh8gLhX61AzbXm6zm0VBJClju
 SJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=64QWCKeN5lDwHCCMolMW5xu+X9rgWj7+rIyxLsgsIEw=;
 b=gw/S7gu+94PuSSjyf3XEvdH3Ua/vls33FOmHI3tlfyV00Lms34yxl8iZW5+uy6AnSt
 U4V4eTVpkdrUrJb8F2I6cX8bLZufyR8mMIDBxzhzBjZHMwLvMnehB7m8iLO2ld6dcwx7
 3JPOTuj2O0HTMimc4xBWIhXcZEulMeiksj7jZQ5vAGL/r3+/p4IsyoDdx87pe0qZNF9k
 VulZsrKqX86OkmNFW2RUdCu9cOODPfiIHN1Cjdxg1p3fQFLmbioQjhbKJDFbRN7K7cGF
 dtXoqCWMgmpqAz4w0y5Umg0UxH1DYoS0VxDLdMZDXxJZbBbXNh8690fI/pJTEV8wphEj
 GydQ==
X-Gm-Message-State: ANhLgQ2tZAu+lIpm2RxP6u3CPFdjnhCW2suLtpnspa3AFtu45tjo+69F
 NsZr6wao+meZDqB25h2NN+9FBOZ5/tOJMP+7DSk=
X-Google-Smtp-Source: ADFU+vtFw1wXR4eQyHd1j31pVZNLugy8mr/NTb6hKU3QC2an2rwMWW8JVdlJheaTcveTI4a546Ii0yRCNin4roFRCgc=
X-Received: by 2002:a2e:984d:: with SMTP id e13mr5409462ljj.275.1584032485490; 
 Thu, 12 Mar 2020 10:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200312154708.1720-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200312154708.1720-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 12 Mar 2020 17:00:58 +0000
Message-ID: <CAM0jSHPoomPxh-fZrr7QOSeGDz_riqeicsJZKKqX5rTx3xunLQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Use igt_random_offset()
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

On Thu, 12 Mar 2020 at 15:47, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Switch igt_vm_isolation() to using igt_random_offset().
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 77c7e65de7c3..62157e7567da 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1809,7 +1809,6 @@ static int igt_vm_isolation(void *arg)
>
>         vm_total = ctx_vm(ctx_a)->total;
>         GEM_BUG_ON(ctx_vm(ctx_b)->total != vm_total);
> -       vm_total -= I915_GTT_PAGE_SIZE;
>
>         count = 0;
>         num_engines = 0;
> @@ -1828,10 +1827,9 @@ static int igt_vm_isolation(void *arg)
>                         u32 value = 0xc5c5c5c5;
>                         u64 offset;
>
> -                       div64_u64_rem(i915_prandom_u64_state(&prng),
> -                                     vm_total, &offset);
> -                       offset = round_down(offset, alignof_dword);
> -                       offset += I915_GTT_PAGE_SIZE;
> +                       offset = igt_random_offset(&prng, 0, vm_total,
> +                                                  I915_GTT_PAGE_SIZE,
> +                                                  I915_GTT_PAGE_SIZE);

Further down is: GEM_BUG_ON(offset < I915_GTT_PAGE_SIZE);

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
