Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC1037F04F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 02:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36176E5AE;
	Thu, 13 May 2021 00:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C093E6E5AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 00:19:02 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id k10so6307206ejj.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 17:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0GIFNLi+RaFWJyto/l86noVUACYPdNp8ctEu8LHZ+ME=;
 b=GzPJ4sUvG0t8l06nOrm/l0mQ9hCQfeVEESUMe+HWA3qeXcNLABnGg+3FGN0cIwhVvd
 batquCYZqcb2+PuR8oqPDU5nlkxmnjOBCR5Ma9iq7ZYO37GZ6KNSAGKfJr1BO+mkfVdj
 Y4VSwHTDyqceuja1TD4MBsSWVrmrDyJKXKkRpbax6NE44tNUmT4NCyfVtKtRZImGw4Vn
 v4EPl1UVKzzxszA/Y8K3iDXcFkzjb/QO0Vq8hoNxJTKlxWfPjTTXgwxUU7cQOJyQJ/4d
 c2Kq/5lqhRrBCUpinQjf2r6r5/hFjBoxC1ZhiomYqhf2scSTTDchRkoPJGV7wgyuzcoM
 x1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0GIFNLi+RaFWJyto/l86noVUACYPdNp8ctEu8LHZ+ME=;
 b=Pw5r/5h8y9WdjFGmHbmQC3YYbHHwiOusFwiMwegKsuJnV0CzYSorshuhJ4JES857Jy
 4NF8XqpL/SrRYxunF9hoDV8iqN+a5wsEwhuSURqSH50svpc0cMAnqhq78V/dMHeb4nhL
 LQ10QoPVeTopa1RHs1khgzqdJF6EQjw3H2tIdtELgHlWaSeq5SyWZIEH626n6gP1vUA7
 GdvHM0onmOqDt4DljRAZ+1Ex+aNSWxgEvn1sHFbEpvDD4el+pa4cAvqIGuuZpe6PDFfq
 oC4ZdBlmsJl7DfM2hxBEegvT/33dZgm0T2RwxxTT3Ob7vGtaPeQyl6kkK3jEu43qQXYi
 kUGQ==
X-Gm-Message-State: AOAM530LXvOUIeprb6PZVjp8k8U8rgBtBn67txyXIBcK78sQgpTF/OIT
 VvRvRxEl4CvnlNFi2ijZ+00PgK/bdD5mw9H2HVHoaEtG
X-Google-Smtp-Source: ABdhPJy/igIqEiUwKC5hf4oSgXgwMG+On84PVsiLvRHOF0rftNzW4ujgZV4eeamNUAYmu2pXsnX/dx5WvFhWllZVPjY=
X-Received: by 2002:a17:906:8285:: with SMTP id
 h5mr39921582ejx.456.1620865141399; 
 Wed, 12 May 2021 17:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210426161124.2b7fd708@dellnichtsogutkiste>
In-Reply-To: <20210426161124.2b7fd708@dellnichtsogutkiste>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 13 May 2021 10:18:49 +1000
Message-ID: <CAPM=9tzj9Fn+FQFBueMLVxhBSy48kZizTnCM7bNxfUi55o+zYg@mail.gmail.com>
To: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable HiZ Raw Stall
 Optimization on broken gen7
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
 development@manuel-bentele.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Dave Airlie <airlied@redhat.com>

Can we get this fix in, having a regression spanning 3 kernels isn't a
good look, we can work out why it matters later in life if anyone
cares.

Dave.

On Tue, 27 Apr 2021 at 00:31, Simon Rettberg
<simon.rettberg@rz.uni-freiburg.de> wrote:
>
> When resetting CACHE_MODE registers, don't enable HiZ Raw Stall
> Optimization on Ivybridge GT1 and Baytrail, as it causes severe glitches
> when rendering any kind of 3D accelerated content.
> This optimization is disabled on these platforms by default according to
> official documentation from 01.org.
>
> Fixes: ef99a60ffd9b ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> Fixes: 520d05a77b28 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3081
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3404
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3071
> Reviewed-By: Manuel Bentele <development@manuel-bentele.de>
> Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index de575fdb0..21f08e538 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -397,7 +397,10 @@ static void emit_batch(struct i915_vma * const vma,
>         gen7_emit_pipeline_invalidate(&cmds);
>         batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
>         batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> -       batch_add(&cmds, 0xffff0000);
> +       batch_add(&cmds, 0xffff0000 |
> +                       ((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
> +                        HIZ_RAW_STALL_OPT_DISABLE :
> +                        0));
>         batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
>         batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
>         gen7_emit_pipeline_invalidate(&cmds);
> --
> 2.25.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
