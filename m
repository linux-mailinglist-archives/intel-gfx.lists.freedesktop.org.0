Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF8265E85F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 10:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11F6B10E6DC;
	Thu,  5 Jan 2023 09:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8026F10E6DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 09:57:14 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id z26so54355268lfu.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Jan 2023 01:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wXt9uilZtY33O5ysqh1uOjR/AIbikI0VMWZDXormKYE=;
 b=ajD9/XFogvx8IGjCE1ue5/nz3EpbCEr2KyF7anljXZnUyUv7wMjSqoKD1WGRNvL5rU
 c4FM2Mbuu9Os4GDrH4yph+jhtTmwyAAzZbkF/NAPkrKWAk+mol0MHoJ/S4bO70nUK8NA
 zeEO7W/N8T7TVfHaTTXgHF30NEwfQbjLU35DvY58LRQ6gwGu4wWLCE583iYlODSW+ByK
 Ol7pdzfkKwtau0jzIP+/KazG0pGQCQ83XZ83T4e7eqHB80NL6r6LJQSc2FCSvzhmQwQ5
 p6rW5dHqQtV/3Ik9Nq5BhJVtzcxTIpyopkkv6S758nFcbHtMCgqYQPIglvdOo2kA0CSo
 nxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wXt9uilZtY33O5ysqh1uOjR/AIbikI0VMWZDXormKYE=;
 b=gXEsUISd8dSaD355Y9HgUtr6P7uKKlmJpPISe1rbPEhzoGAqsSYbWm/80j2zH9x8EL
 0+LzvjvaTD/CAcB/GcOUwwCl9VNYBDUKO0ykb34qXypgAjJecOBZQgQlEQ7WxkWC8fv4
 Dsp0C6SjX6evbOrWpF6LutzuHTN2ZKZq+QeIGUaGK9qvkpAMgkFzDOFS+Ds7rLBhgmvq
 aCI6HAqP6t4/QQZrbVz42jkEljUi32ovV82LRrijGJ+vmvFyDdsOgTBwz2BlBKGL6K/F
 od1l4kjfeBRFwlu+7esqPc6v56dAK8EvEVZdVAc7BxlpLtMvI/aMPfxuNMCk0GLVdhdZ
 l62Q==
X-Gm-Message-State: AFqh2kod7l4a/k9NBc9nU/I56sxSp6vrAJaTC+Bzv21ySDcxsI919tCn
 fabUDIRmho29GwNAfMwaXRX9CRNsz2HivY7uSDS2bxdjQG4mpvd5
X-Google-Smtp-Source: AMrXdXtWf6SZEf1N+TTGERkLoybmuvkJe3VjfhSqZnMlb/4Oo6BCRJXCQDO4/f+bd81iglh9gbJMZqhaaM5yqaDZYEM=
X-Received: by 2002:a05:6512:1152:b0:4c7:6601:e3b1 with SMTP id
 m18-20020a056512115200b004c76601e3b1mr2320184lfg.548.1672912632710; Thu, 05
 Jan 2023 01:57:12 -0800 (PST)
MIME-Version: 1.0
References: <20221223092011.11657-1-nirmoy.das@intel.com>
In-Reply-To: <20221223092011.11657-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Jan 2023 09:56:45 +0000
Message-ID: <CAM0jSHNCOE7_KNpc=iTqPf4WOrA_YZ+TzhpVaMQ1hFxqgHB_0Q@mail.gmail.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reserve enough fence slot for
 i915_vma_unbind_async
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, jianshui.yu@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 23 Dec 2022 at 09:20, Nirmoy Das <nirmoy.das@intel.com> wrote:
>
> A nested dma_resv_reserve_fences(1) will not reserve slot from the
> 2nd call onwards and folowing dma_resv_add_fence() might hit the
> "BUG_ON(fobj->num_fences >=3D fobj->max_fences)" check.
>
> I915 hit above nested dma_resv case in ttm_bo_handle_move_mem() with
> async unbind:
>
> dma_resv_reserve_fences() from --> ttm_bo_handle_move_mem()
>         dma_resv_reserve_fences() from --> i915_vma_unbind_async()
>         dma_resv_add_fence() from --> i915_vma_unbind_async()
> dma_resv_add_fence() from -->ttm_bo_move_accel_cleanup()
>
> Resolve this by adding an extra fence in i915_vma_unbind_async().
>
> Suggested-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Does this need a fixes tag?

Fixes: 2f6b90da9192 ("drm/i915: Use vma resources for async unbinding")
Cc: <stable@vger.kernel.org> # v5.18+

I can add when pushing.

> ---
>  drivers/gpu/drm/i915/i915_vma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index 7d044888ac33..5ac4c1c2403c 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -2149,7 +2149,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, boo=
l trylock_vm)
>         if (!obj->mm.rsgt)
>                 return -EBUSY;
>
> -       err =3D dma_resv_reserve_fences(obj->base.resv, 1);
> +       err =3D dma_resv_reserve_fences(obj->base.resv, 2);
>         if (err)
>                 return -EBUSY;
>
> --
> 2.38.0
>
