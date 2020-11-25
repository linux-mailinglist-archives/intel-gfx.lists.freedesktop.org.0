Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4B32C4528
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D0636EA20;
	Wed, 25 Nov 2020 16:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9930A6EA20
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:28:44 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id j15so3452581oih.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 08:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dRACjaFJh4AZpkepxixl78ErKCZI3elRJ+hcGP1uvRc=;
 b=K4nmwFzet4CmWQbz4zwRTZ6CI5hxzbxZ25gbBnhWnCJH8Q8rKXsL79Ql5rlCpu29Lr
 bPggFh1VtIOTIpQaTQqFAtXfwAgUPiNMU07nzL7WEAwSqk0xgspIBThT1z03Zvfxcs3b
 aqQEsY9KeNryZDXQ07y5HihJ9KhEL6DoeL6A8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dRACjaFJh4AZpkepxixl78ErKCZI3elRJ+hcGP1uvRc=;
 b=t00uDU6z3fcA2nLck7kdxWKRQGHIFssZAjS2gPvRjwCLmN4gxAuMDZu50i4xRNLHAA
 ylBy4SHV//RfbKxVfBn45gvCo0HwmiLrMDL8TEClohiF8OTPoPL1d5Zw7v6+O2PAnX7D
 HrViZkWPJvLWgL2qOgpU5BaozKW74wjT8gOqqlciX1Bm2b/kA8FmUJJ97bbYObudCrbZ
 xjHLCD6E3yBFXEOrWYuxFoabvFA7L3UACiww2XgfB/ke6UsaK+L4aPvUoxkMHXG/o3Ds
 4Oe99FGoe/dYvZSa+6GE5+ZOzuD/p6mcYRL/GPKB8tCA8doO5thS82uCmO/L9YVdB6et
 /4qA==
X-Gm-Message-State: AOAM533C2iWruF2pX1riA04r/eeeAjbEizO1hx/3A1NDL60US393ouvC
 0daTzSlz7a9NHT0G/HQnCCm7bR1N2c18UCTFDkW2sw==
X-Google-Smtp-Source: ABdhPJxFp4HuSi30fm1PHbzKdfrYvQxr8zUWpRKb+OichQq/lnbRaStrtSKPxiYo68cqfG34JDlvPm/6dqfZjcK5iGw=
X-Received: by 2002:aca:7506:: with SMTP id q6mr2814868oic.128.1606321723817; 
 Wed, 25 Nov 2020 08:28:43 -0800 (PST)
MIME-Version: 1.0
References: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
 <20201125162532.1299794-5-daniel.vetter@ffwll.ch>
In-Reply-To: <20201125162532.1299794-5-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 25 Nov 2020 17:28:32 +0100
Message-ID: <CAKMK7uGXfqaPUtnX=VgA3tFn3S+Gt9GV+kPguakZ6FF_n8LKuA@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Huang Rui <ray.huang@amd.com>,
 Brian Paul <brianp@vmware.com>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 25, 2020 at 5:25 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Random observation while trying to review Christian's patch series to
> stop looking at struct page for dma-buf imports.
>
> This was originally added in
>
> commit 58aa6622d32af7d2c08d45085f44c54554a16ed7
> Author: Thomas Hellstrom <thellstrom@vmware.com>
> Date:   Fri Jan 3 11:47:23 2014 +0100
>
>     drm/ttm: Correctly set page mapping and -index members
>
>     Needed for some vm operations; most notably unmap_mapping_range() with
>     even_cows = 0.
>
>     Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
>     Reviewed-by: Brian Paul <brianp@vmware.com>
>
> but we do not have a single caller of unmap_mapping_range with
> even_cows == 0. And all the gem drivers don't do this, so another
> small thing we could standardize between drm and ttm drivers.
>
> Plus I don't really see a need for unamp_mapping_range where we don't
> want to indiscriminately shoot down all ptes.
>
> Cc: Thomas Hellstrom <thellstrom@vmware.com>
> Cc: Brian Paul <brianp@vmware.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Christian Koenig <christian.koenig@amd.com>
> Cc: Huang Rui <ray.huang@amd.com>

Apologies again, this shouldn't have been included. But at least I
have an idea now why this patch somehow was included in the git
send-email. Lovely interface :-/
-Daniel

> ---
>  drivers/gpu/drm/ttm/ttm_tt.c | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
> index da9eeffe0c6d..5b2eb6d58bb7 100644
> --- a/drivers/gpu/drm/ttm/ttm_tt.c
> +++ b/drivers/gpu/drm/ttm/ttm_tt.c
> @@ -284,17 +284,6 @@ int ttm_tt_swapout(struct ttm_bo_device *bdev, struct ttm_tt *ttm)
>         return ret;
>  }
>
> -static void ttm_tt_add_mapping(struct ttm_bo_device *bdev, struct ttm_tt *ttm)
> -{
> -       pgoff_t i;
> -
> -       if (ttm->page_flags & TTM_PAGE_FLAG_SG)
> -               return;
> -
> -       for (i = 0; i < ttm->num_pages; ++i)
> -               ttm->pages[i]->mapping = bdev->dev_mapping;
> -}
> -
>  int ttm_tt_populate(struct ttm_bo_device *bdev,
>                     struct ttm_tt *ttm, struct ttm_operation_ctx *ctx)
>  {
> @@ -313,7 +302,6 @@ int ttm_tt_populate(struct ttm_bo_device *bdev,
>         if (ret)
>                 return ret;
>
> -       ttm_tt_add_mapping(bdev, ttm);
>         ttm->page_flags |= TTM_PAGE_FLAG_PRIV_POPULATED;
>         if (unlikely(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
>                 ret = ttm_tt_swapin(ttm);
> --
> 2.29.2
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
