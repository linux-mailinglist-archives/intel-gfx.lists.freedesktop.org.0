Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA08B92E751
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 13:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852AD10EA32;
	Thu, 11 Jul 2024 11:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=collabora.com header.i=@collabora.com header.b="bIe9SgTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com
 [46.235.227.194])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F1E10EA30;
 Thu, 11 Jul 2024 11:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1720698233;
 bh=80lfIL9kFoH1zJ+Xyom/6UXhQR8VDU7JPXg/61V6KRE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=bIe9SgTxqhcURxMYoyKYXlrNQwoc8Zdx784jqpVbczbfxvPJwdF0Huaj9i5j7mZ2z
 4lpImICcuVlJ00ksQ9+rjkNlVkoybOrDNvMmjsuGE3rO6lesUkK97AT4Aw+rkAFCRL
 hxx8lCfgY4QxNmFlgMLKlAqO0gfoVEDZ4Jm713bX75znHKOFQYWDD9e6+wjMme6Mgw
 GfDlN2gxfLR4XEC01I+9Kjr0OXXuenJSWWmL+NY53uYiGbq5dexmzg4yN4oCRTbpRG
 TwhACkjaKhN4R32XjM7cxw6NC0ofQ6K0gMZl4kSL497zAVQIZkQEQkePbrbinfMazV
 CsZBqdRvZZZfA==
Received: from [100.95.196.25] (cola.collaboradmins.com [195.201.22.229])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: koike)
 by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8ADB337821F3;
 Thu, 11 Jul 2024 11:43:47 +0000 (UTC)
Message-ID: <58e13405-9e7d-4c62-9d81-5b7444ebd135@collabora.com>
Date: Thu, 11 Jul 2024 08:43:45 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/ci: uprev IGT
To: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, dmitry.baryshkov@linaro.org,
 mcanal@igalia.com, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20240704092202.75551-1-vignesh.raman@collabora.com>
Content-Language: en-US
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <20240704092202.75551-1-vignesh.raman@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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



On 04/07/2024 06:22, Vignesh Raman wrote:
> Uprev IGT to the latest version, which includes a fix for the
> writeback tests issue on MSM devices. Enable debugging for
> igt-runner to log output such as 'Begin test' and 'End test'.
> This will help identify which test causes system freeze or hangs.
> Update xfails and add metadata header for each flake test.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>

Applied to drm-misc-next.

Thanks
Helen

