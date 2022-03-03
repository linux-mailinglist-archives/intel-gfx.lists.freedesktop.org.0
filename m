Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5429E4CBE0A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 13:41:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DE210E292;
	Thu,  3 Mar 2022 12:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193EB10E292
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 12:41:07 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id b23so4420659qtt.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Mar 2022 04:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QqPRnCMM3G/u00DAjyiShGhZQzBc3VBboERQjr6zr5M=;
 b=gLC287M9nvZnxhiYOcyBt2agbC7oVi6FRpLBNd33sUWS/sQsyzLo50i1P4gYdJy02s
 F/E0wPW+gOatLF1inxukgo0hGeIcTVIpG5psxL/+sjxYJXlgu877H8ThODIcv8ZJHp6p
 X5hJ8KagzJjZ1aiZDxAiTrGTvHn5cU7TNkyFCOMVrgMtEo7aQ6PzTbefXZHhlL1uz560
 tPO25mS6onU9qvZqfejnXhRt7fS3jn++qJDgyXpcuwJNhMBQCZFUf4gGZ434j22ZV0g/
 UgLLdwIhEGOqS71YTBubD57Ed8tkaLWVE7jHJ+BUTCE6/J13XWA5/BmToBQaIGPbICn/
 dPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QqPRnCMM3G/u00DAjyiShGhZQzBc3VBboERQjr6zr5M=;
 b=I3g3UKpi90wU6D7uAvRhi6JWRfLOpcmLupDE9gf8i1rkenY5fQZ1hYkkDt2JMwI5Cb
 wbYrO+zMInQ7CMhDAoyMaUGhKWp3tvmY3/aaT/7jQ0NizxIaM7Vf9Cun6DsBSIpKzXb2
 /Haj5d3oMs1kTWqSUEr+IegO3GQV2CiVJ6YWOwxPSxm++ZruRCcZ9Q3tTKL6pX8QxWZj
 SKaPBCKS55CvNYr/m4+fptnt87udfBBM4hzi1KG5pTm5ODKXObjP65u7jj3MF1BBp1Ay
 IEPFqoUL4tdFBr4lWXGG3rFaeIFKTLqvZEiQok048ev502Z852mn6HXOazUtrkoG2en2
 9wWQ==
X-Gm-Message-State: AOAM531P0aeAxwKbOdCe5fPKJHY2xydhfmZIixm0DoiPuTA6a0uVlDoD
 Y8VldYzEcgZQUQ73jE6c3LisNKfiWUkbcptfnVDBTirYZCw=
X-Google-Smtp-Source: ABdhPJz7/tHMvRqUWYVJPlYSzem6NP71l/o/XQpayG5ZHeLxLvwKhu9WevmeYD7HNHGsxFmxnL60W/wuu1K8HetPydM=
X-Received: by 2002:ac8:58c2:0:b0:2de:326e:9dcb with SMTP id
 u2-20020ac858c2000000b002de326e9dcbmr27866012qta.689.1646311266172; Thu, 03
 Mar 2022 04:41:06 -0800 (PST)
MIME-Version: 1.0
References: <20211209141817.16038-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211209141817.16038-1-stanislav.lisovskiy@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 3 Mar 2022 12:40:39 +0000
Message-ID: <CAM0jSHPfEanNX+roy0Jucmn6Wk5v_1EOUL9iQj4ov0OWaC3LGQ@mail.gmail.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Use I915_BO_ALLOC_CONTIGUOUS
 flag for DPT
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 9 Dec 2021 at 17:00, Stanislav Lisovskiy
<stanislav.lisovskiy@intel.com> wrote:
>
> Do mapping using CONTIGUOUS flag - otherwise
> i915_gem_object_is_contiguous warn is triggered.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

As a temporary fix,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 963ca7155b06..f66346dcf2d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -244,7 +244,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>         size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
>
>         if (HAS_LMEM(i915))
> -               dpt_obj = i915_gem_object_create_lmem(i915, size, 0);
> +               dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
>         else
>                 dpt_obj = i915_gem_object_create_stolen(i915, size);
>         if (IS_ERR(dpt_obj))
> --
> 2.24.1.485.gad05a3d8e5
>
