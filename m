Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF4689FA9D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 16:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4340B10EC98;
	Wed, 10 Apr 2024 14:54:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fAxKDzd9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4809910F05A;
 Wed, 10 Apr 2024 14:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712760860; x=1744296860;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rhBeRkhxfjSgqt9tZhUNslQE6IrnXl6wO0Q4Tvl1m3I=;
 b=fAxKDzd9pAShz+h2rnU4szxJzE36Ck+v0KFzeUGrheszu7y0RPGwrp4J
 9YbSY/HMLDLtQpaM10FHKiAL9SYWSbF+jJIbiCV/vx6qZO4e4MojW8rvg
 RCjoNjQXl9h6piQf8Moz+fSwcVCJbH5eP31dHtbhlk9xWNzmu5DJaxAZD
 rlm7tRGNcFpEouup8jHGPTvlyrC6FVIxvRyB27eNpVRV9yG0FC7NRMary
 6/+iVG3pmube5nyVH+Rznq2S2Pt61f01iu/5Ad7uRZajEWrZo3I8NpBG0
 oWmDyw15wOSKiyFQHUf063yAwZw67lvsVrTIXhbJbCXu5lzNTiRaSaWma A==;
X-CSE-ConnectionGUID: NWzADg6FRxiMjac/cMFuvw==
X-CSE-MsgGUID: voCNtPyfQwCoM8MF/gf4JQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="11908497"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="11908497"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 07:54:19 -0700
X-CSE-ConnectionGUID: lg0NvxWKTlau+ANvs2OBaQ==
X-CSE-MsgGUID: /9FGrQzjTi28GKpizR4pZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20671931"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.4.197])
 ([10.246.4.197])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 07:54:13 -0700
Message-ID: <ead283c6-d9ac-4711-a066-45ac5e7b45a4@intel.com>
Date: Wed, 10 Apr 2024 16:54:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/print: drop include debugfs.h and include where
 needed
To: Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, Karol Herbst
 <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>, Alex Deucher
 <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Huang Rui <ray.huang@amd.com>, nouveau@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20240410141434.157908-1-jani.nikula@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20240410141434.157908-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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



