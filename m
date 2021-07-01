Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7E3B8FE2
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 11:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA5C6EAC9;
	Thu,  1 Jul 2021 09:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348D46EAC9
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 09:40:18 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id z3so5407121qkl.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Jul 2021 02:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v5rFzB9lHmGe6ufEIS2FVS0bruN1I7ItrS3I1LILx/c=;
 b=mY4DP4MTpd4sxgFDQsHJmkKz87mJ6F2k0DzWZKcaYFzDVxd/JdSFomMn/zvKTD7mhq
 2SdsC8fEGVnNQwKs/c7hKUDtUrj2PXLbgiQeys+5kGtYW7JJte4PNeNZAHQDwTQY5d1Z
 JRWVdZFitmOkHr1/h7rQTTaLOMhAS6DEM5qb8JdiP03M/gDn/4xuj6r8F67LcSz61rPW
 oK1mB0W+zvmfzTwE74LcayBUK0T+EnD7yD7MgZHCzY7Yq61OWDEHKFKTfrs6dqa7eFGM
 H1tavdbyp/LpOZpOqqVsxNc1UkjH1DWlakN8c/oofBu01cSDhMck5/YashPkbAVGB0Pp
 cG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v5rFzB9lHmGe6ufEIS2FVS0bruN1I7ItrS3I1LILx/c=;
 b=ktjj8lgRSjIXTrRl45oWfnFMizrKhZ+xZemm+7KhNu+1H05K/c9f8vh8RamruI7aH4
 rqvQBz/ZBJQv2gqs88ZmWlNXOQ+BPwNH+0H0+T2DHqT574uI/V+PRLj/YtGanTyGXt1p
 yfhV7V67JnpbExnt2w2ZPjNZZfJzELsbyoLdQjnq2x9Z6/XZjGDw2Qf/XXDAWyZJgAp3
 41fJltlZytHQSx/TIzgJVH+0ElUtKCaEB/3jUlFWO9PdUtdaC4i4IqGOL5nVA0SKtZwu
 YXax4uCF7NGLq1ZErhTGpQyMxoyRMhR1LlaDcsDd0UFpq1qE+NiaHOMtGqMq+XMl+62K
 3GTQ==
X-Gm-Message-State: AOAM532Dj5C6D5n5Da8hlQBBsFkodVhz/FCR79VQLLL83kQRPeJqv97x
 MdNN0FiBiv38D2JTsezzHu6pXxC8Ze/M6jLN+7g=
X-Google-Smtp-Source: ABdhPJwSjaaFH1lTSzYVOGW3EZOkCIDGJUJrIwQYPsQhgb6qU7aa7/7as9LaCFIc3EOhgd+Bbj+uDJWTt0mjD5MZtSI=
X-Received: by 2002:a37:b1c3:: with SMTP id a186mr41992849qkf.17.1625132417254; 
 Thu, 01 Jul 2021 02:40:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
 <20210628143829.22995-2-krishnaiah.bommu@intel.com>
In-Reply-To: <20210628143829.22995-2-krishnaiah.bommu@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Jul 2021 10:39:50 +0100
Message-ID: <CAM0jSHPc3mRcrk2Ezdnk85yAMFL1Kmxck8Ywz6gF+PBbgOJGSg@mail.gmail.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] Klock work Fix for NULL dereferencing
 in i915_gem_ttm.c
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
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 28 Jun 2021 at 15:49, Bommu Krishnaiah
<krishnaiah.bommu@intel.com> wrote:
>
> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index c39d982c4fa66..97093a9bfccc2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -590,6 +590,7 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
>         GEM_WARN_ON(bo->ttm);
>
>         sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true, true);
> +       GEM_BUG_ON(!sg);

Is there some analysis for how this could happen? The commit message
should ideally have something like that. It looks like we already have
a GEM_BUG_ON(!sg) for the lookup case, and in the event of doing the
manual walk we already dereference the sg, so not seeing it.

>
>         return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
>  }
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
