Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347EEC267D0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 18:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218DD10E300;
	Fri, 31 Oct 2025 17:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="AOo/BhYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E13C710E302
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 17:54:03 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-64088c6b309so944957a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 10:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1761933242; x=1762538042; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=i3GrUtY0OMATUSUqtJmJb4a9B6MNgBENoG5uhIwzOL4=;
 b=AOo/BhYQ0ZHycXX2CofCoyZrdot/CkGTRlH/eshi5PLkQgKf44iiSL8OmbMcXacFfc
 QtvmZiWMt3L6fhLz/0ZfrRNZlzr8P0AmJ0Ve56svAfuZCSnec62RzgfqG5mTa2XReD09
 BOafqu5Sy+FpYwvDmm5bdyAmjlD1p+7hhVf/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761933242; x=1762538042;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=i3GrUtY0OMATUSUqtJmJb4a9B6MNgBENoG5uhIwzOL4=;
 b=i/luV1Hc3AuXEQy9s2K/Ivh5Cvnca2YtmgljyhjArb3VgtYIQcsGLvrbKOB1tXD+YQ
 EADFZx7hH3ExvTWiOIsxn8mqV3VbHK/VlGUiKIh5W8qx3Ks7H9b77oSjaNx9H+Dp7u6x
 JliSCuu+XSktUCTsIheI/3Vm+rmiA+1JqNkF0lPOHIQVb1wrUpvokW+MkdkX5e8MgTPf
 2V1gst8FgzltywS21Eer3Ms48UtJfeCQlhP3JfTYyNN8heaHqB//IPMWBNLtg6qfZmC+
 I47fu1cynttcT1PdbjZksax5Wy8kF2F1CF91sNZPQa1jB08WcS0T9Csz4+BrhZyfaXTF
 dhfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2+pkrSa/y4LiLU/yi9nGeHTiZFhRZCl7WR6L2tvk6K6mQGOambEvedODVdRfabV+vi5rHaFF5Thk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz0sbjhmG1Yuhi/ow5wyV1McpHYZ2b2Y3Soe8eAosLGRlZqKmUq
 8HlNL3b5QfrzzDSSMdIkz1tYjj4kcxVcsM8ikjLGxhMCEwOlmHKNKOJuoZXah/zMgAStI1QVnTc
 GFVFI
X-Gm-Gg: ASbGnct8KYoEf1J0YG9CzM/YeKHJcmyTcEOzLjzDmQm23Og+fRGFsyVwY/8SJfue5Md
 SjLvZ+yWKVmuoZxou/VS0MtS5nRw+mji/SzJFminKrs48o7QZSzYWWIdi80xTh1IUGolWE5k/P9
 mmI1sP/f93ysftCcNmhpjcJbAny7Vp8ozJLe+70aNOwESf7m7v8Pt0KKNpK5eAamGhfodlkDEdR
 WfTMgR+UXZOAeOil7e0KG2tdpdES1o6px9AFuj+5A74uch7FXK3QU5KrmO8Env9myf1p+YZVMj8
 cdKxvNECMxsUXBNHnZoppdoZudT68KRc6blsyx3r6L2+Vn8+qUDtCfodFBln2vewEwa3MEW+3eq
 A07nEpISgBLS+Y2I+ls4Qk7JjPBSxz8auvGcnVI5JUVcOacHaPnXK1lDRy6ZhI/vf9b3NquxPwb
 /5RSH4uHaISAo=
X-Google-Smtp-Source: AGHT+IHJX3ptK+sjXIQCqq9ttCTGYzxhPdvlsTonY5tgYEav/nhfRkG6YME/qXED7xlnug3Bjzq/8g==
X-Received: by 2002:a05:6402:13c5:b0:640:7690:997e with SMTP id
 4fb4d7f45d1cf-64076f6be63mr3905208a12.3.1761933242036; 
 Fri, 31 Oct 2025 10:54:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6407b448ed9sm2118179a12.35.2025.10.31.10.54.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Oct 2025 10:54:01 -0700 (PDT)
Date: Fri, 31 Oct 2025 18:53:59 +0100
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>,
 dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PULL] drm-misc-next
Message-ID: <aQT3t-Ne-2mTnZD7@phenom.ffwll.local>
References: <32b43261-3c99-49d9-92ee-615ada1d01e8@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <32b43261-3c99-49d9-92ee-615ada1d01e8@lankhorst.se>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Tue, Oct 28, 2025 at 02:14:00PM +0100, Maarten Lankhorst wrote:
> Hi Dave, Simona,
> 
> Next pull-request for v6.19-rc1!
> 
> Kind regards,
> ~Maarten Lankhorst
> 
> drm-misc-next-2025-10-28:
> drm-misc-next for v6.19-rc1:
> 
> UAPI Changes:
> 
> Cross-subsystem Changes:
> - Update DT bindings for renesas and powervr-rogue.
> - Update MAINTAINERS email and add spsc_queue.
> 
> Core Changes:
> - Allow ttm page protection flags on risc-v.
> - Move freeing of drm client memory to driver.
> 
> Driver Changes:
> - Assorted small fixes and updates to qaic, ivpu, st7571-i2c, gud,
>   amdxdna.
> - Allow configuration of vkms' display through configfs.
> - Add Arm Ethos-U65/U85 accel driver.
> The following changes since commit 098456f3141bf9e0c0d8973695ca38a03465ccd6:
> 
>   Merge tag 'drm-misc-next-2025-10-21' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next (2025-10-24 13:25:20 +0200)
> 
> are available in the Git repository at:
> 
>   https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2025-10-28
> 
> for you to fetch changes up to 4f9ffd2c80a2fa09dcc8dfa0482cb7e0fb6fcf6c:
> 
>   drm/ttm: add pgprot handling for RISC-V (2025-10-28 09:19:46 +0100)