> ---
> 
> v1:
>    - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1216850
> 
> ---
>   drivers/gpu/drm/ci/gitlab-ci.yml              |   2 +-
>   drivers/gpu/drm/ci/igt_runner.sh              |   1 +
>   .../gpu/drm/ci/xfails/amdgpu-stoney-fails.txt |   1 +
>   .../drm/ci/xfails/amdgpu-stoney-flakes.txt    |  14 +-
>   .../gpu/drm/ci/xfails/amdgpu-stoney-skips.txt |   4 +-
>   drivers/gpu/drm/ci/xfails/i915-amly-fails.txt |  12 +-
>   .../gpu/drm/ci/xfails/i915-amly-flakes.txt    |  41 ++++-
>   drivers/gpu/drm/ci/xfails/i915-amly-skips.txt |   5 +-
>   drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt |   2 +-
>   drivers/gpu/drm/ci/xfails/i915-apl-skips.txt  |   4 +-
>   drivers/gpu/drm/ci/xfails/i915-cml-fails.txt  |  14 +-
>   drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt |   9 +-
>   drivers/gpu/drm/ci/xfails/i915-cml-skips.txt  |   5 +-
>   drivers/gpu/drm/ci/xfails/i915-glk-fails.txt  |  24 +--
>   drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt |   8 +-
>   drivers/gpu/drm/ci/xfails/i915-glk-skips.txt  |   4 +-
>   drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt  |   2 +
>   drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt |   2 +-
>   drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt  |   4 +-
>   drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt  |  25 +--
>   drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt  |   4 +-
>   drivers/gpu/drm/ci/xfails/i915-whl-fails.txt  |  17 +-
>   drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt |   2 +-
>   drivers/gpu/drm/ci/xfails/i915-whl-skips.txt  |   5 +-
>   .../drm/ci/xfails/mediatek-mt8173-fails.txt   |   9 +-
>   .../drm/ci/xfails/mediatek-mt8173-flakes.txt  |  32 +++-
>   .../drm/ci/xfails/mediatek-mt8173-skips.txt   |   4 +-
>   .../drm/ci/xfails/mediatek-mt8183-fails.txt   |   2 +-
>   .../drm/ci/xfails/mediatek-mt8183-skips.txt   |   2 +-
>   .../gpu/drm/ci/xfails/meson-g12b-fails.txt    |   2 +-
>   .../gpu/drm/ci/xfails/meson-g12b-skips.txt    |   2 +-
>   .../gpu/drm/ci/xfails/msm-apq8016-fails.txt   |   5 +-
>   .../gpu/drm/ci/xfails/msm-apq8016-skips.txt   |   2 +-
>   .../gpu/drm/ci/xfails/msm-apq8096-flakes.txt  |   2 +-
>   .../gpu/drm/ci/xfails/msm-apq8096-skips.txt   |   4 +-
>   .../msm-sc7180-trogdor-kingoftown-fails.txt   | 145 ------------------
>   .../msm-sc7180-trogdor-kingoftown-flakes.txt  |  18 ++-
>   .../msm-sc7180-trogdor-kingoftown-skips.txt   |   5 +-
>   ...sm-sc7180-trogdor-lazor-limozeen-fails.txt | 145 ------------------
>   ...m-sc7180-trogdor-lazor-limozeen-flakes.txt |  11 +-
>   ...sm-sc7180-trogdor-lazor-limozeen-skips.txt |   2 +-
>   .../gpu/drm/ci/xfails/msm-sdm845-flakes.txt   | 105 ++++++++++++-
>   .../gpu/drm/ci/xfails/msm-sdm845-skips.txt    |   4 +-
>   .../drm/ci/xfails/rockchip-rk3288-fails.txt   |   2 +-
>   .../drm/ci/xfails/rockchip-rk3288-skips.txt   |   2 +-
>   .../drm/ci/xfails/rockchip-rk3399-fails.txt   |   2 +-
>   .../drm/ci/xfails/rockchip-rk3399-flakes.txt  |   4 +-
>   .../drm/ci/xfails/rockchip-rk3399-skips.txt   |   2 +-
>   .../drm/ci/xfails/virtio_gpu-none-fails.txt   |  64 ++++++++
>   .../drm/ci/xfails/virtio_gpu-none-skips.txt   |   4 +-
>   drivers/gpu/drm/ci/xfails/vkms-none-fails.txt |   4 -
>   .../gpu/drm/ci/xfails/vkms-none-flakes.txt    |  21 +++
>   drivers/gpu/drm/ci/xfails/vkms-none-skips.txt | 105 ++++++++++++-
>   53 files changed, 527 insertions(+), 395 deletions(-)
> 
> diff --git a/drivers/gpu/drm/ci/gitlab-ci.yml b/drivers/gpu/drm/ci/gitlab-ci.yml
> index 80fb0f57ae46..b09976c3d2c2 100644
> --- a/drivers/gpu/drm/ci/gitlab-ci.yml
> +++ b/drivers/gpu/drm/ci/gitlab-ci.yml
> @@ -5,7 +5,7 @@ variables:
>     UPSTREAM_REPO: git://anongit.freedesktop.org/drm/drm
>     TARGET_BRANCH: drm-next
>   
> -  IGT_VERSION: 0df7b9b97f9da0e364f5ee30fe331004b8c86b56
> +  IGT_VERSION: f13702b8e4e847c56da3ef6f0969065d686049c5
>   
>     DEQP_RUNNER_GIT_URL: https://gitlab.freedesktop.org/anholt/deqp-runner.git
>     DEQP_RUNNER_GIT_TAG: v0.15.0
> diff --git a/drivers/gpu/drm/ci/igt_runner.sh b/drivers/gpu/drm/ci/igt_runner.sh
> index 79f41d7da772..37c724dba8cb 100755
> --- a/drivers/gpu/drm/ci/igt_runner.sh
> +++ b/drivers/gpu/drm/ci/igt_runner.sh
> @@ -80,6 +80,7 @@ igt-runner \
>       --igt-folder /igt/libexec/igt-gpu-tools \
>       --caselist $TESTLIST \
>       --output /results \
> +    -vvvv \
>       $IGT_SKIPS \
>       $IGT_FLAKES \
>       $IGT_FAILS \
> diff --git a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-fails.txt b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-fails.txt
> index e8c2f4044a92..2f74880671ca 100644
> --- a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-fails.txt
> @@ -30,6 +30,7 @@ kms_cursor_crc@cursor-random-64x64,Fail
>   kms_cursor_crc@cursor-size-change,Fail
>   kms_cursor_crc@cursor-sliding-64x21,Fail
>   kms_cursor_crc@cursor-sliding-64x64,Fail
> +kms_cursor_edge_walk@64x64-left-edge,Fail
>   kms_flip@flip-vs-modeset-vs-hang,Fail
>   kms_flip@flip-vs-panning-vs-hang,Fail
>   kms_lease@lease-uevent,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-flakes.txt b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-flakes.txt
> index ea512ff8c352..e4faa96fa000 100644
> --- a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-flakes.txt
> @@ -1,8 +1,20 @@
>   # Board Name: hp-11A-G6-EE-grunt
>   # Bug Report: https://lore.kernel.org/amd-gfx/3542730f-b8d7-404d-a947-b7a5e95d661c@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   kms_async_flips@async-flip-with-page-flip-events
> +
> +# Board Name: hp-11A-G6-EE-grunt
> +# Bug Report: https://lore.kernel.org/amd-gfx/3542730f-b8d7-404d-a947-b7a5e95d661c@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_async_flips@crc
> +
> +# Board Name: hp-11A-G6-EE-grunt
> +# Bug Report: https://lore.kernel.org/amd-gfx/3542730f-b8d7-404d-a947-b7a5e95d661c@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_plane@pixel-format-source-clamping
> diff --git a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-skips.txt b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-skips.txt
> index 3a2ce45d3cb9..931d6d1d0165 100644
> --- a/drivers/gpu/drm/ci/xfails/amdgpu-stoney-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/amdgpu-stoney-skips.txt
> @@ -2,9 +2,9 @@
>   .*suspend.*
>   
>   # Skip driver specific tests
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-amly-fails.txt b/drivers/gpu/drm/ci/xfails/i915-amly-fails.txt
> index 6641520ac587..9b84f68a5122 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-amly-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-amly-fails.txt
> @@ -6,11 +6,11 @@ i915_module_load@reload-no-display,Fail
>   i915_module_load@resize-bar,Fail
>   i915_pm_rpm@gem-execbuf-stress,Timeout
>   i915_pm_rpm@module-reload,Fail
> -kms_async_flips@invalid-async-flip,Timeout
> -kms_atomic_transition@modeset-transition-fencing,Timeout
>   kms_ccs@crc-primary-rotation-180-yf-tiled-ccs,Timeout
> +kms_cursor_legacy@short-flip-before-cursor-atomic-transitions,Timeout
>   kms_fb_coherency@memset-crc,Crash
> -kms_flip@flip-vs-dpms-off-vs-modeset,Timeout
> +kms_flip@busy-flip,Timeout
> +kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling,Fail
> @@ -33,16 +33,20 @@ kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling,Fail
> +kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu,Timeout
>   kms_lease@lease-uevent,Fail
>   kms_plane_alpha_blend@alpha-basic,Fail
>   kms_plane_alpha_blend@alpha-opaque-fb,Fail
>   kms_plane_alpha_blend@alpha-transparent-fb,Fail
>   kms_plane_alpha_blend@constant-alpha-max,Fail
>   kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation,Timeout
> -kms_pm_rpm@modeset-lpsp-stress,Timeout
> +kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5,Timeout
>   kms_pm_rpm@modeset-stress-extra-wait,Timeout
>   kms_pm_rpm@universal-planes,Timeout
>   kms_pm_rpm@universal-planes-dpms,Timeout
> +kms_prop_blob@invalid-set-prop,Fail
> +kms_rotation_crc@primary-rotation-180,Timeout
> +kms_vblank@query-forked-hang,Timeout
>   perf@i915-ref-count,Fail
>   perf_pmu@module-unload,Fail
>   perf_pmu@rc6,Crash
> diff --git a/drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt
> index 0a76547a103d..581f0da4d0f2 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-amly-flakes.txt
> @@ -1,9 +1,48 @@
>   # Board Name: asus-C433TA-AJ0005-rammus
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   i915_hangman@engine-engine-error
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   i915_hangman@gt-engine-hang
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_async_flips@crc
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_universal_plane@cursor-fb-leak
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_sysfs_edid_timing
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +i915_hangman@engine-engine-hang
> +
> +# Board Name: asus-C433TA-AJ0005-rammus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_pm_rpm@modeset-lpsp-stress
> diff --git a/drivers/gpu/drm/ci/xfails/i915-amly-skips.txt b/drivers/gpu/drm/ci/xfails/i915-amly-skips.txt
> index 5663ed0420a7..5186ba3dbbc6 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-amly-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-amly-skips.txt
> @@ -5,9 +5,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> @@ -19,6 +19,7 @@ gem_.*
>   i915_pm_rc6_residency.*
>   i915_suspend.*
>   kms_scaling_modes.*
> +i915_pm_rpm.*
>   
>   # Kernel panic
>   drm_fdinfo.*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt
> index cb010c153a6a..4663d4d13f35 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-apl-flakes.txt
> @@ -1,6 +1,6 @@
>   # Board Name: asus-C523NA-A20057-coral
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   kms_fb_coherency@memset-crc
> diff --git a/drivers/gpu/drm/ci/xfails/i915-apl-skips.txt b/drivers/gpu/drm/ci/xfails/i915-apl-skips.txt
> index ab588e7a447c..4f50e0240ff4 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-apl-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-apl-skips.txt
> @@ -7,9 +7,9 @@ kms_3d
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-cml-fails.txt b/drivers/gpu/drm/ci/xfails/i915-cml-fails.txt
> index 26cd62bbf30a..2723e2832797 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-cml-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-cml-fails.txt
> @@ -9,11 +9,10 @@ i915_pipe_stress@stress-xrgb8888-ytiled,Fail
>   i915_pm_rpm@gem-execbuf-stress,Timeout
>   i915_pm_rpm@module-reload,Fail
>   i915_pm_rpm@system-suspend-execbuf,Timeout
> -kms_async_flips@invalid-async-flip,Timeout
> -kms_atomic_transition@modeset-transition-fencing,Timeout
>   kms_ccs@crc-primary-rotation-180-yf-tiled-ccs,Timeout
>   kms_fb_coherency@memset-crc,Crash
> -kms_flip@flip-vs-dpms-off-vs-modeset,Timeout
> +kms_flip@busy-flip,Timeout
> +kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling,Fail
> @@ -41,20 +40,25 @@ kms_plane_alpha_blend@alpha-basic,Fail
>   kms_plane_alpha_blend@alpha-opaque-fb,Fail
>   kms_plane_alpha_blend@alpha-transparent-fb,Fail
>   kms_plane_alpha_blend@constant-alpha-max,Fail
> -kms_plane_alpha_blend@constant-alpha-min,Fail
>   kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation,Timeout
> +kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5,Timeout
>   kms_pm_rpm@modeset-stress-extra-wait,Timeout
>   kms_pm_rpm@universal-planes,Timeout
>   kms_pm_rpm@universal-planes-dpms,Timeout
> +kms_prop_blob@invalid-set-prop,Fail
> +kms_psr2_sf@cursor-plane-update-sf,Fail
>   kms_psr2_sf@fbc-plane-move-sf-dmg-area,Timeout
>   kms_psr2_sf@overlay-plane-update-continuous-sf,Fail
>   kms_psr2_sf@overlay-plane-update-sf-dmg-area,Fail
> +kms_psr2_sf@overlay-primary-update-sf-dmg-area,Fail
> +kms_psr2_sf@plane-move-sf-dmg-area,Fail
>   kms_psr2_sf@primary-plane-update-sf-dmg-area,Fail
>   kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb,Fail
>   kms_psr2_su@page_flip-NV12,Fail
>   kms_psr2_su@page_flip-P010,Fail
> -kms_psr@psr-sprite-render,Timeout
> +kms_rotation_crc@primary-rotation-180,Timeout
>   kms_setmode@basic,Fail
> +kms_vblank@query-forked-hang,Timeout
>   perf@i915-ref-count,Fail
>   perf_pmu@module-unload,Fail
>   perf_pmu@rc6,Crash
> diff --git a/drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt
> index bb560ff1e2cd..58a6001abb28 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-cml-flakes.txt
> @@ -1,6 +1,13 @@
>   # Board Name: asus-C436FA-Flip-hatch
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   kms_plane_alpha_blend@constant-alpha-min
> +
> +# Board Name: asus-C436FA-Flip-hatch
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_atomic_transition@plane-all-modeset-transition-internal-panels
> diff --git a/drivers/gpu/drm/ci/xfails/i915-cml-skips.txt b/drivers/gpu/drm/ci/xfails/i915-cml-skips.txt
> index 93b7736fffbb..9d753d97c9ab 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-cml-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-cml-skips.txt
> @@ -3,9 +3,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> @@ -19,6 +19,7 @@ i915_suspend.*
>   xe_module_load.*
>   api_intel_allocator.*
>   kms_cursor_legacy.*
> +i915_pm_rpm.*
>   
>   # Kernel panic
>   drm_fdinfo.*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-glk-fails.txt b/drivers/gpu/drm/ci/xfails/i915-glk-fails.txt
> index fca15b487929..4821c9adefd1 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-glk-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-glk-fails.txt
> @@ -1,20 +1,16 @@
>   core_setmaster@master-drop-set-user,Fail
> +core_setmaster_vs_auth,Fail
>   i915_module_load@load,Fail
>   i915_module_load@reload,Fail
>   i915_module_load@reload-no-display,Fail
>   i915_module_load@resize-bar,Fail
> -kms_async_flips@invalid-async-flip,Timeout
> -kms_atomic_transition@modeset-transition-fencing,Timeout
> -kms_big_fb@linear-16bpp-rotate-0,Fail
> -kms_big_fb@linear-16bpp-rotate-180,Fail
> -kms_big_fb@linear-32bpp-rotate-0,Fail
> -kms_big_fb@linear-32bpp-rotate-180,Fail
> -kms_big_fb@linear-8bpp-rotate-0,Fail
> -kms_big_fb@linear-8bpp-rotate-180,Fail
> -kms_big_fb@linear-max-hw-stride-32bpp-rotate-0,Fail
> +kms_cursor_legacy@short-flip-before-cursor-atomic-transitions,Timeout
>   kms_dirtyfb@default-dirtyfb-ioctl,Fail
> -kms_draw_crc@draw-method-render,Fail
> -kms_flip@flip-vs-dpms-off-vs-modeset,Timeout
> +kms_dirtyfb@drrs-dirtyfb-ioctl,Fail
> +kms_dirtyfb@fbc-dirtyfb-ioctl,Fail
> +kms_flip@blocking-wf_vblank,Fail
> +kms_flip@busy-flip,Timeout
> +kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible,Fail
>   kms_flip@wf_vblank-ts-check,Fail
>   kms_flip@wf_vblank-ts-check-interruptible,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling,Fail
> @@ -26,6 +22,7 @@ kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling,Fail
> +kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling,Fail
> @@ -38,19 +35,24 @@ kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling,Fail
> +kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu,Timeout
>   kms_frontbuffer_tracking@fbc-tiling-linear,Fail
>   kms_frontbuffer_tracking@fbcdrrs-tiling-linear,Fail
>   kms_lease@lease-uevent,Fail
>   kms_plane_alpha_blend@alpha-opaque-fb,Fail
>   kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation,Timeout
> +kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5,Timeout
>   kms_pm_rpm@legacy-planes,Timeout
>   kms_pm_rpm@legacy-planes-dpms,Timeout
>   kms_pm_rpm@modeset-stress-extra-wait,Timeout
>   kms_pm_rpm@universal-planes,Timeout
>   kms_pm_rpm@universal-planes-dpms,Timeout
> +kms_prop_blob@invalid-set-prop,Fail
>   kms_rotation_crc@multiplane-rotation,Fail
>   kms_rotation_crc@multiplane-rotation-cropping-bottom,Fail
>   kms_rotation_crc@multiplane-rotation-cropping-top,Fail
> +kms_rotation_crc@primary-rotation-180,Timeout
> +kms_vblank@query-forked-hang,Timeout
>   perf@non-zero-reason,Timeout
>   sysfs_heartbeat_interval@long,Timeout
>   sysfs_heartbeat_interval@off,Timeout
> diff --git a/drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt
> index 58fc424f8a42..077886b76093 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-glk-flakes.txt
> @@ -1,7 +1,13 @@
>   # Board Name: hp-x360-12b-ca0010nr-n4020-octopus
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   core_hotunplug@unplug-rescan
> +
> +# Board Name: hp-x360-12b-ca0010nr-n4020-octopus
> +# Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_fb_coherency@memset-crc
> diff --git a/drivers/gpu/drm/ci/xfails/i915-glk-skips.txt b/drivers/gpu/drm/ci/xfails/i915-glk-skips.txt
> index b3226b2d9ba1..9c64146aed90 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-glk-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-glk-skips.txt
> @@ -6,9 +6,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt b/drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt
> index d4fba4f55ec1..1de04a3308c4 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-kbl-fails.txt
> @@ -17,10 +17,12 @@ perf@i915-ref-count,Fail
>   perf_pmu@busy-accuracy-50,Fail
>   perf_pmu@module-unload,Fail
>   perf_pmu@rc6,Crash
> +prime_busy@after,Fail
>   sysfs_heartbeat_interval@long,Timeout
>   sysfs_heartbeat_interval@off,Timeout
>   sysfs_preempt_timeout@off,Timeout
>   sysfs_timeslice_duration@off,Timeout
> +testdisplay,Timeout
>   xe_module_load@force-load,Fail
>   xe_module_load@load,Fail
>   xe_module_load@many-reload,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt
> index 6cf1fed2e575..549501e40461 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-kbl-flakes.txt
> @@ -1,6 +1,6 @@
>   # Board Name: hp-x360-14-G1-sona
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   prime_busy@hang
> diff --git a/drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt b/drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt
> index f0cf8a6dda25..6ec2f83ffe13 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-kbl-skips.txt
> @@ -6,9 +6,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt b/drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt
> index 9a50e894c3e7..e728ccc62326 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-tgl-fails.txt
> @@ -1,34 +1,39 @@
> -api_intel_bb@blit-noreloc-keep-cache,Timeout
> +api_intel_allocator@simple-allocator,Timeout
> +api_intel_bb@object-reloc-keep-cache,Timeout
>   api_intel_bb@offset-control,Timeout
> -api_intel_bb@render-ccs,Timeout
> -core_getclient,Timeout
> -core_hotunplug@hotreplug-lateclose,Timeout
> -drm_read@short-buffer-block,Timeout
> +core_auth@getclient-simple,Timeout
> +core_hotunplug@hotunbind-rebind,Timeout
> +debugfs_test@read_all_entries_display_on,Timeout
> +drm_read@invalid-buffer,Timeout
>   drm_read@short-buffer-nonblock,Timeout
> -dumb_buffer@map-uaf,Timeout
>   gen3_render_tiledx_blits,Timeout
>   gen7_exec_parse@basic-allocation,Timeout
>   gen7_exec_parse@batch-without-end,Timeout
>   gen9_exec_parse@batch-invalid-length,Timeout
>   gen9_exec_parse@bb-secure,Timeout
> +gen9_exec_parse@secure-batches,Timeout
> +gen9_exec_parse@shadow-peek,Timeout
> +gen9_exec_parse@unaligned-jump,Timeout
>   i915_module_load@load,Fail
>   i915_module_load@reload,Fail
>   i915_module_load@reload-no-display,Fail
>   i915_module_load@resize-bar,Fail
> -i915_pciid,Timeout
>   i915_query@engine-info,Timeout
> +i915_query@query-topology-kernel-writes,Timeout
> +i915_query@test-query-geometry-subslices,Timeout
>   kms_lease@lease-uevent,Fail
>   kms_rotation_crc@multiplane-rotation,Fail
>   perf@i915-ref-count,Fail
> -perf_pmu@busy,Timeout
>   perf_pmu@enable-race,Timeout
>   perf_pmu@event-wait,Timeout
>   perf_pmu@gt-awake,Timeout
> +perf_pmu@interrupts,Timeout
>   perf_pmu@module-unload,Fail
>   perf_pmu@rc6,Crash
>   prime_mmap@test_map_unmap,Timeout
> +prime_mmap@test_refcounting,Timeout
>   prime_self_import@basic-with_one_bo,Timeout
> -syncobj_basic@bad-destroy,Timeout
> +syncobj_basic@bad-flags-fd-to-handle,Timeout
>   syncobj_eventfd@invalid-bad-pad,Timeout
>   syncobj_wait@invalid-multi-wait-unsubmitted-signaled,Timeout
>   syncobj_wait@invalid-signal-illegal-handle,Timeout
> @@ -37,7 +42,9 @@ syncobj_wait@multi-wait-all-submitted,Timeout
>   syncobj_wait@multi-wait-for-submit-submitted-signaled,Timeout
>   syncobj_wait@wait-any-complex,Timeout
>   syncobj_wait@wait-delayed-signal,Timeout
> +template@A,Timeout
>   xe_module_load@force-load,Fail
>   xe_module_load@load,Fail
> +xe_module_load@many-reload,Fail
>   xe_module_load@reload,Fail
>   xe_module_load@reload-no-display,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt b/drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt
> index e600782ef96a..b47df5855e8d 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-tgl-skips.txt
> @@ -12,9 +12,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/i915-whl-fails.txt b/drivers/gpu/drm/ci/xfails/i915-whl-fails.txt
> index 7582d313dd9b..2adae2175501 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-whl-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-whl-fails.txt
> @@ -7,18 +7,10 @@ i915_module_load@resize-bar,Fail
>   i915_pm_rpm@gem-execbuf-stress,Timeout
>   i915_pm_rpm@module-reload,Fail
>   i915_pm_rpm@system-suspend-execbuf,Timeout
> -kms_async_flips@invalid-async-flip,Timeout
> -kms_atomic_transition@modeset-transition-fencing,Timeout
> -kms_big_fb@linear-16bpp-rotate-0,Fail
> -kms_big_fb@linear-16bpp-rotate-180,Fail
> -kms_big_fb@linear-32bpp-rotate-0,Fail
> -kms_big_fb@linear-32bpp-rotate-180,Fail
> -kms_big_fb@linear-8bpp-rotate-0,Fail
> -kms_big_fb@linear-8bpp-rotate-180,Fail
> -kms_big_fb@linear-max-hw-stride-32bpp-rotate-0,Fail
>   kms_ccs@crc-primary-rotation-180-yf-tiled-ccs,Timeout
> +kms_cursor_legacy@short-flip-before-cursor-atomic-transitions,Timeout
>   kms_dirtyfb@default-dirtyfb-ioctl,Fail
> -kms_draw_crc@draw-method-render,Fail
> +kms_dirtyfb@fbc-dirtyfb-ioctl,Fail
>   kms_fb_coherency@memset-crc,Crash
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling,Fail
>   kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling,Fail
> @@ -40,6 +32,7 @@ kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling,Fail
>   kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling,Fail
> +kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu,Timeout
>   kms_frontbuffer_tracking@fbc-tiling-linear,Fail
>   kms_lease@lease-uevent,Fail
>   kms_plane_alpha_blend@alpha-basic,Fail
> @@ -47,9 +40,13 @@ kms_plane_alpha_blend@alpha-opaque-fb,Fail
>   kms_plane_alpha_blend@alpha-transparent-fb,Fail
>   kms_plane_alpha_blend@constant-alpha-max,Fail
>   kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation,Timeout
> +kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5,Timeout
>   kms_pm_rpm@modeset-stress-extra-wait,Timeout
>   kms_pm_rpm@universal-planes,Timeout
>   kms_pm_rpm@universal-planes-dpms,Timeout
> +kms_prop_blob@invalid-set-prop,Fail
> +kms_rotation_crc@primary-rotation-180,Timeout
> +kms_vblank@query-forked-hang,Timeout
>   perf@i915-ref-count,Fail
>   perf_pmu@module-unload,Fail
>   perf_pmu@rc6,Crash
> diff --git a/drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt b/drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt
> index 1167a58c7dd1..60b8d1c64e70 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-whl-flakes.txt
> @@ -1,6 +1,6 @@
>   # Board Name: dell-latitude-5400-8665U-sarien
>   # Bug Report: https://lore.kernel.org/intel-gfx/af4ca4df-a3ef-4943-bdbf-4c3af2c333af@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   kms_pm_rpm@modeset-lpsp-stress
> diff --git a/drivers/gpu/drm/ci/xfails/i915-whl-skips.txt b/drivers/gpu/drm/ci/xfails/i915-whl-skips.txt
> index 20bd91525f45..29bff8922ae1 100644
> --- a/drivers/gpu/drm/ci/xfails/i915-whl-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/i915-whl-skips.txt
> @@ -3,9 +3,9 @@ kms_plane_scaling@invalid-parameters
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> @@ -17,6 +17,7 @@ gem_.*
>   i915_pm_rc6_residency.*
>   i915_suspend.*
>   kms_flip.*
> +i915_pm_rpm.*
>   
>   # Kernel panic
>   drm_fdinfo.*
> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-fails.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-fails.txt
> index cc5e9c1c2d57..95aadef2fa2d 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-fails.txt
> @@ -5,8 +5,15 @@ device_reset@unbind-reset-rebind,Fail
>   dumb_buffer@invalid-bpp,Fail
>   fbdev@eof,Fail
>   fbdev@read,Fail
> -fbdev@unaligned-write,Fail
>   kms_3d,Fail
> +kms_bw@connected-linear-tiling-1-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-1-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-1-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-1-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-2-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-2-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-2-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-2-displays-3840x2160p,Fail
>   kms_bw@linear-tiling-1-displays-1920x1080p,Fail
>   kms_bw@linear-tiling-1-displays-2160x1440p,Fail
>   kms_bw@linear-tiling-1-displays-2560x1440p,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-flakes.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-flakes.txt
> index 395ac0463404..2e5bf6ae25f2 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-flakes.txt
> @@ -1,11 +1,41 @@
>   # Board Name: mt8173-elm-hana
>   # Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   core_setmaster_vs_auth
> +
> +# Board Name: mt8173-elm-hana
> +# Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   dumb_buffer@create-clear
> +
> +# Board Name: mt8173-elm-hana
> +# Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   fbdev@unaligned-write
> +
> +# Board Name: mt8173-elm-hana
> +# Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   fbdev@write
> +
> +# Board Name: mt8173-elm-hana
> +# Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@cursor-vs-flip-atomic-transitions
> +
> +# Board Name: mt8173-elm-hana
> +# Bug Report: https://lore.kernel.org/linux-mediatek/0b2a1899-15dd-42fa-8f63-ea0ca28dbb17@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_prop_blob@invalid-set-prop
> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-skips.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-skips.txt
> index 0c6108392140..562662eff802 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8173-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8173-skips.txt
> @@ -1,8 +1,8 @@
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt
> index 9ef460646d76..5b7d623f404b 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-fails.txt
> @@ -4,5 +4,5 @@ dumb_buffer@invalid-bpp,Fail
>   dumb_buffer@map-invalid-size,Fail
>   dumb_buffer@map-uaf,Fail
>   dumb_buffer@map-valid,Fail
> -panfrost_prime@gem-prime-import,Fail
> +panfrost/panfrost_prime@gem-prime-import,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-skips.txt b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-skips.txt
> index 715b9a8f4997..03eefa518afa 100644
> --- a/drivers/gpu/drm/ci/xfails/mediatek-mt8183-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/mediatek-mt8183-skips.txt
> @@ -1,6 +1,6 @@
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
>   ^v3d.*
>   ^vc4.*
> diff --git a/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt b/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
> index 9ef460646d76..5b7d623f404b 100644
> --- a/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/meson-g12b-fails.txt
> @@ -4,5 +4,5 @@ dumb_buffer@invalid-bpp,Fail
>   dumb_buffer@map-invalid-size,Fail
>   dumb_buffer@map-uaf,Fail
>   dumb_buffer@map-valid,Fail
> -panfrost_prime@gem-prime-import,Fail
> +panfrost/panfrost_prime@gem-prime-import,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt b/drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt
> index 715b9a8f4997..03eefa518afa 100644
> --- a/drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/meson-g12b-skips.txt
> @@ -1,6 +1,6 @@
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
>   ^v3d.*
>   ^vc4.*
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> index 6e7fd1ccd1e3..b57884650306 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-fails.txt
> @@ -4,12 +4,9 @@ device_reset@unbind-cold-reset-rebind,Fail
>   device_reset@unbind-reset-rebind,Fail
>   dumb_buffer@invalid-bpp,Fail
>   kms_3d,Fail
> -kms_cursor_legacy@forked-move,Fail
> -kms_cursor_legacy@single-bo,Fail
>   kms_cursor_legacy@torture-bo,Fail
> -kms_cursor_legacy@torture-move,Fail
>   kms_force_connector_basic@force-edid,Fail
>   kms_hdmi_inject@inject-4k,Fail
>   kms_lease@lease-uevent,Fail
> -msm_mapping@ring,Fail
> +msm/msm_mapping@ring,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt b/drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt
> index ff12202abb6e..ef7697190fff 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8016-skips.txt
> @@ -1,7 +1,7 @@
>   # Skip driver specific tests
>   ^amdgpu.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt
> index a275584c8bbb..123d92cb4470 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8096-flakes.txt
> @@ -1,6 +1,6 @@
>   # Board Name: apq8096-db820c
>   # Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   dumb_buffer@create-clear
> diff --git a/drivers/gpu/drm/ci/xfails/msm-apq8096-skips.txt b/drivers/gpu/drm/ci/xfails/msm-apq8096-skips.txt
> index 1c45fc6c512d..244324d38964 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-apq8096-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-apq8096-skips.txt
> @@ -4,7 +4,7 @@ kms_cursor_legacy@all-pipes-torture-move
>   # Skip driver specific tests
>   ^amdgpu.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> @@ -23,4 +23,4 @@ core_hotunplug.*
>   # *** gpu fault: ttbr0=00000001030ea000 iova=0000000001074000 dir=WRITE type=PERMISSION source=1f030000 (0,0,0,0)
>   # msm_mdp 901000.display-controller: RBBM | ME master split | status=0x701000B0
>   # watchdog: BUG: soft lockup - CPU#0 stuck for 26s! [kworker/u16:3:46]
> -msm_mapping@shadow
> +msm/msm_mapping@shadow
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> index eb7a3886d397..8e02392a24cb 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-fails.txt
> @@ -3,13 +3,11 @@ device_reset@reset-bound,Fail
>   device_reset@unbind-cold-reset-rebind,Fail
>   device_reset@unbind-reset-rebind,Fail
>   dumb_buffer@invalid-bpp,Fail
> -kms_atomic_transition@plane-primary-toggle-with-vblank-wait,Fail
>   kms_color@ctm-0-25,Fail
>   kms_color@ctm-0-50,Fail
>   kms_color@ctm-0-75,Fail
>   kms_color@ctm-blue-to-red,Fail
>   kms_color@ctm-green-to-red,Fail
> -kms_color@ctm-max,Fail
>   kms_color@ctm-negative,Fail
>   kms_color@ctm-red-to-blue,Fail
>   kms_color@ctm-signed,Fail
> @@ -21,72 +19,6 @@ kms_content_protection@lic-type-1,Crash
>   kms_content_protection@srm,Crash
>   kms_content_protection@type1,Crash
>   kms_content_protection@uevent,Crash
> -kms_cursor_crc@cursor-alpha-opaque,Fail
> -kms_cursor_crc@cursor-alpha-transparent,Fail
> -kms_cursor_crc@cursor-dpms,Fail
> -kms_cursor_crc@cursor-offscreen-128x128,Fail
> -kms_cursor_crc@cursor-offscreen-128x42,Fail
> -kms_cursor_crc@cursor-offscreen-256x256,Fail
> -kms_cursor_crc@cursor-offscreen-256x85,Fail
> -kms_cursor_crc@cursor-offscreen-32x10,Fail
> -kms_cursor_crc@cursor-offscreen-32x32,Fail
> -kms_cursor_crc@cursor-offscreen-512x170,Fail
> -kms_cursor_crc@cursor-offscreen-512x512,Fail
> -kms_cursor_crc@cursor-offscreen-64x21,Fail
> -kms_cursor_crc@cursor-offscreen-64x64,Fail
> -kms_cursor_crc@cursor-onscreen-128x128,Fail
> -kms_cursor_crc@cursor-onscreen-128x42,Fail
> -kms_cursor_crc@cursor-onscreen-256x256,Fail
> -kms_cursor_crc@cursor-onscreen-256x85,Fail
> -kms_cursor_crc@cursor-onscreen-32x10,Fail
> -kms_cursor_crc@cursor-onscreen-32x32,Fail
> -kms_cursor_crc@cursor-onscreen-512x170,Fail
> -kms_cursor_crc@cursor-onscreen-512x512,Fail
> -kms_cursor_crc@cursor-onscreen-64x21,Fail
> -kms_cursor_crc@cursor-onscreen-64x64,Fail
> -kms_cursor_crc@cursor-random-128x128,Fail
> -kms_cursor_crc@cursor-random-128x42,Fail
> -kms_cursor_crc@cursor-random-256x256,Fail
> -kms_cursor_crc@cursor-random-256x85,Fail
> -kms_cursor_crc@cursor-random-32x10,Fail
> -kms_cursor_crc@cursor-random-32x32,Fail
> -kms_cursor_crc@cursor-random-512x170,Fail
> -kms_cursor_crc@cursor-random-512x512,Fail
> -kms_cursor_crc@cursor-random-64x21,Fail
> -kms_cursor_crc@cursor-random-64x64,Fail
> -kms_cursor_crc@cursor-rapid-movement-128x128,Fail
> -kms_cursor_crc@cursor-rapid-movement-128x42,Fail
> -kms_cursor_crc@cursor-rapid-movement-256x256,Fail
> -kms_cursor_crc@cursor-rapid-movement-256x85,Fail
> -kms_cursor_crc@cursor-rapid-movement-32x10,Fail
> -kms_cursor_crc@cursor-rapid-movement-32x32,Fail
> -kms_cursor_crc@cursor-rapid-movement-512x170,Fail
> -kms_cursor_crc@cursor-rapid-movement-512x512,Fail
> -kms_cursor_crc@cursor-rapid-movement-64x21,Fail
> -kms_cursor_crc@cursor-rapid-movement-64x64,Fail
> -kms_cursor_crc@cursor-size-change,Fail
> -kms_cursor_crc@cursor-sliding-128x128,Fail
> -kms_cursor_crc@cursor-sliding-128x42,Fail
> -kms_cursor_crc@cursor-sliding-256x256,Fail
> -kms_cursor_crc@cursor-sliding-256x85,Fail
> -kms_cursor_crc@cursor-sliding-32x10,Fail
> -kms_cursor_crc@cursor-sliding-32x32,Fail
> -kms_cursor_crc@cursor-sliding-512x170,Fail
> -kms_cursor_crc@cursor-sliding-512x512,Fail
> -kms_cursor_crc@cursor-sliding-64x21,Fail
> -kms_cursor_crc@cursor-sliding-64x64,Fail
> -kms_cursor_edge_walk@128x128-left-edge,Fail
> -kms_cursor_edge_walk@128x128-right-edge,Fail
> -kms_cursor_edge_walk@128x128-top-bottom,Fail
> -kms_cursor_edge_walk@128x128-top-edge,Fail
> -kms_cursor_edge_walk@256x256-left-edge,Fail
> -kms_cursor_edge_walk@256x256-right-edge,Fail
> -kms_cursor_edge_walk@256x256-top-bottom,Fail
> -kms_cursor_edge_walk@256x256-top-edge,Fail
> -kms_cursor_edge_walk@64x64-left-edge,Fail
> -kms_cursor_edge_walk@64x64-right-edge,Fail
> -kms_cursor_edge_walk@64x64-top-bottom,Fail
> -kms_cursor_edge_walk@64x64-top-edge,Fail
>   kms_cursor_legacy@2x-cursor-vs-flip-atomic,Fail
>   kms_cursor_legacy@2x-cursor-vs-flip-legacy,Fail
>   kms_cursor_legacy@2x-flip-vs-cursor-atomic,Fail
> @@ -100,92 +32,15 @@ kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
>   kms_display_modes@extended-mode-basic,Fail
>   kms_flip@2x-flip-vs-modeset-vs-hang,Fail
>   kms_flip@2x-flip-vs-panning-vs-hang,Fail
> -kms_flip@absolute-wf_vblank,Fail
> -kms_flip@absolute-wf_vblank-interruptible,Fail
> -kms_flip@basic-flip-vs-wf_vblank,Fail
> -kms_flip@basic-plain-flip,Fail
> -kms_flip@blocking-absolute-wf_vblank,Fail
> -kms_flip@blocking-absolute-wf_vblank-interruptible,Fail
> -kms_flip@blocking-wf_vblank,Fail
> -kms_flip@busy-flip,Fail
> -kms_flip@dpms-off-confusion,Fail
> -kms_flip@dpms-off-confusion-interruptible,Fail
> -kms_flip@dpms-vs-vblank-race,Fail
> -kms_flip@dpms-vs-vblank-race-interruptible,Fail
> -kms_flip@flip-vs-absolute-wf_vblank,Fail
> -kms_flip@flip-vs-absolute-wf_vblank-interruptible,Fail
> -kms_flip@flip-vs-blocking-wf-vblank,Fail
> -kms_flip@flip-vs-expired-vblank,Fail
> -kms_flip@flip-vs-expired-vblank-interruptible,Fail
>   kms_flip@flip-vs-modeset-vs-hang,Fail
> -kms_flip@flip-vs-panning,Fail
> -kms_flip@flip-vs-panning-interruptible,Fail
>   kms_flip@flip-vs-panning-vs-hang,Fail
> -kms_flip@flip-vs-rmfb,Fail
> -kms_flip@flip-vs-rmfb-interruptible,Fail
> -kms_flip@flip-vs-wf_vblank-interruptible,Fail
> -kms_flip@modeset-vs-vblank-race,Fail
> -kms_flip@modeset-vs-vblank-race-interruptible,Fail
> -kms_flip@plain-flip-fb-recreate,Fail
> -kms_flip@plain-flip-fb-recreate-interruptible,Fail
> -kms_flip@plain-flip-interruptible,Fail
> -kms_flip@plain-flip-ts-check,Fail
> -kms_flip@plain-flip-ts-check-interruptible,Fail
> -kms_flip@wf_vblank-ts-check,Fail
> -kms_flip@wf_vblank-ts-check-interruptible,Fail
> -kms_lease@cursor-implicit-plane,Fail
>   kms_lease@lease-uevent,Fail
> -kms_lease@page-flip-implicit-plane,Fail
> -kms_lease@setcrtc-implicit-plane,Fail
> -kms_lease@simple-lease,Fail
>   kms_multipipe_modeset@basic-max-pipe-crc-check,Fail
>   kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
> -kms_pipe_crc_basic@compare-crc-sanitycheck-xr24,Fail
> -kms_pipe_crc_basic@disable-crc-after-crtc,Fail
> -kms_pipe_crc_basic@nonblocking-crc,Fail
> -kms_pipe_crc_basic@nonblocking-crc-frame-sequence,Fail
> -kms_pipe_crc_basic@read-crc,Fail
> -kms_pipe_crc_basic@read-crc-frame-sequence,Fail
> -kms_plane@pixel-format,Fail
> -kms_plane@pixel-format-source-clamping,Fail
> -kms_plane@plane-panning-bottom-right,Fail
> -kms_plane@plane-panning-top-left,Fail
> -kms_plane@plane-position-covered,Fail
> -kms_plane@plane-position-hole,Fail
> -kms_plane@plane-position-hole-dpms,Fail
>   kms_plane_alpha_blend@alpha-7efc,Fail
> -kms_plane_alpha_blend@alpha-basic,Fail
> -kms_plane_alpha_blend@alpha-opaque-fb,Fail
> -kms_plane_alpha_blend@alpha-transparent-fb,Fail
> -kms_plane_alpha_blend@constant-alpha-max,Fail
> -kms_plane_alpha_blend@constant-alpha-mid,Fail
> -kms_plane_alpha_blend@constant-alpha-min,Fail
>   kms_plane_alpha_blend@coverage-7efc,Fail
>   kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> -kms_plane_cursor@primary,Fail
>   kms_plane_lowres@tiling-none,Fail
> -kms_plane_multiple@tiling-none,Fail
>   kms_rmfb@close-fd,Fail
> -kms_rotation_crc@cursor-rotation-180,Fail
> -kms_rotation_crc@primary-rotation-180,Fail
> -kms_sequence@get-busy,Fail
> -kms_sequence@get-forked,Fail
> -kms_sequence@get-forked-busy,Fail
> -kms_sequence@get-idle,Fail
> -kms_sequence@queue-busy,Fail
> -kms_sequence@queue-idle,Fail
> -kms_vblank@accuracy-idle,Fail
> -kms_vblank@crtc-id,Fail
> -kms_vblank@query-busy,Fail
> -kms_vblank@query-forked,Fail
> -kms_vblank@query-forked-busy,Fail
> -kms_vblank@query-idle,Fail
>   kms_vblank@ts-continuation-dpms-rpm,Fail
> -kms_vblank@ts-continuation-idle,Fail
> -kms_vblank@ts-continuation-modeset,Fail
> -kms_vblank@ts-continuation-modeset-rpm,Fail
> -kms_vblank@wait-busy,Fail
> -kms_vblank@wait-forked,Fail
> -kms_vblank@wait-forked-busy,Fail
> -kms_vblank@wait-idle,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> index 6dec63d48cfb..d74e04405e65 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-flakes.txt
> @@ -1,8 +1,20 @@
>   # Board Name: sc7180-trogdor-kingoftown
>   # Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
> +msm/msm_mapping@shadow
> +
> +# Board Name: sc7180-trogdor-kingoftown
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> +msm/msm_shrink@copy-gpu-oom-32
> +
> +# Board Name: sc7180-trogdor-kingoftown
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
>   # Failure Rate: 50
> -msm_mapping@shadow
> -msm_shrink@copy-gpu-oom-32
> -msm_shrink@copy-gpu-oom-8
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
> +msm/msm_shrink@copy-gpu-oom-8
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-skips.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-skips.txt
> index 68c96005ba54..bd5a975a1b2f 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-kingoftown-skips.txt
> @@ -4,7 +4,7 @@
>   # Skip driver specific tests
>   ^amdgpu.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> @@ -19,3 +19,6 @@ core_hotunplug.*
>   
>   # Timeout occurs
>   kms_flip@2x-wf_vblank-ts-check
> +
> +# Hangs the machine
> +kms_cursor_crc@cursor-random-max-size
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> index eb7a3886d397..8e02392a24cb 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-fails.txt
> @@ -3,13 +3,11 @@ device_reset@reset-bound,Fail
>   device_reset@unbind-cold-reset-rebind,Fail
>   device_reset@unbind-reset-rebind,Fail
>   dumb_buffer@invalid-bpp,Fail
> -kms_atomic_transition@plane-primary-toggle-with-vblank-wait,Fail
>   kms_color@ctm-0-25,Fail
>   kms_color@ctm-0-50,Fail
>   kms_color@ctm-0-75,Fail
>   kms_color@ctm-blue-to-red,Fail
>   kms_color@ctm-green-to-red,Fail
> -kms_color@ctm-max,Fail
>   kms_color@ctm-negative,Fail
>   kms_color@ctm-red-to-blue,Fail
>   kms_color@ctm-signed,Fail
> @@ -21,72 +19,6 @@ kms_content_protection@lic-type-1,Crash
>   kms_content_protection@srm,Crash
>   kms_content_protection@type1,Crash
>   kms_content_protection@uevent,Crash
> -kms_cursor_crc@cursor-alpha-opaque,Fail
> -kms_cursor_crc@cursor-alpha-transparent,Fail
> -kms_cursor_crc@cursor-dpms,Fail
> -kms_cursor_crc@cursor-offscreen-128x128,Fail
> -kms_cursor_crc@cursor-offscreen-128x42,Fail
> -kms_cursor_crc@cursor-offscreen-256x256,Fail
> -kms_cursor_crc@cursor-offscreen-256x85,Fail
> -kms_cursor_crc@cursor-offscreen-32x10,Fail
> -kms_cursor_crc@cursor-offscreen-32x32,Fail
> -kms_cursor_crc@cursor-offscreen-512x170,Fail
> -kms_cursor_crc@cursor-offscreen-512x512,Fail
> -kms_cursor_crc@cursor-offscreen-64x21,Fail
> -kms_cursor_crc@cursor-offscreen-64x64,Fail
> -kms_cursor_crc@cursor-onscreen-128x128,Fail
> -kms_cursor_crc@cursor-onscreen-128x42,Fail
> -kms_cursor_crc@cursor-onscreen-256x256,Fail
> -kms_cursor_crc@cursor-onscreen-256x85,Fail
> -kms_cursor_crc@cursor-onscreen-32x10,Fail
> -kms_cursor_crc@cursor-onscreen-32x32,Fail
> -kms_cursor_crc@cursor-onscreen-512x170,Fail
> -kms_cursor_crc@cursor-onscreen-512x512,Fail
> -kms_cursor_crc@cursor-onscreen-64x21,Fail
> -kms_cursor_crc@cursor-onscreen-64x64,Fail
> -kms_cursor_crc@cursor-random-128x128,Fail
> -kms_cursor_crc@cursor-random-128x42,Fail
> -kms_cursor_crc@cursor-random-256x256,Fail
> -kms_cursor_crc@cursor-random-256x85,Fail
> -kms_cursor_crc@cursor-random-32x10,Fail
> -kms_cursor_crc@cursor-random-32x32,Fail
> -kms_cursor_crc@cursor-random-512x170,Fail
> -kms_cursor_crc@cursor-random-512x512,Fail
> -kms_cursor_crc@cursor-random-64x21,Fail
> -kms_cursor_crc@cursor-random-64x64,Fail
> -kms_cursor_crc@cursor-rapid-movement-128x128,Fail
> -kms_cursor_crc@cursor-rapid-movement-128x42,Fail
> -kms_cursor_crc@cursor-rapid-movement-256x256,Fail
> -kms_cursor_crc@cursor-rapid-movement-256x85,Fail
> -kms_cursor_crc@cursor-rapid-movement-32x10,Fail
> -kms_cursor_crc@cursor-rapid-movement-32x32,Fail
> -kms_cursor_crc@cursor-rapid-movement-512x170,Fail
> -kms_cursor_crc@cursor-rapid-movement-512x512,Fail
> -kms_cursor_crc@cursor-rapid-movement-64x21,Fail
> -kms_cursor_crc@cursor-rapid-movement-64x64,Fail
> -kms_cursor_crc@cursor-size-change,Fail
> -kms_cursor_crc@cursor-sliding-128x128,Fail
> -kms_cursor_crc@cursor-sliding-128x42,Fail
> -kms_cursor_crc@cursor-sliding-256x256,Fail
> -kms_cursor_crc@cursor-sliding-256x85,Fail
> -kms_cursor_crc@cursor-sliding-32x10,Fail
> -kms_cursor_crc@cursor-sliding-32x32,Fail
> -kms_cursor_crc@cursor-sliding-512x170,Fail
> -kms_cursor_crc@cursor-sliding-512x512,Fail
> -kms_cursor_crc@cursor-sliding-64x21,Fail
> -kms_cursor_crc@cursor-sliding-64x64,Fail
> -kms_cursor_edge_walk@128x128-left-edge,Fail
> -kms_cursor_edge_walk@128x128-right-edge,Fail
> -kms_cursor_edge_walk@128x128-top-bottom,Fail
> -kms_cursor_edge_walk@128x128-top-edge,Fail
> -kms_cursor_edge_walk@256x256-left-edge,Fail
> -kms_cursor_edge_walk@256x256-right-edge,Fail
> -kms_cursor_edge_walk@256x256-top-bottom,Fail
> -kms_cursor_edge_walk@256x256-top-edge,Fail
> -kms_cursor_edge_walk@64x64-left-edge,Fail
> -kms_cursor_edge_walk@64x64-right-edge,Fail
> -kms_cursor_edge_walk@64x64-top-bottom,Fail
> -kms_cursor_edge_walk@64x64-top-edge,Fail
>   kms_cursor_legacy@2x-cursor-vs-flip-atomic,Fail
>   kms_cursor_legacy@2x-cursor-vs-flip-legacy,Fail
>   kms_cursor_legacy@2x-flip-vs-cursor-atomic,Fail
> @@ -100,92 +32,15 @@ kms_cursor_legacy@cursor-vs-flip-varying-size,Fail
>   kms_display_modes@extended-mode-basic,Fail
>   kms_flip@2x-flip-vs-modeset-vs-hang,Fail
>   kms_flip@2x-flip-vs-panning-vs-hang,Fail
> -kms_flip@absolute-wf_vblank,Fail
> -kms_flip@absolute-wf_vblank-interruptible,Fail
> -kms_flip@basic-flip-vs-wf_vblank,Fail
> -kms_flip@basic-plain-flip,Fail
> -kms_flip@blocking-absolute-wf_vblank,Fail
> -kms_flip@blocking-absolute-wf_vblank-interruptible,Fail
> -kms_flip@blocking-wf_vblank,Fail
> -kms_flip@busy-flip,Fail
> -kms_flip@dpms-off-confusion,Fail
> -kms_flip@dpms-off-confusion-interruptible,Fail
> -kms_flip@dpms-vs-vblank-race,Fail
> -kms_flip@dpms-vs-vblank-race-interruptible,Fail
> -kms_flip@flip-vs-absolute-wf_vblank,Fail
> -kms_flip@flip-vs-absolute-wf_vblank-interruptible,Fail
> -kms_flip@flip-vs-blocking-wf-vblank,Fail
> -kms_flip@flip-vs-expired-vblank,Fail
> -kms_flip@flip-vs-expired-vblank-interruptible,Fail
>   kms_flip@flip-vs-modeset-vs-hang,Fail
> -kms_flip@flip-vs-panning,Fail
> -kms_flip@flip-vs-panning-interruptible,Fail
>   kms_flip@flip-vs-panning-vs-hang,Fail
> -kms_flip@flip-vs-rmfb,Fail
> -kms_flip@flip-vs-rmfb-interruptible,Fail
> -kms_flip@flip-vs-wf_vblank-interruptible,Fail
> -kms_flip@modeset-vs-vblank-race,Fail
> -kms_flip@modeset-vs-vblank-race-interruptible,Fail
> -kms_flip@plain-flip-fb-recreate,Fail
> -kms_flip@plain-flip-fb-recreate-interruptible,Fail
> -kms_flip@plain-flip-interruptible,Fail
> -kms_flip@plain-flip-ts-check,Fail
> -kms_flip@plain-flip-ts-check-interruptible,Fail
> -kms_flip@wf_vblank-ts-check,Fail
> -kms_flip@wf_vblank-ts-check-interruptible,Fail
> -kms_lease@cursor-implicit-plane,Fail
>   kms_lease@lease-uevent,Fail
> -kms_lease@page-flip-implicit-plane,Fail
> -kms_lease@setcrtc-implicit-plane,Fail
> -kms_lease@simple-lease,Fail
>   kms_multipipe_modeset@basic-max-pipe-crc-check,Fail
>   kms_pipe_crc_basic@compare-crc-sanitycheck-nv12,Fail
> -kms_pipe_crc_basic@compare-crc-sanitycheck-xr24,Fail
> -kms_pipe_crc_basic@disable-crc-after-crtc,Fail
> -kms_pipe_crc_basic@nonblocking-crc,Fail
> -kms_pipe_crc_basic@nonblocking-crc-frame-sequence,Fail
> -kms_pipe_crc_basic@read-crc,Fail
> -kms_pipe_crc_basic@read-crc-frame-sequence,Fail
> -kms_plane@pixel-format,Fail
> -kms_plane@pixel-format-source-clamping,Fail
> -kms_plane@plane-panning-bottom-right,Fail
> -kms_plane@plane-panning-top-left,Fail
> -kms_plane@plane-position-covered,Fail
> -kms_plane@plane-position-hole,Fail
> -kms_plane@plane-position-hole-dpms,Fail
>   kms_plane_alpha_blend@alpha-7efc,Fail
> -kms_plane_alpha_blend@alpha-basic,Fail
> -kms_plane_alpha_blend@alpha-opaque-fb,Fail
> -kms_plane_alpha_blend@alpha-transparent-fb,Fail
> -kms_plane_alpha_blend@constant-alpha-max,Fail
> -kms_plane_alpha_blend@constant-alpha-mid,Fail
> -kms_plane_alpha_blend@constant-alpha-min,Fail
>   kms_plane_alpha_blend@coverage-7efc,Fail
>   kms_plane_alpha_blend@coverage-vs-premult-vs-constant,Fail
> -kms_plane_cursor@primary,Fail
>   kms_plane_lowres@tiling-none,Fail
> -kms_plane_multiple@tiling-none,Fail
>   kms_rmfb@close-fd,Fail
> -kms_rotation_crc@cursor-rotation-180,Fail
> -kms_rotation_crc@primary-rotation-180,Fail
> -kms_sequence@get-busy,Fail
> -kms_sequence@get-forked,Fail
> -kms_sequence@get-forked-busy,Fail
> -kms_sequence@get-idle,Fail
> -kms_sequence@queue-busy,Fail
> -kms_sequence@queue-idle,Fail
> -kms_vblank@accuracy-idle,Fail
> -kms_vblank@crtc-id,Fail
> -kms_vblank@query-busy,Fail
> -kms_vblank@query-forked,Fail
> -kms_vblank@query-forked-busy,Fail
> -kms_vblank@query-idle,Fail
>   kms_vblank@ts-continuation-dpms-rpm,Fail
> -kms_vblank@ts-continuation-idle,Fail
> -kms_vblank@ts-continuation-modeset,Fail
> -kms_vblank@ts-continuation-modeset-rpm,Fail
> -kms_vblank@wait-busy,Fail
> -kms_vblank@wait-forked,Fail
> -kms_vblank@wait-forked-busy,Fail
> -kms_vblank@wait-idle,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt
> index dcb24b835dc3..cd3d3b0befe4 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-flakes.txt
> @@ -1,6 +1,13 @@
>   # Board Name: sc7180-trogdor-lazor-limozeen-nots-r5
>   # Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
> -msm_mapping@shadow
> +msm/msm_mapping@shadow
> +
> +# Board Name: sc7180-trogdor-lazor-limozeen-nots-r5
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 100
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_lease@page-flip-implicit-plane
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-skips.txt b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-skips.txt
> index 1168c53acd2d..d06c3621300d 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sc7180-trogdor-lazor-limozeen-skips.txt
> @@ -4,7 +4,7 @@
>   # Skip driver specific tests
>   ^amdgpu.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sdm845-flakes.txt b/drivers/gpu/drm/ci/xfails/msm-sdm845-flakes.txt
> index 2c5f62b07632..2aa96b1241c3 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sdm845-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sdm845-flakes.txt
> @@ -1,19 +1,118 @@
>   # Board Name: sdm845-cheza-r3
>   # Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
>   kms_cursor_legacy@basic-flip-after-cursor-atomic
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@basic-flip-after-cursor-legacy
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@basic-flip-after-cursor-varying-size
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@basic-flip-before-cursor-varying-size
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@flip-vs-cursor-atomic-transitions
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@flip-vs-cursor-varying-size
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@short-flip-after-cursor-atomic-transitions
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@short-flip-after-cursor-toggle
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@short-flip-before-cursor-atomic-transitions
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
>   kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size
> -msm_shrink@copy-gpu-32
> -msm_shrink@copy-gpu-oom-32
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
> +msm/msm_shrink@copy-gpu-32
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-g0df7b9b97
> +# Linux Version: 6.9.0-rc7
> +msm/msm_shrink@copy-gpu-oom-32
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_cursor_legacy@short-flip-before-cursor-toggle
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_cursor_legacy@flip-vs-cursor-toggle
> +
> +# Board Name: sdm845-cheza-r3
> +# Bug Report: https://lore.kernel.org/linux-arm-msm/661483c8-ad82-400d-bcd8-e94986d20d7d@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +msm/msm_shrink@copy-mmap-oom-8
> diff --git a/drivers/gpu/drm/ci/xfails/msm-sdm845-skips.txt b/drivers/gpu/drm/ci/xfails/msm-sdm845-skips.txt
> index 5185212c8fb2..041a9637cc3e 100644
> --- a/drivers/gpu/drm/ci/xfails/msm-sdm845-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/msm-sdm845-skips.txt
> @@ -4,12 +4,12 @@ kms_bw.*
>   # Failing due to a bootloader/fw issue. The workaround in mesa CI involves these two patches
>   # https://gitlab.freedesktop.org/gfx-ci/linux/-/commit/4b49f902ec6f2bb382cbbf489870573f4b43371e
>   # https://gitlab.freedesktop.org/gfx-ci/linux/-/commit/38cdf4c5559771e2474ae0fecef8469f65147bc1
> -msm_mapping@*
> +msm/msm_mapping@*
>   
>   # Skip driver specific tests
>   ^amdgpu.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt b/drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt
> index f9b99bf27105..10689906da3a 100644
> --- a/drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/rockchip-rk3288-fails.txt
> @@ -4,5 +4,5 @@ dumb_buffer@invalid-bpp,Crash
>   dumb_buffer@map-invalid-size,Crash
>   dumb_buffer@map-uaf,Crash
>   dumb_buffer@map-valid,Crash
> -panfrost_prime@gem-prime-import,Crash
> +panfrost/panfrost_prime@gem-prime-import,Crash
>   tools_test@tools_test,Crash
> diff --git a/drivers/gpu/drm/ci/xfails/rockchip-rk3288-skips.txt b/drivers/gpu/drm/ci/xfails/rockchip-rk3288-skips.txt
> index 6d3757dca83b..b8cb31842323 100644
> --- a/drivers/gpu/drm/ci/xfails/rockchip-rk3288-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/rockchip-rk3288-skips.txt
> @@ -53,7 +53,7 @@ kms_pipe_crc_basic@disable-crc-after-crtc
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
>   ^v3d.*
>   ^vc4.*
> diff --git a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-fails.txt b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-fails.txt
> index 9ef460646d76..5b7d623f404b 100644
> --- a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-fails.txt
> @@ -4,5 +4,5 @@ dumb_buffer@invalid-bpp,Fail
>   dumb_buffer@map-invalid-size,Fail
>   dumb_buffer@map-uaf,Fail
>   dumb_buffer@map-valid,Fail
> -panfrost_prime@gem-prime-import,Fail
> +panfrost/panfrost_prime@gem-prime-import,Fail
>   tools_test@tools_test,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt
> index 742c27d9a598..ac4f8f7244d4 100644
> --- a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt
> @@ -1,6 +1,6 @@
>   # Board Name: rk3399-gru-kevin
>   # Bug Report: https://lore.kernel.org/dri-devel/5cc34a8b-c1fa-4744-9031-2d33ecf41011@collabora.com/T/#u
> +# Failure Rate: 50
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
> -# Failure Rate: 50
> -panfrost_submit@pan-unhandled-pagefault
> +panfrost/panfrost_submit@pan-unhandled-pagefault
> diff --git a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-skips.txt b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-skips.txt
> index 5c52b25b4213..743f3eeb2f80 100644
> --- a/drivers/gpu/drm/ci/xfails/rockchip-rk3399-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/rockchip-rk3399-skips.txt
> @@ -6,7 +6,7 @@ kms_cursor_legacy.*
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
>   ^v3d.*
>   ^vc4.*
> diff --git a/drivers/gpu/drm/ci/xfails/virtio_gpu-none-fails.txt b/drivers/gpu/drm/ci/xfails/virtio_gpu-none-fails.txt
> index fdf09fe11566..248943c2a738 100644
> --- a/drivers/gpu/drm/ci/xfails/virtio_gpu-none-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/virtio_gpu-none-fails.txt
> @@ -3,6 +3,70 @@ kms_addfb_basic@bo-too-small,Fail
>   kms_addfb_basic@size-max,Fail
>   kms_addfb_basic@too-high,Fail
>   kms_atomic_transition@plane-primary-toggle-with-vblank-wait,Fail
> +kms_bw@connected-linear-tiling-1-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-1-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-1-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-1-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-10-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-10-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-10-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-10-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-11-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-11-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-11-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-11-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-12-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-12-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-12-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-12-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-13-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-13-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-13-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-13-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-14-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-14-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-14-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-14-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-15-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-15-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-15-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-15-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-16-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-16-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-16-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-16-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-2-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-2-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-2-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-2-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-3-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-3-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-3-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-3-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-4-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-4-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-4-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-4-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-5-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-5-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-5-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-5-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-6-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-6-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-6-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-6-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-7-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-7-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-7-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-7-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-8-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-8-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-8-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-8-displays-3840x2160p,Fail
> +kms_bw@connected-linear-tiling-9-displays-1920x1080p,Fail
> +kms_bw@connected-linear-tiling-9-displays-2160x1440p,Fail
> +kms_bw@connected-linear-tiling-9-displays-2560x1440p,Fail
> +kms_bw@connected-linear-tiling-9-displays-3840x2160p,Fail
>   kms_bw@linear-tiling-1-displays-1920x1080p,Fail
>   kms_bw@linear-tiling-1-displays-2160x1440p,Fail
>   kms_bw@linear-tiling-1-displays-2560x1440p,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/virtio_gpu-none-skips.txt b/drivers/gpu/drm/ci/xfails/virtio_gpu-none-skips.txt
> index e0ca4fadb84f..8198905c5fd4 100644
> --- a/drivers/gpu/drm/ci/xfails/virtio_gpu-none-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/virtio_gpu-none-skips.txt
> @@ -7,9 +7,9 @@ kms_flip@flip-vs-suspend.*
>   
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
> diff --git a/drivers/gpu/drm/ci/xfails/vkms-none-fails.txt b/drivers/gpu/drm/ci/xfails/vkms-none-fails.txt
> index 691c383b21a0..8385b26073ed 100644
> --- a/drivers/gpu/drm/ci/xfails/vkms-none-fails.txt
> +++ b/drivers/gpu/drm/ci/xfails/vkms-none-fails.txt
> @@ -41,12 +41,8 @@ kms_cursor_legacy@flip-vs-cursor-crc-legacy,Fail
>   kms_cursor_legacy@flip-vs-cursor-legacy,Fail
>   kms_flip@flip-vs-modeset-vs-hang,Fail
>   kms_flip@flip-vs-panning-vs-hang,Fail
> -kms_flip@flip-vs-suspend,Timeout
> -kms_flip@flip-vs-suspend-interruptible,Timeout
> -kms_flip@plain-flip-fb-recreate,Fail
>   kms_lease@lease-uevent,Fail
>   kms_pipe_crc_basic@nonblocking-crc,Fail
> -kms_pipe_crc_basic@nonblocking-crc-frame-sequence,Fail
>   kms_writeback@writeback-check-output,Fail
>   kms_writeback@writeback-check-output-XRGB2101010,Fail
>   kms_writeback@writeback-fb-id,Fail
> diff --git a/drivers/gpu/drm/ci/xfails/vkms-none-flakes.txt b/drivers/gpu/drm/ci/xfails/vkms-none-flakes.txt
> index eeaa1d5825af..62428f3c8f31 100644
> --- a/drivers/gpu/drm/ci/xfails/vkms-none-flakes.txt
> +++ b/drivers/gpu/drm/ci/xfails/vkms-none-flakes.txt
> @@ -67,3 +67,24 @@ kms_flip@flip-vs-absolute-wf_vblank-interruptible
>   # IGT Version: 1.28-g0df7b9b97
>   # Linux Version: 6.9.0-rc7
>   kms_flip@flip-vs-blocking-wf-vblank
> +
> +# Board Name: vkms
> +# Bug Report: https://lore.kernel.org/dri-devel/61ed26af-062c-443c-9df2-d1ee319f3fb0@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_cursor_legacy@flip-vs-cursor-varying-size
> +
> +# Board Name: vkms
> +# Bug Report: https://lore.kernel.org/dri-devel/61ed26af-062c-443c-9df2-d1ee319f3fb0@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_flip@flip-vs-expired-vblank
> +
> +# Board Name: vkms
> +# Bug Report: https://lore.kernel.org/dri-devel/61ed26af-062c-443c-9df2-d1ee319f3fb0@collabora.com/T/#u
> +# Failure Rate: 50
> +# IGT Version: 1.28-gf13702b8e
> +# Linux Version: 6.10.0-rc5
> +kms_pipe_crc_basic@nonblocking-crc-frame-sequence
> diff --git a/drivers/gpu/drm/ci/xfails/vkms-none-skips.txt b/drivers/gpu/drm/ci/xfails/vkms-none-skips.txt
> index fd5d1271115f..6c1f2b2b6e53 100644
> --- a/drivers/gpu/drm/ci/xfails/vkms-none-skips.txt
> +++ b/drivers/gpu/drm/ci/xfails/vkms-none-skips.txt
> @@ -104,11 +104,112 @@ kms_cursor_crc@cursor-rapid-movement-256x85
>   # CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>   # CR2: 0000000000000078 CR3: 0000000109b38000 CR4: 0000000000350ef0
>   
> +kms_cursor_crc@cursor-onscreen-256x256
> +# Oops: Oops: 0000 [#1] PREEMPT SMP NOPTI
> +# CPU: 1 PID: 1913 Comm: kworker/u8:6 Not tainted 6.10.0-rc5-g8a28e73ebead #1
> +# Hardware name: ChromiumOS crosvm, BIOS 0
> +# Workqueue: vkms_composer vkms_composer_worker [vkms]
> +# RIP: 0010:compose_active_planes+0x344/0x4e0 [vkms]
> +# Code: 6a 34 0f 8e 91 fe ff ff 44 89 ea 48 8d 7c 24 48 e8 71 f0 ff ff 4b 8b 04 fc 48 8b 4c 24 50 48 8b 7c 24 40 48 8b 80 48 01 00 00 <48> 63 70 18 8b 40 20 48 89 f2 48 c1 e6 03 29 d0 48 8b 54 24 48 48
> +# RSP: 0018:ffffb477409fbd58 EFLAGS: 00010282
> +# RAX: 0000000000000000 RBX: 0000000000000002 RCX: ffff8b124a242000
> +# RDX: 00000000000000ff RSI: ffff8b124a243ff8 RDI: ffff8b124a244000
> +# RBP: 0000000000000002 R08: 0000000000000000 R09: 00000000000003ff
> +# R10: ffff8b124a244000 R11: 0000000000000000 R12: ffff8b1249282f30
> +# R13: 0000000000000002 R14: 0000000000000002 R15: 0000000000000000
> +# FS:  0000000000000000(0000) GS:ffff8b126bd00000(0000) knlGS:0000000000000000
> +# CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> +# CR2: 0000000000000018 CR3: 0000000107a86000 CR4: 0000000000350ef0
> +# Call Trace:
> +#  <TASK>
> +#  ? __die+0x1e/0x60
> +#  ? page_fault_oops+0x17b/0x4a0
> +#  ? exc_page_fault+0x6d/0x230
> +#  ? asm_exc_page_fault+0x26/0x30
> +#  ? compose_active_planes+0x344/0x4e0 [vkms]
> +#  ? compose_active_planes+0x32f/0x4e0 [vkms]
> +#  ? srso_return_thunk+0x5/0x5f
> +#  vkms_composer_worker+0x205/0x240 [vkms]
> +#  process_one_work+0x201/0x6c0
> +#  ? lock_is_held_type+0x9e/0x110
> +#  worker_thread+0x17e/0x350
> +#  ? __pfx_worker_thread+0x10/0x10
> +#  kthread+0xce/0x100
> +#  ? __pfx_kthread+0x10/0x10
> +#  ret_from_fork+0x2f/0x50
> +#  ? __pfx_kthread+0x10/0x10
> +#  ret_from_fork_asm+0x1a/0x30
> +#  </TASK>
> +# Modules linked in: vkms
> +# CR2: 0000000000000018
> +# ---[ end trace 0000000000000000 ]---
> +# RIP: 0010:compose_active_planes+0x344/0x4e0 [vkms]
> +# Code: 6a 34 0f 8e 91 fe ff ff 44 89 ea 48 8d 7c 24 48 e8 71 f0 ff ff 4b 8b 04 fc 48 8b 4c 24 50 48 8b 7c 24 40 48 8b 80 48 01 00 00 <48> 63 70 18 8b 40 20 48 89 f2 48 c1 e6 03 29 d0 48 8b 54 24 48 48
> +# RSP: 0018:ffffb477409fbd58 EFLAGS: 00010282
> +# RAX: 0000000000000000 RBX: 0000000000000002 RCX: ffff8b124a242000
> +# RDX: 00000000000000ff RSI: ffff8b124a243ff8 RDI: ffff8b124a244000
> +# RBP: 0000000000000002 R08: 0000000000000000 R09: 00000000000003ff
> +# R10: ffff8b124a244000 R11: 0000000000000000 R12: ffff8b1249282f30
> +# R13: 0000000000000002 R14: 0000000000000002 R15: 0000000000000000
> +# FS:  0000000000000000(0000) GS:ffff8b126bd00000(0000) knlGS:0000000000000000
> +# CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> +# CR2: 0000000000000018 CR3: 0000000107a86000 CR4: 0000000000350ef0
> +
> +kms_cursor_edge_walk@128x128-right-edge
> +# Oops: Oops: 0000 [#1] PREEMPT SMP NOPTI
> +# CPU: 0 PID: 1911 Comm: kworker/u8:3 Not tainted 6.10.0-rc5-g5e7a002eefe5 #1
> +# Hardware name: ChromiumOS crosvm, BIOS 0
> +# Workqueue: vkms_composer vkms_composer_worker [vkms]
> +# RIP: 0010:compose_active_planes+0x344/0x4e0 [vkms]
> +# Code: 6a 34 0f 8e 91 fe ff ff 44 89 ea 48 8d 7c 24 48 e8 71 f0 ff ff 4b 8b 04 fc 48 8b 4c 24 50 48 8b 7c 24 40 48 8b 80 48 01 00 00 <48> 63 70 18 8b 40 20 48 89 f2 48 c1 e6 03 29 d0 48 8b 54 24 48 48
> +# RSP: 0018:ffffb2f040a43d58 EFLAGS: 00010282
> +# RAX: 0000000000000000 RBX: 0000000000000002 RCX: ffffa2c181792000
> +# RDX: 0000000000000000 RSI: ffffa2c181793ff8 RDI: ffffa2c181790000
> +# RBP: 0000000000000031 R08: 0000000000000000 R09: 00000000000003ff
> +# R10: ffffa2c181790000 R11: 0000000000000000 R12: ffffa2c1814fa810
> +# R13: 0000000000000031 R14: 0000000000000031 R15: 0000000000000000
> +# FS:  0000000000000000(0000) GS:ffffa2c1abc00000(0000) knlGS:0000000000000000
> +# CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> +# CR2: 0000000000000018 CR3: 0000000106768000 CR4: 0000000000350ef0
> +# Call Trace:
> +#  <TASK>
> +#  ? __die+0x1e/0x60
> +#  ? page_fault_oops+0x17b/0x4a0
> +#  ? srso_return_thunk+0x5/0x5f
> +#  ? mark_held_locks+0x49/0x80
> +#  ? exc_page_fault+0x6d/0x230
> +#  ? asm_exc_page_fault+0x26/0x30
> +#  ? compose_active_planes+0x344/0x4e0 [vkms]
> +#  ? compose_active_planes+0x32f/0x4e0 [vkms]
> +#  ? srso_return_thunk+0x5/0x5f
> +#  vkms_composer_worker+0x205/0x240 [vkms]
> +#  process_one_work+0x201/0x6c0
> +#  ? lock_is_held_type+0x9e/0x110
> +#  worker_thread+0x17e/0x350
> +#  ? __pfx_worker_thread+0x10/0x10
> +#  kthread+0xce/0x100
> +#  ? __pfx_kthread+0x10/0x10
> +#  ret_from_fork+0x2f/0x50
> +#  ? __pfx_kthread+0x10/0x10
> +#  ret_from_fork_asm+0x1a/0x30
> +#  </TASK>
> +# Modules linked in: vkms
> +# CR2: 0000000000000018
> +# ---[ end trace 0000000000000000 ]---
> +# RIP: 0010:compose_active_planes+0x344/0x4e0 [vkms]
> +# Code: 6a 34 0f 8e 91 fe ff ff 44 89 ea 48 8d 7c 24 48 e8 71 f0 ff ff 4b 8b 04 fc 48 8b 4c 24 50 48 8b 7c 24 40 48 8b 80 48 01 00 00 <48> 63 70 18 8b 40 20 48 89 f2 48 c1 e6 03 29 d0 48 8b 54 24 48 48
> +# RSP: 0018:ffffb2f040a43d58 EFLAGS: 00010282
> +# RAX: 0000000000000000 RBX: 0000000000000002 RCX: ffffa2c181792000
> +# RDX: 0000000000000000 RSI: ffffa2c181793ff8 RDI: ffffa2c181790000
> +# RBP: 0000000000000031 R08: 0000000000000000 R09: 00000000000003ff
> +# R10: ffffa2c181790000 R11: 0000000000000000 R12: ffffa2c1814fa810
> +# R13: 0000000000000031 R14: 0000000000000031 R15: 000000000000
> +
>   # Skip driver specific tests
>   ^amdgpu.*
> -msm_.*
> +^msm.*
>   nouveau_.*
> -panfrost_.*
> +^panfrost.*
>   ^v3d.*
>   ^vc4.*
>   ^vmwgfx*