On 10.04.2024 16:14, Jani Nikula wrote:
> Surprisingly many places depend on debugfs.h to be included via
> drm_print.h. Fix them.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: "Christian König" <christian.koenig@amd.com>
> Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
> Cc: Huang Rui <ray.huang@amd.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Cc: nouveau@lists.freedesktop.org
> Cc: amd-gfx@lists.freedesktop.org
> ---
>   drivers/gpu/drm/bridge/panel.c           | 2 ++
>   drivers/gpu/drm/drm_print.c              | 6 +++---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 1 +
>   drivers/gpu/drm/nouveau/dispnv50/crc.c   | 2 ++
>   drivers/gpu/drm/radeon/r100.c            | 1 +
>   drivers/gpu/drm/radeon/r300.c            | 1 +
>   drivers/gpu/drm/radeon/r420.c            | 1 +
>   drivers/gpu/drm/radeon/r600.c            | 3 ++-
>   drivers/gpu/drm/radeon/radeon_fence.c    | 1 +
>   drivers/gpu/drm/radeon/radeon_gem.c      | 1 +
>   drivers/gpu/drm/radeon/radeon_ib.c       | 2 ++
>   drivers/gpu/drm/radeon/radeon_pm.c       | 1 +
>   drivers/gpu/drm/radeon/radeon_ring.c     | 2 ++
>   drivers/gpu/drm/radeon/radeon_ttm.c      | 1 +
>   drivers/gpu/drm/radeon/rs400.c           | 1 +
>   drivers/gpu/drm/radeon/rv515.c           | 1 +
>   drivers/gpu/drm/ttm/ttm_device.c         | 1 +
>   drivers/gpu/drm/ttm/ttm_resource.c       | 3 ++-
>   drivers/gpu/drm/ttm/ttm_tt.c             | 5 +++--
>   include/drm/drm_print.h                  | 2 +-
>   20 files changed, 30 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
> index 7f41525f7a6e..32506524d9a2 100644
> --- a/drivers/gpu/drm/bridge/panel.c
> +++ b/drivers/gpu/drm/bridge/panel.c
> @@ -4,6 +4,8 @@
>    * Copyright (C) 2017 Broadcom
>    */
>   
> +#include <linux/debugfs.h>
> +
>   #include <drm/drm_atomic_helper.h>
>   #include <drm/drm_bridge.h>
>   #include <drm/drm_connector.h>
> diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
> index 699b7dbffd7b..cf2efb44722c 100644
> --- a/drivers/gpu/drm/drm_print.c
> +++ b/drivers/gpu/drm/drm_print.c
> @@ -23,13 +23,13 @@
>    * Rob Clark <robdclark@gmail.com>
>    */
>   
> -#include <linux/stdarg.h>
> -
> +#include <linux/debugfs.h>
> +#include <linux/dynamic_debug.h>
>   #include <linux/io.h>
>   #include <linux/moduleparam.h>
>   #include <linux/seq_file.h>
>   #include <linux/slab.h>
> -#include <linux/dynamic_debug.h>
> +#include <linux/stdarg.h>
>   
>   #include <drm/drm.h>
>   #include <drm/drm_drv.h>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index e61e9c1b8947..84748add186a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -22,6 +22,7 @@
>    *
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/firmware.h>
>   
>   #include "i915_drv.h"
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/crc.c b/drivers/gpu/drm/nouveau/dispnv50/crc.c
> index 9c942fbd836d..5936b6b3b15d 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/crc.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/crc.c
> @@ -1,5 +1,7 @@
>   // SPDX-License-Identifier: MIT
> +#include <linux/debugfs.h>
>   #include <linux/string.h>
> +
>   #include <drm/drm_crtc.h>
>   #include <drm/drm_atomic_helper.h>
>   #include <drm/drm_vblank.h>
> diff --git a/drivers/gpu/drm/radeon/r100.c b/drivers/gpu/drm/radeon/r100.c
> index 86b8b770af19..0b1e19345f43 100644
> --- a/drivers/gpu/drm/radeon/r100.c
> +++ b/drivers/gpu/drm/radeon/r100.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/firmware.h>
>   #include <linux/module.h>
>   #include <linux/pci.h>
> diff --git a/drivers/gpu/drm/radeon/r300.c b/drivers/gpu/drm/radeon/r300.c
> index 25201b9a5aae..1620f534f55f 100644
> --- a/drivers/gpu/drm/radeon/r300.c
> +++ b/drivers/gpu/drm/radeon/r300.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/pci.h>
>   #include <linux/seq_file.h>
>   #include <linux/slab.h>
> diff --git a/drivers/gpu/drm/radeon/r420.c b/drivers/gpu/drm/radeon/r420.c
> index eae8a6389f5e..a979662eaa73 100644
> --- a/drivers/gpu/drm/radeon/r420.c
> +++ b/drivers/gpu/drm/radeon/r420.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/pci.h>
>   #include <linux/seq_file.h>
>   #include <linux/slab.h>
> diff --git a/drivers/gpu/drm/radeon/r600.c b/drivers/gpu/drm/radeon/r600.c
> index b5e97d95a19f..087d41e370fd 100644
> --- a/drivers/gpu/drm/radeon/r600.c
> +++ b/drivers/gpu/drm/radeon/r600.c
> @@ -26,11 +26,12 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/firmware.h>
>   #include <linux/module.h>
>   #include <linux/pci.h>
> -#include <linux/slab.h>
>   #include <linux/seq_file.h>
> +#include <linux/slab.h>
>   
>   #include <drm/drm_device.h>
>   #include <drm/drm_vblank.h>
> diff --git a/drivers/gpu/drm/radeon/radeon_fence.c b/drivers/gpu/drm/radeon/radeon_fence.c
> index 9ebe4a0b9a6c..4fb780d96f32 100644
> --- a/drivers/gpu/drm/radeon/radeon_fence.c
> +++ b/drivers/gpu/drm/radeon/radeon_fence.c
> @@ -30,6 +30,7 @@
>    */
>   
>   #include <linux/atomic.h>
> +#include <linux/debugfs.h>
>   #include <linux/firmware.h>
>   #include <linux/kref.h>
>   #include <linux/sched/signal.h>
> diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
> index 3fec3acdaf28..2ef201a072f1 100644
> --- a/drivers/gpu/drm/radeon/radeon_gem.c
> +++ b/drivers/gpu/drm/radeon/radeon_gem.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/iosys-map.h>
>   #include <linux/pci.h>
>   
> diff --git a/drivers/gpu/drm/radeon/radeon_ib.c b/drivers/gpu/drm/radeon/radeon_ib.c
> index fb9ecf5dbe2b..63d914f3414d 100644
> --- a/drivers/gpu/drm/radeon/radeon_ib.c
> +++ b/drivers/gpu/drm/radeon/radeon_ib.c
> @@ -27,6 +27,8 @@
>    *          Christian König
>    */
>   
> +#include <linux/debugfs.h>
> +
>   #include <drm/drm_file.h>
>   
>   #include "radeon.h"
> diff --git a/drivers/gpu/drm/radeon/radeon_pm.c b/drivers/gpu/drm/radeon/radeon_pm.c
> index 4482c8c5f5ce..2d9d9f46f243 100644
> --- a/drivers/gpu/drm/radeon/radeon_pm.c
> +++ b/drivers/gpu/drm/radeon/radeon_pm.c
> @@ -21,6 +21,7 @@
>    *          Alex Deucher <alexdeucher@gmail.com>
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/hwmon-sysfs.h>
>   #include <linux/hwmon.h>
>   #include <linux/pci.h>
> diff --git a/drivers/gpu/drm/radeon/radeon_ring.c b/drivers/gpu/drm/radeon/radeon_ring.c
> index 38048593bb4a..8d1d458286a8 100644
> --- a/drivers/gpu/drm/radeon/radeon_ring.c
> +++ b/drivers/gpu/drm/radeon/radeon_ring.c
> @@ -27,6 +27,8 @@
>    *          Christian König
>    */
>   
> +#include <linux/debugfs.h>
> +
>   #include <drm/drm_device.h>
>   #include <drm/drm_file.h>
>   
> diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
> index 2078b0000e22..5c65b6dfb99a 100644
> --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> @@ -30,6 +30,7 @@
>    *    Dave Airlie
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/dma-mapping.h>
>   #include <linux/pagemap.h>
>   #include <linux/pci.h>
> diff --git a/drivers/gpu/drm/radeon/rs400.c b/drivers/gpu/drm/radeon/rs400.c
> index d7f552d441ab..d4d1501e6576 100644
> --- a/drivers/gpu/drm/radeon/rs400.c
> +++ b/drivers/gpu/drm/radeon/rs400.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/seq_file.h>
>   #include <linux/slab.h>
>   
> diff --git a/drivers/gpu/drm/radeon/rv515.c b/drivers/gpu/drm/radeon/rv515.c
> index 79709d26d983..bbc6ccabf788 100644
> --- a/drivers/gpu/drm/radeon/rv515.c
> +++ b/drivers/gpu/drm/radeon/rv515.c
> @@ -26,6 +26,7 @@
>    *          Jerome Glisse
>    */
>   
> +#include <linux/debugfs.h>
>   #include <linux/seq_file.h>
>   #include <linux/slab.h>
>   
> diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_device.c
> index 76027960054f..434cf0258000 100644
> --- a/drivers/gpu/drm/ttm/ttm_device.c
> +++ b/drivers/gpu/drm/ttm/ttm_device.c
> @@ -27,6 +27,7 @@
>   
>   #define pr_fmt(fmt) "[TTM DEVICE] " fmt
>   
> +#include <linux/debugfs.h>
>   #include <linux/mm.h>
>   
>   #include <drm/ttm/ttm_bo.h>
> diff --git a/drivers/gpu/drm/ttm/ttm_resource.c b/drivers/gpu/drm/ttm/ttm_resource.c
> index be8d286513f9..4a66b851b67d 100644
> --- a/drivers/gpu/drm/ttm/ttm_resource.c
> +++ b/drivers/gpu/drm/ttm/ttm_resource.c
> @@ -22,8 +22,9 @@
>    * Authors: Christian König
>    */
>   
> -#include <linux/iosys-map.h>
> +#include <linux/debugfs.h>
>   #include <linux/io-mapping.h>
> +#include <linux/iosys-map.h>
>   #include <linux/scatterlist.h>
>   
>   #include <drm/ttm/ttm_bo.h>
> diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
> index 578a7c37f00b..474fe7aad2a0 100644
> --- a/drivers/gpu/drm/ttm/ttm_tt.c
> +++ b/drivers/gpu/drm/ttm/ttm_tt.c
> @@ -32,10 +32,11 @@
>   #define pr_fmt(fmt) "[TTM] " fmt
>   
>   #include <linux/cc_platform.h>
> -#include <linux/sched.h>
> -#include <linux/shmem_fs.h>
> +#include <linux/debugfs.h>
>   #include <linux/file.h>
>   #include <linux/module.h>
> +#include <linux/sched.h>
> +#include <linux/shmem_fs.h>
>   #include <drm/drm_cache.h>
>   #include <drm/drm_device.h>
>   #include <drm/drm_util.h>
> diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
> index 9cc473e5d353..561c3b96b6fd 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -30,11 +30,11 @@
>   #include <linux/printk.h>
>   #include <linux/seq_file.h>
>   #include <linux/device.h>
> -#include <linux/debugfs.h>
>   #include <linux/dynamic_debug.h>
>   
>   #include <drm/drm.h>
>   
> +struct debugfs_regset32;
>   struct drm_device;
>   
>   /* Do *not* use outside of drm_print.[ch]! */