Pulled into drm-next, thanks!
-Sima

> 
> ----------------------------------------------------------------
> drm-misc-next for v6.19-rc1:
> 
> UAPI Changes:
> 
> Cross-subsystem Changes:
> - Update DT bindings for renesas and powervr-rogue.
> - Update MAINTAINERS email and add spsc_queue.
> 
> Core Changes:
> - Allow ttm page protection flags on risc-v.
> - Move freeing of drm client memory to driver.
> 
> Driver Changes:
> - Assorted small fixes and updates to qaic, ivpu, st7571-i2c, gud,
>   amdxdna.
> - Allow configuration of vkms' display through configfs.
> - Add Arm Ethos-U65/U85 accel driver.
> 
> ----------------------------------------------------------------
> Aswin Venkatesan (1):
>       accel/qaic: Fix comment
> 
> Chen-Yu Tsai (1):
>       MAINTAINERS: Update Chen-Yu's email address
> 
> Icenowy Zheng (1):
>       drm/ttm: add pgprot handling for RISC-V
> 
> José Expósito (6):
>       drm/vkms: Expose device creation and destruction
>       drm/vkms: Allow to configure the default device creation
>       drm/vkms: Remove completed task from the TODO list
>       drm/vkms: Allow to configure connector status
>       drm/vkms: Allow to update the connector status
>       drm/vkms: Allow to configure connector status via configfs
> 
> Lizhi Hou (2):
>       accel/amdxdna: Fix incorrect return value in aie2_hwctx_sync_debug_bo()
>       accel/amdxdna: Fix uninitialized return value
> 
> Louis Chauvet (10):
>       drm/vkms: Add and remove VKMS instances via configfs
>       drm/vkms: Allow to configure multiple planes via configfs
>       drm/vkms: Allow to configure the plane type via configfs
>       drm/vkms: Allow to configure multiple CRTCs via configfs
>       drm/vkms: Allow to configure CRTC writeback support via configfs
>       drm/vkms: Allow to attach planes and CRTCs via configfs
>       drm/vkms: Allow to configure multiple encoders via configfs
>       drm/vkms: Allow to attach encoders and CRTCs via configfs
>       drm/vkms: Allow to configure multiple connectors via configfs
>       drm/vkms: Allow to attach connectors and encoders via configfs
> 
> Maciej Falkowski (1):
>       accel/ivpu: Add support for Nova Lake's NPU
> 
> Marcus Folkesson (1):
>       drm/sitronix/st7571-i2c: remove unneeded semicolon
> 
> Marek Vasut (4):
>       dt-bindings: gpu: img,powervr-rogue: Drop useless power domains items
>       dt-bindings: gpu: img,powervr-rogue: Rework the allOf section
>       dt-bindings: display: bridge: renesas,dsi-csi2-tx: Allow panel@ subnode
>       dt-bindings: gpu: img,powervr-rogue: Document GX6250 GPU in Renesas R-Car M3-W/M3-W+
> 
> Philipp Stanner (1):
>       MAINTAINERS: Maintain spsc_queue through drm_sched
> 
> Rob Herring (Arm) (2):
>       dt-bindings: npu: Add Arm Ethos-U65/U85
>       accel: Add Arm Ethos-U NPU driver
> 
> Ruben Wauters (1):
>       drm/gud: rearrange gud_probe() to prepare for function splitting
> 
> Thomas Zimmermann (7):
>       drm/sysfb: Use new CRTC state in begin_fb_access
>       drm/client: Add client free callback to unprepare fb_helper
>       drm/log: Do not hold lock across drm_client_release()
>       drm/log: Add free callback
>       drm/client: Do not free client memory by default
>       Merge drm/drm-next into drm-misc-next
>       drm/gem-atomic: Reset plane state to NULL if allocation failed
> 
> Troy Hanson (1):
>       accel/qaic: Rename constant for clarity
> 
> Youssef Samir (1):
>       accel/qaic: Update the sahara image table for AIC200
> 
>  .mailmap                                           |   1 +
>  .../display/bridge/renesas,dsi-csi2-tx.yaml        |  53 +-
>  .../devicetree/bindings/gpu/img,powervr-rogue.yaml |  86 ++-
>  .../devicetree/bindings/npu/arm,ethos.yaml         |  79 ++
>  Documentation/gpu/vkms.rst                         | 100 ++-
>  MAINTAINERS                                        |  18 +-
>  drivers/accel/Kconfig                              |   1 +
>  drivers/accel/Makefile                             |   1 +
>  drivers/accel/amdxdna/aie2_ctx.c                   |   2 +-
>  drivers/accel/amdxdna/aie2_pci.c                   |   4 +-
>  drivers/accel/ethosu/Kconfig                       |  11 +
>  drivers/accel/ethosu/Makefile                      |   4 +
>  drivers/accel/ethosu/ethosu_device.h               | 197 +++++
>  drivers/accel/ethosu/ethosu_drv.c                  | 403 ++++++++++
>  drivers/accel/ethosu/ethosu_drv.h                  |  15 +
>  drivers/accel/ethosu/ethosu_gem.c                  | 704 +++++++++++++++++
>  drivers/accel/ethosu/ethosu_gem.h                  |  46 ++
>  drivers/accel/ethosu/ethosu_job.c                  | 496 ++++++++++++
>  drivers/accel/ethosu/ethosu_job.h                  |  40 +
>  drivers/accel/ivpu/ivpu_drv.c                      |   1 +
>  drivers/accel/ivpu/ivpu_drv.h                      |   4 +
>  drivers/accel/ivpu/ivpu_fw.c                       |   2 +
>  drivers/accel/ivpu/ivpu_hw_ip.c                    |  10 +
>  drivers/accel/qaic/qaic_control.c                  |  14 +-
>  drivers/accel/qaic/qaic_data.c                     |   2 +-
>  drivers/accel/qaic/sahara.c                        |   5 +-
>  drivers/gpu/drm/armada/armada_fbdev.c              |   2 -
>  drivers/gpu/drm/clients/drm_fbdev_client.c         |  17 +-
>  drivers/gpu/drm/clients/drm_log.c                  |  16 +-
>  drivers/gpu/drm/drm_client.c                       |   4 +
>  drivers/gpu/drm/drm_client_event.c                 |   9 +-
>  drivers/gpu/drm/drm_fbdev_dma.c                    |   4 -
>  drivers/gpu/drm/drm_fbdev_shmem.c                  |   2 -
>  drivers/gpu/drm/drm_fbdev_ttm.c                    |   2 -
>  drivers/gpu/drm/drm_gem_atomic_helper.c            |   2 -
>  drivers/gpu/drm/exynos/exynos_drm_fbdev.c          |   2 -
>  drivers/gpu/drm/gma500/fbdev.c                     |   3 -
>  drivers/gpu/drm/gud/gud_drv.c                      |  45 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c         |   2 -
>  drivers/gpu/drm/msm/msm_fbdev.c                    |   2 -
>  drivers/gpu/drm/omapdrm/omap_fbdev.c               |   2 -
>  drivers/gpu/drm/radeon/radeon_fbdev.c              |   2 -
>  drivers/gpu/drm/sitronix/st7571-i2c.c              |   2 +-
>  drivers/gpu/drm/sysfb/drm_sysfb_modeset.c          |   2 +-
>  drivers/gpu/drm/tegra/fbdev.c                      |   2 -
>  drivers/gpu/drm/ttm/ttm_module.c                   |   3 +-
>  drivers/gpu/drm/vkms/Kconfig                       |   1 +
>  drivers/gpu/drm/vkms/Makefile                      |   3 +-
>  drivers/gpu/drm/vkms/tests/vkms_config_test.c      |  24 +
>  drivers/gpu/drm/vkms/vkms_config.c                 |   8 +-
>  drivers/gpu/drm/vkms/vkms_config.h                 |  26 +
>  drivers/gpu/drm/vkms/vkms_configfs.c               | 833 +++++++++++++++++++++
>  drivers/gpu/drm/vkms/vkms_configfs.h               |   8 +
>  drivers/gpu/drm/vkms/vkms_connector.c              |  35 +
>  drivers/gpu/drm/vkms/vkms_connector.h              |   9 +
>  drivers/gpu/drm/vkms/vkms_drv.c                    |  18 +-
>  drivers/gpu/drm/vkms/vkms_drv.h                    |  20 +
>  include/drm/drm_client.h                           |  10 +
>  include/uapi/drm/ethosu_accel.h                    | 261 +++++++
>  59 files changed, 3553 insertions(+), 127 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/npu/arm,ethos.yaml
>  create mode 100644 drivers/accel/ethosu/Kconfig
>  create mode 100644 drivers/accel/ethosu/Makefile
>  create mode 100644 drivers/accel/ethosu/ethosu_device.h
>  create mode 100644 drivers/accel/ethosu/ethosu_drv.c
>  create mode 100644 drivers/accel/ethosu/ethosu_drv.h
>  create mode 100644 drivers/accel/ethosu/ethosu_gem.c
>  create mode 100644 drivers/accel/ethosu/ethosu_gem.h
>  create mode 100644 drivers/accel/ethosu/ethosu_job.c
>  create mode 100644 drivers/accel/ethosu/ethosu_job.h
>  create mode 100644 drivers/gpu/drm/vkms/vkms_configfs.c
>  create mode 100644 drivers/gpu/drm/vkms/vkms_configfs.h
>  create mode 100644 include/uapi/drm/ethosu_accel.h

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
