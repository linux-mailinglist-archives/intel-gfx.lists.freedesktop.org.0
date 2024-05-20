Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AC58C9BBF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC0A10E43C;
	Mon, 20 May 2024 11:00:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="ngKplQJy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03DA110E414
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:00:44 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-52388d9ca98so5171198e87.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716202843; x=1716807643; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=zbU3zeRUyfJhQipGYR6FKYCuEp6+mBicTADebou1jyQ=;
 b=ngKplQJyJUQv5czDr1HI3bGAP4G3rIGuii+iugwIElteTfe3/cI9N6VXtkLVytc2ye
 F3HWc2yvqiIiILLyYisnMIbXvIGpUG2LqZzIykxaSNPSx0KnYitaaJ9sOAt0VpGEtGh2
 YcWPyzrsBV0rvv1+4+81LYw0oDTPz26AU7sj7zTKeDlz/hOb+qIWwkCjKDD7W568+Exr
 jGbf3UAsk8FYVPqIOirb/h5SlOVCfcbQF89cqGDuCSrFPFfr2Tw4INLD7/N5bgUXQVBw
 JAPvyUvC5Sv3V/kjQJzCTKMg+PQdYtD2bHNGDVudODS0FaWwU5n9QJJWi5jPrROSfJew
 9WoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716202843; x=1716807643;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zbU3zeRUyfJhQipGYR6FKYCuEp6+mBicTADebou1jyQ=;
 b=lYAEme3E+Xv/rNchBf58Gqjk4jMBh8dIQ87xvDU7Nyu4EmRBzCeXic3rCrHsfPR6uo
 OGPrtl7D+kN9rFh+5VuGg529d8kmBJRYzeuDDkHlZwXifRl4TEiR4+gdv6l5HYzPLQXn
 DtTpRtwgAaT4oB3XW5Laxn6vkQ9oth6sn5wiD42H+Btiq2CGAk99nWswfKeRmVhuBN/L
 f/Qnr3rSHdnRzn9bKMJbMP0BDGj1uk7zdUZ0VR6pEGV/JioVDOjXTPORvXKDMxfz8hdF
 5J5XpPabCB4Aa0v6TwgTdM8XqdX7Tvzp45GUZsj+vJ5XeTF939AcD90jTkNJLI3rMgY7
 c9pg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYrYZei3QCoUd6q+d32JjZwCO289dwn1O+1fpuwIy9W8o9k/1UkIch0ILAKZLQ8S8IQPOYbtDWTkmRW7yvY9WTDCJU8yV2Yz+3xKuGoupw
X-Gm-Message-State: AOJu0YzlB0eUFdONolfEK/jsJwxGVntUQWkvw1xL6e8bSTP4ybVAuYA+
 pwbBASIYPU/UX7E4G9LMm8F8YmVm3fW5TZpLpUhfSoN2v48qVr2NXWizCL9QqYk=
X-Google-Smtp-Source: AGHT+IEoP2+bL0oMFj4P0Aa7CMuek/Wx23WK1fJZHUBxVQUK6n4Or8upEK0eOTuockV49z8ZJoyWZA==
X-Received: by 2002:ac2:504c:0:b0:51a:df97:cc8d with SMTP id
 2adb3069b0e04-5220fd7cc70mr18338046e87.26.1716202842997; 
 Mon, 20 May 2024 04:00:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-521f35ad5fdsm4253446e87.24.2024.05.20.04.00.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 May 2024 04:00:42 -0700 (PDT)
Date: Mon, 20 May 2024 14:00:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 david.heidelberg@collabora.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, 
 mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/6] drm/ci: generate testlist from build
Message-ID: <o363vir3dqz2znrnifo6enbdwudalmxqbigdkci2ykxf5qjbnx@2ngllflxotgk>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-3-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-3-vignesh.raman@collabora.com>
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

On Fri, May 17, 2024 at 02:54:58PM +0530, Vignesh Raman wrote:
> Stop vendoring the testlist into the kernel. Instead, use the
> testlist from the IGT build to ensure we do not miss renamed
> or newly added tests.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Fix testlist generation for arm and arm64 builds.
> 
> ---
>  drivers/gpu/drm/ci/build-igt.sh  |   34 +
>  drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>  drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>  3 files changed, 39 insertions(+), 2765 deletions(-)
>  delete mode 100644 drivers/gpu/drm/ci/testlist.txt
> 
> diff --git a/drivers/gpu/drm/ci/build-igt.sh b/drivers/gpu/drm/ci/build-igt.sh
> index 7859554756c4..e62244728613 100644
> --- a/drivers/gpu/drm/ci/build-igt.sh
> +++ b/drivers/gpu/drm/ci/build-igt.sh

[...]

> @@ -26,6 +50,16 @@ meson build $MESON_OPTIONS $EXTRA_MESON_ARGS
>  ninja -C build -j${FDO_CI_CONCURRENT:-4} || ninja -C build -j 1
>  ninja -C build install
>  
> +if [[ "$KERNEL_ARCH" = "arm64" ]]; then
> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib/aarch64-linux-gnu
> +elif [[ "$KERNEL_ARCH" = "arm" ]]; then
> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib
> +else
> +    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/igt/lib64

Could you please clarify this part? The arm64 vs arm don't look logical
from my point of view.

The rest LGTM.

> +fi
> +
> +generate_testlist
> +
>  mkdir -p artifacts/
>  tar -cf artifacts/igt.tar /igt
>  
-- 
With best wishes
Dmitry
