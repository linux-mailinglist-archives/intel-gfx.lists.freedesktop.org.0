Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387F42E4D3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 01:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592746ECA6;
	Thu, 14 Oct 2021 23:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85056ECA5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 23:43:08 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id bl14so7037227qkb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 16:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J7Isl4QOCcY0eFas2cTgbyTZfPWz2wwFdAIcWRYre7Y=;
 b=PjuIacqaroe9e7akOnjznTZzvaYEQs53UCr321AtQruM5hAZBg92Qj8kesAnbb7Muy
 qMyCuA6zzoG9BjWGJkG3AUzx167f73QL6aeUPu/LReks/1mIUnrk5z/B5qDTtrMszNiU
 YKvlgeUM3yXHj7PZ+FF3LnyQOfymhIhwnyq/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J7Isl4QOCcY0eFas2cTgbyTZfPWz2wwFdAIcWRYre7Y=;
 b=lZEHeyzblUf2UDbnFslflJU4xOHYlueuzRas0rPFB9Ynh/H9SqrumOtnhpMFvOWOXx
 L1QKUJvsaJeh62MsD0VI5JB8hcTXglsG0sbGuV9jZVVtFm2/vF1JFGZWZqOZ2v4FJQg9
 uAGRiAxcFN3USZfsnSOvuJukmZA3/IVKYFdeOwNcdNfFwJJgzli+DZFv9UhNhLYcPCvW
 xaZwMUp8AmYU+M6p1QMDVmdDhRosGBNoPZ2D0/vXps5801dZtBgaDAc1fsXTtbK12oFH
 2c5eQKLUn4Rz3924Qcu8eMrKMaxiajF6BBtnb4mtXX3W/mm5OfUAXJ26M0ck68lpkrQB
 vTBg==
X-Gm-Message-State: AOAM533pysRgJu7nqYb7BySEeefZDhvL5e2UZJ9+kMUSSy847UXnUyqI
 70BxpMg/fRKo9SSkqLWCz3wHnf40Qcg8dQx9
X-Google-Smtp-Source: ABdhPJywrcSOYfk08n7zgB8zGQbX+p9ABEuQFljlbp4VicohHDoPYgc0HCJLqZ3z9+qhw6TdGjl2aQ==
X-Received: by 2002:a37:2f07:: with SMTP id v7mr7625406qkh.38.1634254987583;
 Thu, 14 Oct 2021 16:43:07 -0700 (PDT)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com.
 [209.85.219.178])
 by smtp.gmail.com with ESMTPSA id v3sm1950342qkd.20.2021.10.14.16.43.06
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Oct 2021 16:43:06 -0700 (PDT)
Received: by mail-yb1-f178.google.com with SMTP id q189so18570148ybq.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 16:43:06 -0700 (PDT)
X-Received: by 2002:a25:4251:: with SMTP id p78mr9457761yba.47.1634254985831; 
 Thu, 14 Oct 2021 16:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210929194012.3433306-1-markyacoub@chromium.org>
 <20211013181228.1578201-1-markyacoub@chromium.org>
 <20211013181228.1578201-2-markyacoub@chromium.org>
In-Reply-To: <20211013181228.1578201-2-markyacoub@chromium.org>
From: Sean Paul <seanpaul@chromium.org>
Date: Thu, 14 Oct 2021 19:42:29 -0400
X-Gmail-Original-Message-ID: <CAOw6vb+AaG2B1zRfLW54TDjinuirXAT+v2AvXeWmVjYNyJJXMQ@mail.gmail.com>
Message-ID: <CAOw6vb+AaG2B1zRfLW54TDjinuirXAT+v2AvXeWmVjYNyJJXMQ@mail.gmail.com>
To: Mark Yacoub <markyacoub@chromium.org>
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, harry.wentland@amd.com, 
 Mark Yacoub <markyacoub@google.com>, Leo Li <sunpeng.li@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/2] amd/amdgpu_dm: Verify Gamma and Degamma
 LUT sizes using DRM Core check
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

