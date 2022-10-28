Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1121661165E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBF110E865;
	Fri, 28 Oct 2022 15:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D47210E865
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:53:01 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id bp15so8920137lfb.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 08:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ApIbt8S9X9VPeJYcOzzxvPJ/g3OStmuSmNN8DWlJ3mg=;
 b=h9EEZT22qPDhEBwu5EMWocCAg34UETYlfsAW4PL49CDa4wFfLhi5oNthzWJ95i62xS
 spcY3p+EckZQhfHf7aq6AMc1IEIXYSAjh/HqTu3V7wwOKbjref9jNDTcd0M0Z3BHW0Bp
 1CKOBegW/nj1XDTW6wpl17LU71uOal1kdUklrrNfNnTJPTiM0JZOyuXkvBEN3dqMLidR
 ZUgD/YK7h+5h/yyttw8237KmuCuw454UOWg36GIze/5psZUIF3umKmH+oA/VpVJlkD2s
 2nbrkJgIMnPIDDv/G6Qt6Sf0A2jI9kXvBmEBolDhzlvPrmTyfTHxvZj+XHqOW0f2uuFI
 Cjsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ApIbt8S9X9VPeJYcOzzxvPJ/g3OStmuSmNN8DWlJ3mg=;
 b=yrAK7qTD9cnhmWCsLR9YB/K3GI2bqgd3f2m/f+wFad2wRAYTJkLYdZygL8Bc96Flu3
 ueFihcyEsB6LganUGxC/il7gD4JrmFvvsk5L8BesRVBrR9C7ObwwhcluZQFTSnzl0lCl
 Fkrt730sH8Am4BWcDbk0auDbqWqS1RJRNttWAcRmCFHibz5qkvLKKCY117iHQqMZC6OH
 D+y+voyJvXF0pMN1NS0stef91bJiDoyKHAIIdj+s8vP3wf9wn0p1fRFQ1tunXifqiyXN
 +8j700bFd87+BIA8gB5N/8if9SRZmbJiH45oLDiaffLnt6XvWQGBzaH5HnOQJfxz9uip
 H8Ww==
X-Gm-Message-State: ACrzQf1mCB61RU0Wk/6sY2O2UyFJKsLQOXeZjbWGvM9VRiyASGBnOz1v
 crGZYb6zXOdcqkUZpLe8wdSEn7phE3jgjfBj23MAMwxfCns=
X-Google-Smtp-Source: AMsMyM5Eu/Mb3pimvxuVI4AA0hCO+ynjmalzpRko/9gtOzPpREerND5QdO6FSSbTzfH/cPCGB1YSo6vOGtwaZ1+xBgA=
X-Received: by 2002:ac2:47fa:0:b0:4a2:361d:da19 with SMTP id
 b26-20020ac247fa000000b004a2361dda19mr2145lfp.548.1666972379465; Fri, 28 Oct
 2022 08:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <20221028155029.494736-1-matthew.auld@intel.com>
 <20221028155029.494736-4-matthew.auld@intel.com>
In-Reply-To: <20221028155029.494736-4-matthew.auld@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 28 Oct 2022 16:52:32 +0100
Message-ID: <CAM0jSHMizqXdTSSmm57E9aRcyDr+z9+H8U4n4ujhNdXepaZSjQ@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/dmabuf: Use scatterlist
 for_each_sg API
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Oct 2022 at 16:51, Matthew Auld <matthew.auld@intel.com> wrote:
>
> From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>
>
> Update open coded for loop to use the standard scatterlist
> for_each_sg API.
>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 8342e01a0d27..ec6f7ae47783 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -47,12 +47,10 @@ static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
>         if (ret)
>                 goto err_free;
>
> -       src = obj->mm.pages->sgl;
>         dst = sgt->sgl;
> -       for (i = 0; i < obj->mm.pages->orig_nents; i++) {
> +       for_each_sg(obj->mm.pages->sgl, src, obj->mm.pages->orig_nents, i) {
>                 sg_set_page(dst, sg_page(src), src->length, 0);
>                 dst = sg_next(dst);
> -               src = sg_next(src);
>         }
>
>         ret = dma_map_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
> --
> 2.37.3
>
