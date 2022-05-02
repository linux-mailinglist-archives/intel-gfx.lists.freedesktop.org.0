Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E685171C2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 16:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6388510EBB9;
	Mon,  2 May 2022 14:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C8810EBB9
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 14:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651502385;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=58rLakAFNoJNnG5Di+FTawUYlxOYFnmmF/e8CRlldJQ=;
 b=ThcwBZOGCFrqtuoOfwDa2RJltQezy1DnWofRlzv9xDxOnck/Kd94HcMx6LcYZYXRQBqJY4
 lIMT5Z0dfGNHA8TbNREznskPclYFEHoheDwz/e2dQA+ex8rawSJ7pJ04PDHNUFjZ3U0AsW
 C0sqOEYLNgC+d5/bmWiPD3i9Hrnwp/s=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-Ol5vzRHTOAqTrZSQB4Kb0g-1; Mon, 02 May 2022 10:39:45 -0400
X-MC-Unique: Ol5vzRHTOAqTrZSQB4Kb0g-1
Received: by mail-wm1-f71.google.com with SMTP id
 v9-20020a05600c214900b00393fedddf26so38688wml.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 07:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=58rLakAFNoJNnG5Di+FTawUYlxOYFnmmF/e8CRlldJQ=;
 b=eUOAwsjW0hXIbTeAiAziSE1Mu+TimrWtL28ZGvbw4pgq10PU9fmY+HKI8jZnD7JDFN
 eawjLrRuNBbAmNeQDtCT0Frn8/0NfXbuLyE3ssSk8RiXLLf0gmQst8s4/Q6GElrDRF7b
 sNYoLUo0SWspMGgAJj7Kh2A2nYwvGfP+lYDvUDV96PsRjfXXTD4T88NiFtV/CFYuftER
 FXw7DfG56IECH3vRKh03wi/zNV5bXl4SJWoeBi/XlcI7K7DkQ95NBKjeZ5iigwMdu1tA
 PjeiI0cfi03qzM8RVk3YzTRw4ui3ZcxFqa3j4pvwuwTRooCYkWvsm7WUvubRCIM6cVlT
 d7YQ==
X-Gm-Message-State: AOAM530ZFfwWjw9wdX4QKTBZQYyi++cZF80hBGG5C9xUkm+ygZUgHveM
 tnO1AKS45/u3LOkKCbmsR++7AtVVy1wiyn9A3FEgph5QYFxawCZ+97GhirEPWNneD+Tq8C/J/2G
 9ToVrZ4ZgaIuh1AfxE/dgly67e9IExaihl5J7lW2rm5Uz
X-Received: by 2002:a7b:cb47:0:b0:393:dd9f:e64a with SMTP id
 v7-20020a7bcb47000000b00393dd9fe64amr15053003wmj.170.1651502383699; 
 Mon, 02 May 2022 07:39:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeSqSrtlczNXNP5eDjRGWp+ntWxu/JB9aqmsfOg0rqpKIibXazTKglVMoMhIkmYF6H1Dn/NKWLxpLeWCbfFDQ=
X-Received: by 2002:a7b:cb47:0:b0:393:dd9f:e64a with SMTP id
 v7-20020a7bcb47000000b00393dd9fe64amr15052989wmj.170.1651502383468; Mon, 02
 May 2022 07:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220420095720.3331609-1-kherbst@redhat.com>
In-Reply-To: <20220420095720.3331609-1-kherbst@redhat.com>
From: Karol Herbst <kherbst@redhat.com>
Date: Mon, 2 May 2022 16:39:32 +0200
Message-ID: <CACO55tv6rKETHhx=1yJ7Gf91sq1cDHyNgZxEdaN48PFBRdKu2g@mail.gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kherbst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix race in
 __i915_vma_remove_closed
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
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

friendly ping.

I am not even myself completely convinced that this is the correct
patch and it might just workaround some issues, but list_debug.c does
check if a list was already deleted and throws an error if it was and
this patch indeed fixes this one issue as multiple threads could enter
__i915_vma_remove_closed on the same vma.


On Wed, Apr 20, 2022 at 11:57 AM Karol Herbst <kherbst@redhat.com> wrote:
>
> i915_vma_reopen checked if the vma is closed before without taking the
> lock. So multiple threads could attempt removing the vma.
>
> Instead the lock needs to be taken before actually checking.
>
> v2: move struct declaration
>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5732
> Signed-off-by: Karol Herbst <kherbst@redhat.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 162e8d83691b..2efdad2b43fa 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1615,17 +1615,17 @@ void i915_vma_close(struct i915_vma *vma)
>
>  static void __i915_vma_remove_closed(struct i915_vma *vma)
>  {
> -       struct intel_gt *gt = vma->vm->gt;
> -
> -       spin_lock_irq(&gt->closed_lock);
>         list_del_init(&vma->closed_link);
> -       spin_unlock_irq(&gt->closed_lock);
>  }
>
>  void i915_vma_reopen(struct i915_vma *vma)
>  {
> +       struct intel_gt *gt = vma->vm->gt;
> +
> +       spin_lock_irq(&gt->closed_lock);
>         if (i915_vma_is_closed(vma))
>                 __i915_vma_remove_closed(vma);
> +       spin_unlock_irq(&gt->closed_lock);
>  }
>
>  static void force_unbind(struct i915_vma *vma)
> @@ -1641,6 +1641,7 @@ static void force_unbind(struct i915_vma *vma)
>  static void release_references(struct i915_vma *vma, bool vm_ddestroy)
>  {
>         struct drm_i915_gem_object *obj = vma->obj;
> +       struct intel_gt *gt = vma->vm->gt;
>
>         GEM_BUG_ON(i915_vma_is_active(vma));
>
> @@ -1651,7 +1652,9 @@ static void release_references(struct i915_vma *vma, bool vm_ddestroy)
>
>         spin_unlock(&obj->vma.lock);
>
> +       spin_lock_irq(&gt->closed_lock);
>         __i915_vma_remove_closed(vma);
> +       spin_unlock_irq(&gt->closed_lock);
>
>         if (vm_ddestroy)
>                 i915_vm_resv_put(vma->vm);
> --
> 2.35.1
>

