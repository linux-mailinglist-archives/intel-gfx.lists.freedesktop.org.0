Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E85231B7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 13:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D25910EDA4;
	Wed, 11 May 2022 11:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F51210EC50
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 11:32:20 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id 185so2015568qke.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 04:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sweY9tpH7icmdxMPWEtyOgTyx1AAuspCOjahoSgw62A=;
 b=ovZYPHq2XIVGhHd6guty7Uila0SnEgJdA042MdP6O7eMsgqGFQ3CixyZ+b9dkGyQMf
 8kcxr/mJJ3IsCUc4pRmWzSox2fl9iNLl6k7vOyUtn/z3vNo4wIwO3jsjvRUR5TvkhuIr
 LDSrQ/LsAQcguXb3HNaacVQNpZXqXYMrZA6gqsX12lqEk+cgnXnjRHf/2QKy8VDvRv6T
 Pb6RN45nqXoMSta4le0UG/aM7iGOQ5PLyuSTx6ufEEI82wBHmCE9CDNHhoD6JDLIta8N
 UlsjN0Gun6Wr+FwgmZQW6HORJeHWUVyj0vAR5BbZIQJFCKfYbR3DAWZzHXeMNY3UjrFp
 lANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sweY9tpH7icmdxMPWEtyOgTyx1AAuspCOjahoSgw62A=;
 b=NLXQMr5cyN7FrknziM1TARmmQltkOvqlfu8ThS/BZP2x4bV5F/HFjgujcrL7PzDLrf
 6so22O69TFBUZTIX/ThLoDeKjTriXSZ0/855Aiw1fMDXV/bsqx9O1+PXGVzXvYAelkCX
 0jlbdTTiXxFbgZ7VsU+S1qiRQh04q0iuJWDAEYdFr0rqTtSpjF1+/aXNu67jRDcZOPH3
 UD90iXZniBBlGhd/1VTMIhkyHNPPu0Q7v5u9OCHXcziXse6pfNIJX4bukzD2zK0ahEV5
 cbaoHtVCf09priWoxTlNkGQxLKp3VPdIO4rMWNZEwe+vyOY2DsMMMM9PSNVI2tlnNfxK
 /B/w==
X-Gm-Message-State: AOAM532mTxx65a7VYQbsrTM2rW4fnPDr7Za39QA2AuvLqs7OVXmZVL7w
 eu5moxzmbDaGct4kpm51Z67pG5GXw11wr2neDB0=
X-Google-Smtp-Source: ABdhPJxgF/zcFpiUN9yrFRAoyvgZTL2JI0mcfuAuqUQaHHvUDsEwdOHaqOCNRT8o8SY4CF49/d3QNEi4KsA4/L70dHQ=
X-Received: by 2002:a05:620a:4084:b0:6a0:4561:399f with SMTP id
 f4-20020a05620a408400b006a04561399fmr18269265qko.569.1652268739279; Wed, 11
 May 2022 04:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220511102509.19927-1-nirmoy.das@intel.com>
In-Reply-To: <20220511102509.19927-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 11 May 2022 12:31:53 +0100
Message-ID: <CAM0jSHNkp6M2Tp+8zuiGQQZp6nMhxyy1EPoKNbrnFpqJ2jpByg@mail.gmail.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an
 error with CSS
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 May 2022 at 11:25, Nirmoy Das <nirmoy.das@intel.com> wrote:
>
> Determine lmem_size using ADDR_RANGE register so that module
> load on platfrom with small bar with css  works.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
> I once reserved a dg2 machine with small bar and module load failed on
> it. I can't find that machine anymore hence sending this as RFC.

AFAIK we currently don't want to load the driver on such dg2
configurations, until we first have all the uapi bits landed. The last
patch in that series then turns this on, or at least that's what I
have locally.

>
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index f5111c0a0060..a55eecac104e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>         if (!IS_DGFX(i915))
>                 return ERR_PTR(-ENODEV);
>
> +       if (IS_DG1(uncore->i915)) {
> +               lmem_size = pci_resource_len(pdev, 2);

We can drop this, since this is set below also.

> +       } else {
> +               resource_size_t lmem_range;
> +
> +               lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
> +               lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
> +               lmem_size *= SZ_1G;

We can move this under HAS_FLAT_CCS.

I think we need another patch that then just gracefully returns
-EINVAL if this is a small-bar configuration, along with maybe some
helpful drm_err() or so, which can be removed once we properly support
it? Also it looks like we are returning ENODEV in some places here,
which looks iffy.

> +       }
> +
>         if (HAS_FLAT_CCS(i915)) {
>                 u64 tile_stolen, flat_ccs_base;
>
> -               lmem_size = pci_resource_len(pdev, 2);
>                 flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>                 flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>
> --
> 2.35.1
>