On Wed, Oct 13, 2021 at 2:12 PM Mark Yacoub <markyacoub@chromium.org> wrote:
>
> From: Mark Yacoub <markyacoub@google.com>
>
> [Why]
> drm_atomic_helper_check_crtc now verifies both legacy and non-legacy LUT
> sizes. There is no need to check it within amdgpu_dm_atomic_check.
>
> [How]
> Remove the local call to verify LUT sizes and use DRM Core function
> instead.
>
> Tested on ChromeOS Zork.
>
> v1:
> Remove amdgpu_dm_verify_lut_sizes everywhere.
>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  8 ++---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  1 -
>  .../amd/display/amdgpu_dm/amdgpu_dm_color.c   | 35 -------------------
>  3 files changed, 4 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index f74663b6b046e..47f8de1cfc3a5 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -10244,6 +10244,10 @@ static int amdgpu_dm_atomic_check(struct drm_device *dev,
>                 }
>         }
>  #endif
> +       ret = drm_atomic_helper_check_crtcs(state);
> +       if (ret)
> +               return ret;
> +
>         for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>                 dm_old_crtc_state = to_dm_crtc_state(old_crtc_state);
>
> @@ -10253,10 +10257,6 @@ static int amdgpu_dm_atomic_check(struct drm_device *dev,
>                         dm_old_crtc_state->dsc_force_changed == false)
>                         continue;
>
> -               ret = amdgpu_dm_verify_lut_sizes(new_crtc_state);
> -               if (ret)
> -                       goto fail;
> -
>                 if (!new_crtc_state->enable)
>                         continue;
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> index fcb9c4a629c32..22730e5542092 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> @@ -617,7 +617,6 @@ void amdgpu_dm_trigger_timing_sync(struct drm_device *dev);
>  #define MAX_COLOR_LEGACY_LUT_ENTRIES 256
>
>  void amdgpu_dm_init_color_mod(void);
> -int amdgpu_dm_verify_lut_sizes(const struct drm_crtc_state *crtc_state);
>  int amdgpu_dm_update_crtc_color_mgmt(struct dm_crtc_state *crtc);
>  int amdgpu_dm_update_plane_color_mgmt(struct dm_crtc_state *crtc,
>                                       struct dc_plane_state *dc_plane_state);
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c
> index a022e5bb30a5c..319f8a8a89835 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_color.c
> @@ -284,37 +284,6 @@ static int __set_input_tf(struct dc_transfer_func *func,
>         return res ? 0 : -ENOMEM;
>  }
>
> -/**
> - * Verifies that the Degamma and Gamma LUTs attached to the |crtc_state| are of
> - * the expected size.
> - * Returns 0 on success.
> - */
> -int amdgpu_dm_verify_lut_sizes(const struct drm_crtc_state *crtc_state)
> -{
> -       const struct drm_color_lut *lut = NULL;
> -       uint32_t size = 0;
> -
> -       lut = __extract_blob_lut(crtc_state->degamma_lut, &size);
> -       if (lut && size != MAX_COLOR_LUT_ENTRIES) {
> -               DRM_DEBUG_DRIVER(
> -                       "Invalid Degamma LUT size. Should be %u but got %u.\n",
> -                       MAX_COLOR_LUT_ENTRIES, size);
> -               return -EINVAL;
> -       }
> -
> -       lut = __extract_blob_lut(crtc_state->gamma_lut, &size);
> -       if (lut && size != MAX_COLOR_LUT_ENTRIES &&
> -           size != MAX_COLOR_LEGACY_LUT_ENTRIES) {
> -               DRM_DEBUG_DRIVER(
> -                       "Invalid Gamma LUT size. Should be %u (or %u for legacy) but got %u.\n",
> -                       MAX_COLOR_LUT_ENTRIES, MAX_COLOR_LEGACY_LUT_ENTRIES,
> -                       size);
> -               return -EINVAL;
> -       }
> -
> -       return 0;
> -}
> -
>  /**
>   * amdgpu_dm_update_crtc_color_mgmt: Maps DRM color management to DC stream.
>   * @crtc: amdgpu_dm crtc state
> @@ -348,10 +317,6 @@ int amdgpu_dm_update_crtc_color_mgmt(struct dm_crtc_state *crtc)
>         bool is_legacy;
>         int r;
>
> -       r = amdgpu_dm_verify_lut_sizes(&crtc->base);
> -       if (r)
> -               return r;
> -
>         degamma_lut = __extract_blob_lut(crtc->base.degamma_lut, &degamma_size);
>         regamma_lut = __extract_blob_lut(crtc->base.gamma_lut, &regamma_size);
>
> --
> 2.33.0.882.g93a45727a2-goog
>
