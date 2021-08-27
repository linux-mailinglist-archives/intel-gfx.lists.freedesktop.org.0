Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC963F9B87
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45606E98F;
	Fri, 27 Aug 2021 15:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E587D6E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:16:35 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id f22so7521306qkm.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 08:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Crc8CKVeGvPRIVYOznWJFX9RCKKR59srH+Df8Ubo5Dk=;
 b=M6+okgClQPLueRiiqo93B3nE54baZbYvd2sdXh1jsx550M/0fUZkX31cHJMg4kYL36
 OTSMEljHFSbYVmbTenhE2VDqUsyuEGgaMoWZSLLuyDGEeKbMgOVwCPCuWgPksh5Coh1R
 vMfyDQmKGuhNkYMHj+4eSBK9Zk/hfCfHk9ME1cmA9MQEAnBQ4YrD68235bRisUwmnCTa
 K6WHVQttHohCKCcVYwL/DiBBi0w05cRw2a2LmVVzs7HT3ZSheRzjFMoIaGFIxg1BlmcQ
 FxtcqlDCk41BQtHPWBH7J6sEmf3YsKMpngzUUGk2VIlTIlFUOBLxrLJfPEj88Tjjdirb
 AMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Crc8CKVeGvPRIVYOznWJFX9RCKKR59srH+Df8Ubo5Dk=;
 b=eChlTk93DO2Yx1saAQfJOkgHSDiYoH8dA41ZEfQMCVLFZWeNpsaKospwFHh6qNDoE1
 YUJbbxxqUWfsjqc3E12LWb+WuDTybe2fRL9vnez0Cmt4ahBUUvwmngan+MhiuvVs8nTr
 D2ic3ZwsuYfL81FkDwfTmQ4/X+UJCysgJxe6KmxAkkTObdSCyac0Fe2wNpFtUEaXGYCs
 FQ8iJWsZ8PV2B0Axisi+rp23Qrnm3Ny9Nm+2/L2OEYHIramq6pIqGKai+ZH1VNDnWiai
 1y7nXTUKNPP5ewBnZwb7v7CUeFAVgPz3ssT1YGc0AFOTU2w486a+cu4NxzN+Bhuawr2V
 hsKw==
X-Gm-Message-State: AOAM531iAJqOZ/Uxpgni7HCQ4yeWdeoZf6hVqkm4croHwNX2gv34aLUr
 byYwuLXPkQxlp5rf6MgDY9rolHGKdd0ICFELGSVjjE057uc=
X-Google-Smtp-Source: ABdhPJy/1E5V16VSqciXwp0nTQTH5OJ4zIzjzwZhPGt2of/9ywrA2lCBCS092UIT/WURq24h/OZn5wCPw3iViZSf1WA=
X-Received: by 2002:a05:620a:2a10:: with SMTP id
 o16mr9252624qkp.481.1630077394915; 
 Fri, 27 Aug 2021 08:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210822162706.819507-1-ayaz.siddiqui@intel.com>
 <20210822162706.819507-4-ayaz.siddiqui@intel.com>
In-Reply-To: <20210822162706.819507-4-ayaz.siddiqui@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 27 Aug 2021 16:16:07 +0100
Message-ID: <CAM0jSHOVphRpFaKGAhjsx5m0dab4-h1TAoLKCnm_t-NzDYTNtQ@mail.gmail.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, 
 Stuart Summers <stuart.summers@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Jason Ekstrand <jason@jlekstrand.net>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC 03/13] drm/i915/xehpsdv: enforce min GTT
 alignment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 22 Aug 2021 at 17:30, Ayaz A Siddiqui <ayaz.siddiqui@intel.com> wrote:
>
> From: Matthew Auld <matthew.auld@intel.com>
>
> For local-memory objects we need to align the GTT addresses to 64K, both
> for the ppgtt and ggtt.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 4b7fc4647e46..1ea1fa08efdf 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -670,8 +670,13 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>         }
>
>         color = 0;
> -       if (vma->obj && i915_vm_has_cache_coloring(vma->vm))
> -               color = vma->obj->cache_level;
> +       if (vma->obj) {
> +               if (HAS_64K_PAGES(vma->vm->i915) && i915_gem_object_is_lmem(vma->obj))
> +                       alignment = max(alignment, I915_GTT_PAGE_SIZE_64K);

If we have an SMEM | LMEM object we should probably also apply the
alignment here? Userspace might be surprised if this suddenly starts
failing when the current object placement changes?

Maybe something like:

if (is_lmem() || obj->mm.n_placements > 1)
   min_alignment = 64K;

But thinking about this some more it might be quite strange for
userspace to have LMEM | SMEM objects not occupy the entire 2M range,
since flipping the color would likely mean evicting the entire 2M
range anyway? Maybe the kernel should try to prevent that?

if (mixed_placements(obj)) {
    min_alignment = 2M;
    min_padding = 2M;
} else if (is_lmem(obj)) {
   min_alignment = 64K;
}

Could maybe do this as part of gem_create_ext, when setting the
placements, and just store the min_alignment etc? Could also document
all the rules for this as part of the gem_create_ext kernel doc in the
uapi headers?

> +
> +               if (i915_vm_has_cache_coloring(vma->vm))
> +                       color = vma->obj->cache_level;
> +       }
>
>         if (flags & PIN_OFFSET_FIXED) {
>                 u64 offset = flags & PIN_OFFSET_MASK;
> --
> 2.26.2
>
