Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E62027EE15
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9232088EBA;
	Wed, 30 Sep 2020 15:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935A889A35
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:59:09 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id y190so1213025vsy.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 08:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0gNzoe5leZoRZpuC7OJ3cQvUHgxmjmB3tOocPOhMxmA=;
 b=sr9CL+Ibm6NL6+8Hz7Ur8BYLRTcjhhk0DCaig/lkb2vlP1pBbANgZviMWe15KygPX8
 TYX4zDZMKhmo2NjmHwynnx9lvHzPiRAmzQonJXXZhnDMPZ4cQX4/JUykzk1jNGXUsRfl
 RGbDQwhkDkRfe1+b2yErFPNHmCx9FMvexgCybGg1JgzORQrWB3n9LkaXB7aBHX34aRpH
 XMHnO3PzLPIRiQSk83XuRTWQWAZ/BNnvYltYKXYcEjyu8lWJrhvJ+OOOQeJxb6plaOYc
 W6McePsa7NGcQUp5Xp7pmb2uD8+vT2g9Jh1wITjSOosycUXuznXxwhMi5VSK2Y1i4otQ
 c9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0gNzoe5leZoRZpuC7OJ3cQvUHgxmjmB3tOocPOhMxmA=;
 b=pMtSKGB5uCNJtZ0b1OWT3YD1TUcwq1QiNlk0sxgpLS+gtCIsyl65M7mwU9zGqPvN+6
 VdBOF7zZKWAOwVJhfbN4dmApSF2YIc7lAaZmicPRo9/vFaQjVEpiitFHVShlcNR3C7VE
 QU4BDanJo0JBLLWsu1Cy8Pp6N+nvXmrgV/kri3YKf7hVzRrHon73SvycaP1EHM47Jts8
 /3j0utSXrhdlpHQpmovnbDcCmuGuJ0NXJBOOIoz/tWJAj63QBW29FP5wOTK4E9UREJD/
 ZhQ86Se6E9QKDLYKbQAC0YEmlP6mvIm7OqkNmy75C+aM3wC/umHNkajebKO+Y658QbKt
 bohw==
X-Gm-Message-State: AOAM531CJcu/EEd+t7nAiWqpqwkoaV5JiNUzLhynAW1lR6RqNre8LB7O
 K9lEEWWfosOR7oGQh36L40SZAl3+DQJiJDh0HbQ=
X-Google-Smtp-Source: ABdhPJy1rtcq0pZYW2NUWs2EW43cT/dgPrPNlwz/cJsRLLC6emaAd/kCJx7N4sZZtzWgUXXCwrqnIY/iobXh9/NxZX4=
X-Received: by 2002:a05:6102:2157:: with SMTP id
 h23mr1711310vsg.9.1601481548725; 
 Wed, 30 Sep 2020 08:59:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200930153016.105711-1-lucas.demarchi@intel.com>
In-Reply-To: <20200930153016.105711-1-lucas.demarchi@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 30 Sep 2020 16:58:42 +0100
Message-ID: <CAM0jSHON6C2xvg9DezVYku2Ue-k94SGUZ9269ZZ49PjYqsTW4A@mail.gmail.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: don't conflate is_dgfx with fake
 lmem
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

On Wed, 30 Sep 2020 at 16:30, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>
> When using fake lmem for tests, we are overriding the setting in
> device info for dgfx devices. Current users of IS_DGFX() are correct,
> but as we add support for DG1, we are going to use it in additional
> places to trigger dgfx-only code path.
>
> In future if we need we can use HAS_LMEM() instead of IS_DGFX() in the
> places that make sense to also contemplate fake lmem use.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 45e719c79183..3f6ed142198c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -840,9 +840,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>                     i915->params.fake_lmem_start) {
>                         mkwrite_device_info(i915)->memory_regions =
>                                 REGION_SMEM | REGION_LMEM | REGION_STOLEN;
> -                       mkwrite_device_info(i915)->is_dgfx = true;
>                         GEM_BUG_ON(!HAS_LMEM(i915));
> -                       GEM_BUG_ON(!IS_DGFX(i915));

Hmm, I guess this could work as an option c) but I think we will also
need to add something like:

@@ -835,7 +835,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
        u16 snb_gmch_ctl;

        /* TODO: We're not aware of mappable constraints on gen8 yet */
-       if (!IS_DGFX(i915)) {
+       if (!IS_DGFX(i915) && !HAS_LMEM(i915)) {
                ggtt->gmadr = pci_resource(pdev, 2);
                ggtt->mappable_end = resource_size(&ggtt->gmadr);
        }

The point is that we need to steal the mappable aperture later(which
is fine since it doesn't exist on "DGFX"), and use it as a substitute
for LMEMBAR. The !mappable aperture property is also useful since it
exercises some other parts of the code too.

Assuming CI is happy and this unbocks you then,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
