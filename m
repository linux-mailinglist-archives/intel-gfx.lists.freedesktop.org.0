Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9414514E22F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18E76E884;
	Thu, 30 Jan 2020 18:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA22A6E884
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:50:48 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id 73so1566484uac.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 10:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0v0xOESHs8YVWVSBdFm2QL1ZbgwZo7LAKqtXd7i30rw=;
 b=OBglCDMkEaX3f+EiFzG/SX+zWZQW+SO9UFC7Emo1jFALqjbaNNX4pwesRKlkZZz1Je
 oHC6gcyBKjQoWr8ycaztZbUxhVEG/GpPt1SHn3KUC2f82kCXYVirDvRsbnRgw21m2YMy
 5rRcTFL6cm7l5YJzcYVJJwGFLLxICLnbhP/Ut4oHfd+dfj68LIeAg4pGba1YVAdw6gm8
 NsUheMChrzG6d/M3iEr/X48GUAHkK+bzlYSgNhW2RtQCThjx6piLA9BEM4kWbG7ZaAGD
 CGZBK3f8QiU1Hp39oUPOTUV93ZlHy3FNHvVLoKbMNWg7M+CJQcx7B5xOgVy33zGJn3Ps
 Qd+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0v0xOESHs8YVWVSBdFm2QL1ZbgwZo7LAKqtXd7i30rw=;
 b=X+tN4tOgaijKpy+UWIyFXFXCxBd7Tb0Ma+PZ8k6EImg9mrQoBjjo7cMBhEZBlDDItq
 qb81nGK2W35dfnoXqz1O9WDkzWi0epJBfsseU30BsjNqqsTPP6C5QRJqB5daIY5c/ZTa
 aupBDNszeNb0LCD6VNE7wCBhFRmn1jqXrQEKoqCDjCIdOgm8Sjik6ztgCseQKFy4ZyUF
 7T0hu9v0NmZqLUjJEdmN9WRztq3hWgqV1hTt5Rvj1PXI5KZCkb+Mj1IJZ3NV8ZvzK5yh
 XYb3tF82CKWqjAbDg89e/q3BXujPbNs6UqvqZCHkgpFvM39Tdyi9CORwY0cg8sMmUHl9
 2htQ==
X-Gm-Message-State: APjAAAWMtD3fjUjJmT3RUj8M8+BxO/CNHI1/FS0XM7JkVxexIBYG5XAJ
 82qWdWxkJz8TYhoQGZx+VpHB/5OZ4UENkphX+6o=
X-Google-Smtp-Source: APXvYqwdidr4pNE6kmVz4gpfqqau2EvldJxYI5ib+5KvJH7fLXdqgfwHyx9+GHWAwJAiHV2Z8sNSTyG6vSe7MfaSTwY=
X-Received: by 2002:ab0:e16:: with SMTP id g22mr3421935uak.129.1580410247890; 
 Thu, 30 Jan 2020 10:50:47 -0800 (PST)
MIME-Version: 1.0
References: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
 <20200130181710.2030251-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200130181710.2030251-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jan 2020 18:50:21 +0000
Message-ID: <CAM0jSHMw1T7v8Vndn_CkCRFYV4G1P41wePcyxzqHh6ft1sA1Fw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Rename
 i915_gem_restore_ggtt_mappings() for its new placement
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

On Thu, 30 Jan 2020 at 18:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> The i915_ggtt now sits beneath gt/ outside of the auspices of gem/ and
> should be given a fresh name to reflect that. We also want to give it a
> name that reflects its role in the system suspend/resume, with the
> intention of pulling together all the GGTT operations (e.g. restoring
> the fence registers once they are pulled under gt/intel_ggtt_detiler.c)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c      | 34 +++--------------------
>  drivers/gpu/drm/i915/gt/intel_gtt.h       |  4 +--
>  drivers/gpu/drm/i915/i915_drv.c           |  4 +--
>  drivers/gpu/drm/i915/i915_gem.c           |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_gem.c |  6 ++--
>  5 files changed, 12 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index f83070b5e6ed..91ec175c38ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -104,27 +104,12 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
>         return IS_GEN(i915, 5) && IS_MOBILE(i915) && intel_vtd_active();
>  }
>
> -static void ggtt_suspend_mappings(struct i915_ggtt *ggtt)
> +void i915_ggtt_suspend(struct i915_ggtt *ggtt)
>  {
> -       struct drm_i915_private *i915 = ggtt->vm.i915;
> -
> -       /*
> -        * Don't bother messing with faults pre GEN6 as we have little
> -        * documentation supporting that it's a good idea.
> -        */
> -       if (INTEL_GEN(i915) < 6)
> -               return;
> -
> -       intel_gt_check_and_clear_faults(ggtt->vm.gt);
> -
>         ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
> -
>         ggtt->invalidate(ggtt);
> -}
>
> -void i915_gem_suspend_gtt_mappings(struct drm_i915_private *i915)
> -{
> -       ggtt_suspend_mappings(&i915->ggtt);
> +       intel_gt_check_and_clear_faults(ggtt->vm.gt);
>  }
>
>  void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
> @@ -1155,7 +1140,7 @@ void i915_ggtt_disable_guc(struct i915_ggtt *ggtt)
>         ggtt->invalidate(ggtt);
>  }
>
> -static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
> +void i915_ggtt_resume(struct i915_ggtt *ggtt)
>  {
>         struct i915_vma *vma;
>         bool flush = false;
> @@ -1163,8 +1148,6 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
>
>         intel_gt_check_and_clear_faults(ggtt->vm.gt);
>
> -       mutex_lock(&ggtt->vm.mutex);
> -
>         /* First fill our portion of the GTT with scratch pages */
>         ggtt->vm.clear_range(&ggtt->vm, 0, ggtt->vm.total);
>
> @@ -1191,19 +1174,10 @@ static void ggtt_restore_mappings(struct i915_ggtt *ggtt)
>         atomic_set(&ggtt->vm.open, open);

Wait, why are we playing tricks with vm.open here, I thought that was
only for vma unbind to skip touching the ptes, or is there something
else going on here?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
