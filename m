Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C448C9BCD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD64910E4C1;
	Mon, 20 May 2024 11:02:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="egLZvtfO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4B310E09A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:02:48 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-51f1e8eaee5so3642123e87.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716202966; x=1716807766; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SIDOKwIcUp4lPPO/PDmHDa/A/zxT15SPb9EQ0kHZyQI=;
 b=egLZvtfOUi+IJpBcmd+xG+2mJJJhk6fk8+7sAT6IIRF/kdudLUjSkrlssQRi7sIpxQ
 qY/o4In2qEcs0CDachd3iXB4/Q1DosMxyS7XerFRyyKul8XCXOXRTzwl/jeN/PmT6Dpk
 zgwknHcbqvmzw7Z3Qb9a+YzaGeXK5OBY3jlEQG26VAleGaMGwtnxT5XzPvEXkWynOjQF
 7VFsbwbHIog4KkpeJvS4WB1EZU9A5nOIpBVfWOfv0rCOVGCghfvJUGBquE30pWiDPOD3
 cVIDY9Uf+ohqtwe5o82aPAbRc1LI5kS347COzRKzaEaD3mheFRUms9Hx+QU9RyZAWma7
 /hHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716202966; x=1716807766;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SIDOKwIcUp4lPPO/PDmHDa/A/zxT15SPb9EQ0kHZyQI=;
 b=vKVxDdmPw+HQtVxGGe2hDTgucY8/eM9gUyOIPu2KiNZzXmiMxzVSHUFi+f34g+WDx6
 miAQ8ZD1lJOLURs1hOpcdEHLJzSB7Ef4zMIDQLamvN2xoYt3WC7KF/XsVPzh7BKZQTdg
 e9Z+5yDZI9TW9qmSh97dqbG2sUsy+wnzkKAZIDgtFBk+3eWLI3c/G4wKGPQmlfbhkBU/
 k7qvuiOgzUrAwhUGhMciYVfPYt36GYtoExcJTfy0oGJ3y5AUOY3rUxQQ9tsPrUNy/lV8
 R07PIsJ3Z+N4GQY2B9+OLDO2ai8hs7mVcRS5JgfoyhMPiOOwtX6AsiTr8GEW8A76whh3
 8xGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCKPDFLhx4IuTmOWFvEbbJOOCOW5fpx5WZHHSKYwpC8HBRCDRn9qkDZ7N5vO/p+3K5HT9qE4GZVkXN0F5Io5+HRRKppJPc1VEJxbLGh44/
X-Gm-Message-State: AOJu0Ywd/INysDAwmxQuNeB/VRdKdo0K46Inn5TGe5oZCCmMKosjCMsU
 h/mQ3h2nMu5tMIAMFmaaaP4R5Rl8dW8SQw1LOWgYXj353PllCmSz4fUQ4prsT6M=
X-Google-Smtp-Source: AGHT+IHe2PgQwC1mRKPz+r1r564vDGsot6Gznz5gkwCdKTo8R1LGu6rQBjXQZQUxapTX0MQHaaP1KA==
X-Received: by 2002:ac2:44a8:0:b0:513:dbcd:7b8e with SMTP id
 2adb3069b0e04-52407cdde08mr1551456e87.24.1716202966284; 
 Mon, 20 May 2024 04:02:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5236e80e8c9sm2317384e87.238.2024.05.20.04.02.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 May 2024 04:02:45 -0700 (PDT)
Date: Mon, 20 May 2024 14:02:44 +0300
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
Subject: Re: [PATCH v2 3/6] drm/ci: build virtual GPU driver as module
Message-ID: <elftuzsd7lhz6y5ow6rb5uu5fb5b5jcprxtvxtxtojo774rnyr@swpeg4vkgtnc>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-4-vignesh.raman@collabora.com>
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

On Fri, May 17, 2024 at 02:54:59PM +0530, Vignesh Raman wrote:
> With latest IGT, the tests tries to load the module and it
> fails. So build the virtual GPU driver for virtio as module.

Why? If the test fails on module loading (if the driver is built-in)
then it's the test that needs to be fixed, not the kerenel config.

It's fine as a temporal workaround, but please include a link to the
patch posted to fix the issue.

> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - No changes.
> 
> ---
>  drivers/gpu/drm/ci/build.sh       | 1 -
>  drivers/gpu/drm/ci/igt_runner.sh  | 6 +++---
>  drivers/gpu/drm/ci/image-tags.yml | 4 ++--
>  drivers/gpu/drm/ci/test.yml       | 1 +
>  drivers/gpu/drm/ci/x86_64.config  | 2 +-
>  5 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ci/build.sh b/drivers/gpu/drm/ci/build.sh
> index a67871fdcd3f..e938074ac8e7 100644
> --- a/drivers/gpu/drm/ci/build.sh
> +++ b/drivers/gpu/drm/ci/build.sh
> @@ -157,7 +157,6 @@ fi
>  
>  mkdir -p artifacts/install/lib
>  mv install/* artifacts/install/.
> -rm -rf artifacts/install/modules
>  ln -s common artifacts/install/ci-common
>  cp .config artifacts/${CI_JOB_NAME}_config
>  
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
> index 20026612a9bd..55532f79fbdc 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -30,10 +30,10 @@ case "$DRIVER_NAME" in
>              export IGT_FORCE_DRIVER="panfrost"
>          fi
>          ;;
> -    amdgpu)
> +    amdgpu|virtio_gpu)
>          # Cannot use HWCI_KERNEL_MODULES as at that point we don't have the module in /lib
> -        mv /install/modules/lib/modules/* /lib/modules/.
> -        modprobe amdgpu
> +        mv /install/modules/lib/modules/* /lib/modules/. || true
> +        modprobe --first-time $DRIVER_NAME
>          ;;
>  esac
>  
> diff --git a/drivers/gpu/drm/ci/image-tags.yml b/drivers/gpu/drm/ci/image-tags.yml
> index 60323ebc7304..328f5c560742 100644
> --- a/drivers/gpu/drm/ci/image-tags.yml
> +++ b/drivers/gpu/drm/ci/image-tags.yml
> @@ -4,9 +4,9 @@ variables:
>     DEBIAN_BASE_TAG: "${CONTAINER_TAG}"
>  
>     DEBIAN_X86_64_BUILD_IMAGE_PATH: "debian/x86_64_build"
> -   DEBIAN_BUILD_TAG: "2023-10-08-config"
> +   DEBIAN_BUILD_TAG: "2024-05-09-virtio"
>  
> -   KERNEL_ROOTFS_TAG: "2023-10-06-amd"
> +   KERNEL_ROOTFS_TAG: "2024-05-09-virtio"
>  
>     DEBIAN_X86_64_TEST_BASE_IMAGE: "debian/x86_64_test-base"
>     DEBIAN_X86_64_TEST_IMAGE_GL_PATH: "debian/x86_64_test-gl"
> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> index 612c9ede3507..864ac3809d84 100644
> --- a/drivers/gpu/drm/ci/test.yml
> +++ b/drivers/gpu/drm/ci/test.yml
> @@ -350,6 +350,7 @@ virtio_gpu:none:
>    script:
>      - ln -sf $CI_PROJECT_DIR/install /install
>      - mv install/bzImage /lava-files/bzImage
> +    - mkdir -p /lib/modules

Is it necessary to create it manually here?

>      - mkdir -p $CI_PROJECT_DIR/results
>      - ln -sf $CI_PROJECT_DIR/results /results
>      - install/crosvm-runner.sh install/igt_runner.sh
> diff --git a/drivers/gpu/drm/ci/x86_64.config b/drivers/gpu/drm/ci/x86_64.config
> index 1cbd49a5b23a..78479f063e8e 100644
> --- a/drivers/gpu/drm/ci/x86_64.config
> +++ b/drivers/gpu/drm/ci/x86_64.config
> @@ -91,7 +91,7 @@ CONFIG_KVM=y
>  CONFIG_KVM_GUEST=y
>  CONFIG_VIRT_DRIVERS=y
>  CONFIG_VIRTIO_FS=y
> -CONFIG_DRM_VIRTIO_GPU=y
> +CONFIG_DRM_VIRTIO_GPU=m
>  CONFIG_SERIAL_8250_CONSOLE=y
>  CONFIG_VIRTIO_NET=y
>  CONFIG_VIRTIO_CONSOLE=y
> -- 
> 2.40.1
> 

-- 
With best wishes
Dmitry
