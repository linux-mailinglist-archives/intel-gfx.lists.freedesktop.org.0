Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB64FCCF035
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 09:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA5810EED4;
	Fri, 19 Dec 2025 08:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="BBOHpXIB";
	dkim=pass (2048-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="MCLBxV55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C18810ED39
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Dec 2025 08:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1766133889;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=upMiXO1bVUKRVMOQaCC6tvSV7uMV7Xger8IN4wXmILU=;
 b=BBOHpXIBQq2FePl+CeD2pU9a4P87hFhp46g0pc2UsHskcqY7Rsjun7ca9HedDVjjhRJJ+z
 y7LlwgfvAJPqG7RnyQEsuOWFHQkJ++JfmDe6V+xzMowifNlG4bEE3NHM7vHlWzHPX3fw/N
 z9YjBjLgiTOdknyGry8VURTIWDGBrgk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-nc3TCK48PauW20BN0aEiYA-1; Fri, 19 Dec 2025 03:44:47 -0500
X-MC-Unique: nc3TCK48PauW20BN0aEiYA-1
X-Mimecast-MFC-AGG-ID: nc3TCK48PauW20BN0aEiYA_1766133886
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-477cabba65dso8650915e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Dec 2025 00:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; s=google; t=1766133886; x=1766738686; darn=lists.freedesktop.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=upMiXO1bVUKRVMOQaCC6tvSV7uMV7Xger8IN4wXmILU=;
 b=MCLBxV55p5uQ6GxCCeyatSCgzNN3BZQIZGoAmDJlVeaat3oEFYnAG5gAZfT8sbHB60
 xCfTSYVeH7jqcoKBpcwczWE23g4Ym2TMjYo6sRZXnkD0MH2Sh4sCNcCLnR/rMcxEytHC
 oFjuZI1j5igfeHX4TJOcx9PACNNXsYisKPns0SmdjOQOqZ4k2aqILukr0i0BaiTnEqgv
 DNx7uLV9wRhYikmXhAijN4bcs28kTZpJmo/VOvD5WqaRx5X/tRwdyQfKqMIz0rUSPohD
 4DTMTVcxJxA1Pxv1v2qcgy7negEtKfzjd3QHKkFp3T8cKFB4qVrWdxnH2EYjB+YhQMV8
 oV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766133886; x=1766738686;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=upMiXO1bVUKRVMOQaCC6tvSV7uMV7Xger8IN4wXmILU=;
 b=b9QrJSiJu6hiHVQoMLMHMh9inNGAGs2LkRe+CTGYJ4rq/PMlg990S0IimvXVV/D9an
 YmAPnk75iMw8/QSzDKmXY0Pu83uM8iwfGm5enORtE9VEbSpguCStbxBK2oBbT1fyT0ku
 caxkuTk4tiNGB5lKU3zka5gCuiYoCncVnO9a/EkHs5UrJ4wbtGE1EPOui2KfAArOFiUV
 a3BMAMpkgUeNfdVOZ2ikIxv8vfH5KKUEy714MspYGJuvaYqZ3+ywUuKrOlureT5kjBdK
 LHe4jUgd7DmCWiLa3Etm3vpwa1aTEzEzPQKcT/7cUU81nKs+nRwBR/MPPJWnIcWTpBas
 G5zA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxr2QI2rfL5e/KCYuiXlkhRPUmJjc+FWZt9Qem8+doRq2Jo+xHKmsMEaq3Wb4BwAGvFgmA+8aWgLU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YynVCJYviqdTKFiHGVnxt4T4vWBN1Pdnkra285YhisOtBY6/+1f
 2RqWfdDGatdoI79vlCNBVWwRVqlsgTix34N+y+2yqH0wRuUVD91HQwwyFwTwdbL1UX97+EmzhSU
 qqB1bXI+REaV8ND1lcOaFYseLtNo2roEzCJLYH3nMvebRZ5jgZNuFe8qjHi/sv/Qf5xjE4Q==
X-Gm-Gg: AY/fxX6xaBL6IkUwLhzUz8qf7c5lgVqS+rVG7k9UQHwvEGtOdryCrtHpokvSVMlDcz+
 yQna719QeNXyhvtSWR8wZi9ZjsfGDVTF3grgbf6zSxz483V7nL3oXcMnTyGm7fUv5WXuuW8cbXm
 yjYGdUV8p0WjLGAB/LwLXkERykY0jplj6poStgVc+y8vPhCU9PxBPLknghq8djJfMo595Y/Avku
 loEUY/fAZRieMqE+z/C0JqZ0ivizlSL/jfNAlXyG2JX/hWCvZdfcMEI7gTrQaCPnDk7oGR85x0d
 QLvC4xdTL9gcadKKeYsFJWvgp1NiTmNM0/RsJb5l/ELZT/daSJK+mGlBH2PYRw==
X-Received: by 2002:a05:600c:46c4:b0:471:14af:c715 with SMTP id
 5b1f17b1804b1-47d19533472mr18628855e9.3.1766133886210; 
 Fri, 19 Dec 2025 00:44:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHRZt6KWe46mx6ZtB4B52L3xtqXwoxBu7fs8J9csqjRO/5q6Y+k4W1VISevBepJVzaVLD4ew==
X-Received: by 2002:a05:600c:46c4:b0:471:14af:c715 with SMTP id
 5b1f17b1804b1-47d19533472mr18628285e9.3.1766133885661; 
 Fri, 19 Dec 2025 00:44:45 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-47be2723d19sm95746485e9.2.2025.12.19.00.44.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Dec 2025 00:44:45 -0800 (PST)
Date: Fri, 19 Dec 2025 09:44:44 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Dave Airlie <airlied@gmail.com>, 
	Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next
Message-ID: <20251219-arcane-quaint-skunk-e383b0@houat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="mlkpzx4zkpvmtckn"
Content-Disposition: inline
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


--mlkpzx4zkpvmtckn
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PULL] drm-misc-next
MIME-Version: 1.0

Hi Dave, Sima,

Here's the drm-misc-next PR for this week.

The diffstat is bigger than reported in the tag because
drm-misc-next-2025-12-12 hasn't been merged in drm-next yet.

Thanks!
Maxime

drm-misc-next-2025-12-19:
drm-misc-next for 6.20:

Core Changes:

  - dma-buf: Add tracepoints
  - sched: Introduce new helpers

Driver Changes:

  - amdxdna: Enable hardware context priority, Remove (obsolete and
    never public) NPU2 Support, Race condition fix
  - rockchip: Add RK3368 HDMI Support
  - rz-du: Add RZ/V2H(P) MIPI-DSI Support

  - panels:
    - st7571: Introduce SPI support
    - New panels: Sitronix ST7920, Samsung LTL106HL02, LG LH546WF1-ED01, Ha=
nnStar HSD156JUW2
The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-202=
5-12-19

for you to fetch changes up to 332070795bd96193756cb4446eddc3ec9ff6a0e8:

  accel/amdxdna: Enable hardware context priority (2025-12-18 10:36:44 -080=
0)

----------------------------------------------------------------
drm-misc-next for 6.20:

Core Changes:

  - dma-buf: Add tracepoints
  - sched: Introduce new helpers

Driver Changes:

  - amdxdna: Enable hardware context priority, Remove (obsolete and
    never public) NPU2 Support, Race condition fix
  - rockchip: Add RK3368 HDMI Support
  - rz-du: Add RZ/V2H(P) MIPI-DSI Support

  - panels:
    - st7571: Introduce SPI support
    - New panels: Sitronix ST7920, Samsung LTL106HL02, LG LH546WF1-ED01, Ha=
nnStar HSD156JUW2

----------------------------------------------------------------
Akash Goel (1):
      drm/panthor: Remove redundant call to disable the MCU

Alexey Klimov (1):
      gpu/panel-edp: add AUO panel entry for B140HAN06.4

Amin GATTOUT (1):
      drm/panel: otm8009a: Switch to mipi_dsi_multi_context helpers

Anton Bambura (1):
      gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver

Ashley Smith (1):
      drm/panthor: Enable timestamp propagation

Boris Brezillon (27):
      drm/panthor: Always wait after sending a command to an AS
      drm/panthor: Kill lock_region()
      drm/panthor: Recover from panthor_gpu_flush_caches() failures
      drm/panthor: Add support for atomic page table updates
      drm/panthor: Make panthor_vm_[un]map_pages() more robust
      drm/panthor: Relax a check in panthor_sched_pre_reset()
      drm/panthor: Simplify group idleness tracking
      drm/panthor: Don't try to enable extract events
      drm/panthor: Fix the full_tick check
      drm/panthor: Fix the group priority rotation logic
      drm/panthor: Fix immediate ticking on a disabled tick
      drm/panthor: Fix the logic that decides when to stop ticking
      drm/panthor: Make sure we resume the tick when new jobs are submitted
      drm/panthor: Kill panthor_sched_immediate_tick()
      drm/panthor: Drop a WARN_ON() in group_free_queue()
      drm/panthor: Make sure caches are flushed/invalidated when an AS is r=
ecycled
      drm/panthor: Unlock the locked region before disabling an AS
      drm/panthor: Provide a custom dma_buf implementation
      drm/panthor: Fix panthor_gpu_coherency_set()
      drm/panthor: Expose the selected coherency protocol to the UMD
      drm/panthor: Add a PANTHOR_BO_SYNC ioctl
      drm/panthor: Add an ioctl to query BO flags
      drm/panfrost: Provide a custom dma_buf implementation
      drm/panfrost: Expose the selected coherency protocol to the UMD
      drm/panfrost: Add an ioctl to query BO flags
      drm/gem: Fix builds with CONFIG_MMU=3Dn
      drm/panthor: Fix kerneldoc in uAPI header

Chia-I Wu (2):
      drm/panthor: fix queue_reset_timeout_locked
      drm/panthor: fix for dma-fence safe access rules

Christian K=F6nig (4):
      dma-buf: replace "#if" with just "if"
      dma-buf: improve sg_table debugging hack v4
      dma-buf: enable DMABUF_DEBUG by default on DEBUG kernels
      dma-buf/selftests: drop the mock_wait implementation

Dan Carpenter (2):
      drm/plane: Fix IS_ERR() vs NULL bug drm_plane_create_color_pipeline_p=
roperty()
      drm/panthor: unlock on error in panthor_ioctl_bo_create()

David Heidelberg (7):
      dt-bindings: panel: s6e3fc2x01: Sort and remove unnecessary properties
      dt-bindings: panel: sw43408: adjust to reflect the DDIC and panel used
      drm/panel: sw43408: Introduce LH546WF1-ED01 panel compatible
      drm/panel: sw43408: Separate reset sequence into own function
      drm/panel: sw43408: Remove manual invocation of unprepare at remove
      drm/panel: sw43408: Switch to devm_regulator_bulk_get_const
      drm/panel: sw43408: Improve wording when reset-gpios aren't available

Eslam Khafagy (1):
      drm: pl111: replace dev_* print functions with drm_* variants

Faith Ekstrand (4):
      drm/panthor: Bump the driver version to 1.7
      drm/panfrost: Add a PANFROST_SYNC_BO ioctl
      drm/panfrost: Add flag to map GEM object Write-Back Cacheable
      drm/panfrost: Bump the driver version to 1.6

Heiko Stuebner (2):
      dt-bindings: display: rockchip: dw-hdmi: Add compatible for RK3368 HD=
MI
      drm/rockchip: hdmi: add RK3368 controller variant

Iker Pedrosa (3):
      dt-bindings: display: sitronix,st7920: Add DT schema
      drm: Add driver for Sitronix ST7920 LCD displays
      MAINTAINERS: Add entry for Sitronix ST7920 driver

Jani Nikula (11):
      drm/hyperv: move Kconfig under driver directory
      drm/vgem: move Kconfig under driver directory
      drm/Kconfig: move generic Kconfig options above drivers
      drm/Kconfig: sort driver Kconfig source list
      drm/vblank: remove drm_wait_one_vblank() completely
      drm/vblank: remove superfluous pipe check
      drm/vblank: add return value to drm_crtc_wait_one_vblank()
      drm/vblank: limit vblank variable scope to atomic
      drm/vblank: use the drm_vblank_crtc() and drm_crtc_vblank_crtc() help=
ers more
      drm/vblank: prefer drm_crtc_vblank_crtc() over drm_vblank_crtc()
      drm/gem: fix build for mm_get_unmapped_area() call after backmerge

Karol Wachowski (1):
      accel/ivpu: Validate scatter-gather size against buffer size

Karunika Choo (1):
      drm/panthor: Fix NULL pointer dereference on panthor_fw_unplug

Lad Prabhakar (3):
      dt-bindings: display: bridge: renesas,dsi: Document RZ/V2H(P) and RZ/=
V2N
      drm: renesas: rz-du: mipi_dsi: Add LPCLK clock support
      drm: renesas: rz-du: mipi_dsi: Add support for RZ/V2H(P) SoC

Langyan Ye (1):
      drm/panel-edp: Add CSW MNE007QB3-1

Lizhi Hou (10):
      accel/amdxdna: Poll MPNPU_PWAITMODE after requesting firmware suspend
      accel/amdxdna: Fix tail-pointer polling in mailbox_get_msg()
      accel/amdxdna: Fix race condition when checking rpm_on
      accel/amdxdna: Fix cu_idx being cleared by memset() during command se=
tup
      accel/amdxdna: Fix race where send ring appears full due to delayed h=
ead update
      accel/amdxdna: Fix potential NULL pointer dereference in context clea=
nup
      accel/amdxdna: Remove amdxdna_flush()
      accel/amdxdna: Remove NPU2 support
      accel/amdxdna: Enable temporal sharing only mode
      accel/amdxdna: Enable hardware context priority

Lo=EFc Molinari (13):
      drm/shmem-helper: Simplify page offset calculation in fault handler
      drm/shmem-helper: Map huge pages in fault handler
      drm/gem: Introduce drm_gem_get_unmapped_area() fop
      drm/gem: Add huge tmpfs mountpoint helpers
      drm/i915: Use huge tmpfs mountpoint helpers
      drm/v3d: Use huge tmpfs mountpoint helpers
      drm/gem: Get rid of *_with_mnt helpers
      drm/panthor: Introduce huge tmpfs mountpoint option
      drm/panfrost: Introduce huge tmpfs mountpoint option
      Documentation/gpu/drm-mm: Add THP paragraph to GEM mapping section
      drm/panthor: Add flag to map GEM object Write-Back Cacheable
      drm/i915: Fix BO alloc flags
      drm/gem: Fix kerneldoc warnings

Luca Ceresoli (2):
      drm/bridge: add drm_bridge_unplug() and drm_bridge_enter/exit()
      drm/bridge: ti-sn65dsi83: protect device resources on unplug

Marcus Folkesson (7):
      drm/sitronix/st7571-i2c: rename 'struct drm_device' in st7571_device
      drm/sitronix/st7571-i2c: add 'struct device' to st7571_device
      drm/sitronix/st7571-i2c: move common structures to st7571.h
      drm/sitronix/st7571-i2c: make probe independent of hw interface
      drm/sitronix/st7571: split up the driver into a common and an i2c part
      drm/sitronix/st7571-spi: add support for SPI interface
      dt-bindings: display: sitronix,st7571: add example for SPI

Matthew Brost (2):
      drm/sched: Add several job helpers to avoid drivers touching schedule=
r state
      drm/sched: Add pending job list iterator

Maxime Ripard (2):
      drm/atomic: Add dev pointer to drm_private_obj
      Merge drm/drm-next into drm-misc-next

Philipp Stanner (9):
      drm/todo: Add section with task for GPU scheduler
      drm/todo: Add entry for unlocked drm/sched rq readers
      dma-buf/dma-fence: Add dma_fence_test_signaled_flag()
      dma-buf/dma-fence: Add dma_fence_check_and_signal()
      amd/amdkfd: Use dma_fence_check_and_signal()
      drm/xe: Use dma_fence_check_and_signal_locked()
      dma-buf: Don't misuse dma_fence_signal()
      drm/ttm: Use dma_fence_check_and_signal()
      dma-buf/dma-fence: Remove return code of signaling-functions

Renjun Wang (2):
      dt-bindings: display: simple: Add HannStar HSD156JUW2
      drm/panel: simple: Add HannStar HSD156JUW2

Suraj Kandpal (1):
      drm/display/dp_mst: Add protection against 0 vcpi

Svyatoslav Ryhel (1):
      dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI pan=
el

Thomas Zimmermann (9):
      drm/ast: Move cursor format conversion into helper function
      drm/ast: Support cursor buffers objects in I/O memory
      drm/ast: Wrap cursor framebuffer access in drm_gem_fb_begin/end_cpu_a=
ccess()
      drm/amdgpu: Do not implement mode_set_base_atomic callback
      drm/nouveau: Do not implement mode_set_base_atomic callback
      drm/radeon: Do not implement mode_set_base_atomic callback
      drm/fbdev-helper: Remove drm_fb_helper_debug_enter/_leave()
      fbcon: Remove fb_debug_enter/_leave from struct fb_ops
      drm/vblank: Unexport drm_wait_one_vblank()

Tvrtko Ursulin (6):
      drm/panic: Report invalid or unsupported panic modes
      drm/ttm: Make ttm_bo_init_validate safe against ttm_operation_ctx re-=
ordering
      drm/ttm: Resource cannot be NULL in ttm_resource_intersects
      drm/ttm: Tidy ttm_operation_ctx initialization
      drm/ttm: Tidy usage of local variables a little bit
      drm/syncobj: Convert syncobj idr to xarray

Val Packett (1):
      drm/panel-edp: Add AUO B140QAX01.H panel

gaoxiang17 (1):
      dma-buf: add some tracepoints to debug.

 .../bindings/display/bridge/renesas,dsi.yaml       |  120 ++-
 .../bindings/display/panel/lg,sw43408.yaml         |   13 +-
 .../bindings/display/panel/panel-simple-dsi.yaml   |    2 +
 .../bindings/display/panel/panel-simple.yaml       |    2 +
 .../bindings/display/panel/samsung,s6e3fc2x01.yaml |   20 +-
 .../display/rockchip/rockchip,dw-hdmi.yaml         |    1 +
 .../bindings/display/sitronix,st7571.yaml          |   25 +
 .../bindings/display/sitronix,st7920.yaml          |   58 ++
 Documentation/gpu/drm-mm.rst                       |   29 +-
 Documentation/gpu/todo.rst                         |   45 +
 Documentation/process/debugging/kgdb.rst           |   28 -
 MAINTAINERS                                        |   10 +
 drivers/accel/amdxdna/Makefile                     |    1 -
 drivers/accel/amdxdna/aie2_ctx.c                   |   18 +-
 drivers/accel/amdxdna/aie2_message.c               |   92 +-
 drivers/accel/amdxdna/aie2_msg_priv.h              |    8 +-
 drivers/accel/amdxdna/aie2_pci.c                   |    2 +-
 drivers/accel/amdxdna/aie2_pci.h                   |    4 +
 drivers/accel/amdxdna/aie2_pm.c                    |   17 +-
 drivers/accel/amdxdna/aie2_psp.c                   |   15 +
 drivers/accel/amdxdna/aie2_smu.c                   |   27 +-
 drivers/accel/amdxdna/amdxdna_ctx.h                |    1 +
 drivers/accel/amdxdna/amdxdna_mailbox.c            |   46 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |   30 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |    2 -
 drivers/accel/amdxdna/amdxdna_pm.c                 |   22 +-
 drivers/accel/amdxdna/npu1_regs.c                  |    2 +
 drivers/accel/amdxdna/npu2_regs.c                  |  115 ---
 drivers/accel/amdxdna/npu4_regs.c                  |    3 +
 drivers/accel/amdxdna/npu5_regs.c                  |    2 +
 drivers/accel/amdxdna/npu6_regs.c                  |    2 +
 drivers/accel/ivpu/ivpu_gem.c                      |    2 +-
 drivers/accel/ivpu/ivpu_mmu_context.c              |   20 +-
 drivers/accel/ivpu/ivpu_mmu_context.h              |    5 +-
 drivers/dma-buf/Kconfig                            |    2 +-
 drivers/dma-buf/dma-buf.c                          |  128 ++-
 drivers/dma-buf/dma-fence.c                        |  100 +-
 drivers/dma-buf/st-dma-fence.c                     |   55 +-
 drivers/gpu/drm/Kconfig                            |  213 ++---
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c             |   35 +-
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c              |   35 +-
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c              |   35 +-
 drivers/gpu/drm/amd/amdkfd/kfd_process.c           |    6 +-
 drivers/gpu/drm/ast/ast_cursor.c                   |   83 +-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c              |   86 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c      |    3 +-
 drivers/gpu/drm/drm_atomic.c                       |    1 +
 drivers/gpu/drm/drm_bridge.c                       |   62 ++
 drivers/gpu/drm/drm_fb_helper.c                    |  108 ---
 drivers/gpu/drm/drm_gem.c                          |  203 +++-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |   86 +-
 drivers/gpu/drm/drm_panic.c                        |   77 +-
 drivers/gpu/drm/drm_plane.c                        |    4 +-
 drivers/gpu/drm/drm_syncobj.c                      |   65 +-
 drivers/gpu/drm/drm_vblank.c                       |   52 +-
 drivers/gpu/drm/hyperv/Kconfig                     |   14 +
 drivers/gpu/drm/i915/Makefile                      |    3 +-
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h   |   10 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c          |   58 +-
 drivers/gpu/drm/i915/gem/i915_gemfs.c              |   71 --
 drivers/gpu/drm/i915/gem/i915_gemfs.h              |   14 -
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c    |   15 +-
 drivers/gpu/drm/i915/i915_drv.h                    |    5 -
 drivers/gpu/drm/nouveau/dispnv04/crtc.c            |   24 +-
 drivers/gpu/drm/panel/Kconfig                      |   13 +
 drivers/gpu/drm/panel/Makefile                     |    1 +
 drivers/gpu/drm/panel/panel-edp.c                  |    3 +
 drivers/gpu/drm/panel/panel-lg-sw43408.c           |   64 +-
 drivers/gpu/drm/panel/panel-orisetech-otm8009a.c   |  175 ++--
 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c   |  179 ++++
 drivers/gpu/drm/panel/panel-simple.c               |   28 +
 drivers/gpu/drm/panfrost/panfrost_device.c         |    3 +
 drivers/gpu/drm/panfrost/panfrost_device.h         |    1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c            |  107 ++-
 drivers/gpu/drm/panfrost/panfrost_drv.h            |    9 +
 drivers/gpu/drm/panfrost/panfrost_gem.c            |  257 +++++
 drivers/gpu/drm/panfrost/panfrost_gem.h            |   12 +
 drivers/gpu/drm/panfrost/panfrost_gpu.c            |   26 +-
 drivers/gpu/drm/panfrost/panfrost_regs.h           |   10 +-
 drivers/gpu/drm/panthor/panthor_device.c           |   13 +-
 drivers/gpu/drm/panthor/panthor_drv.c              |   89 +-
 drivers/gpu/drm/panthor/panthor_drv.h              |    9 +
 drivers/gpu/drm/panthor/panthor_fw.c               |    8 +-
 drivers/gpu/drm/panthor/panthor_gem.c              |  258 ++++-
 drivers/gpu/drm/panthor/panthor_gem.h              |    8 +
 drivers/gpu/drm/panthor/panthor_gpu.c              |   21 +-
 drivers/gpu/drm/panthor/panthor_mmu.c              |  314 +++---
 drivers/gpu/drm/panthor/panthor_sched.c            |  256 ++---
 drivers/gpu/drm/pl111/pl111_display.c              |    4 +-
 drivers/gpu/drm/pl111/pl111_drv.c                  |   29 +-
 drivers/gpu/drm/pl111/pl111_nomadik.c              |    4 +-
 drivers/gpu/drm/pl111/pl111_nomadik.h              |    4 +-
 drivers/gpu/drm/pl111/pl111_versatile.c            |   53 +-
 drivers/gpu/drm/pl111/pl111_versatile.h            |    2 +-
 drivers/gpu/drm/radeon/atombios_crtc.c             |   74 +-
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c        |   23 +-
 drivers/gpu/drm/radeon/radeon_mode.h               |   10 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |  453 +++++++++
 .../gpu/drm/renesas/rz-du/rzg2l_mipi_dsi_regs.h    |   34 +
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        |   16 +
 drivers/gpu/drm/scheduler/sched_main.c             |   40 +-
 drivers/gpu/drm/sitronix/Kconfig                   |   48 +-
 drivers/gpu/drm/sitronix/Makefile                  |    3 +
 drivers/gpu/drm/sitronix/st7571-i2c.c              | 1003 +---------------=
----
 drivers/gpu/drm/sitronix/st7571-spi.c              |   76 ++
 drivers/gpu/drm/sitronix/st7571.c                  |  918 ++++++++++++++++=
++
 drivers/gpu/drm/sitronix/st7571.h                  |   91 ++
 drivers/gpu/drm/sitronix/st7920.c                  |  867 +++++++++++++++++
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c   |    2 +-
 drivers/gpu/drm/ttm/ttm_bo.c                       |   64 +-
 drivers/gpu/drm/ttm/ttm_bo_util.c                  |   57 +-
 drivers/gpu/drm/ttm/ttm_bo_vm.c                    |   12 +-
 drivers/gpu/drm/ttm/ttm_device.c                   |    5 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     |   26 +-
 drivers/gpu/drm/ttm/ttm_resource.c                 |   14 +-
 drivers/gpu/drm/ttm/ttm_tt.c                       |    2 +-
 drivers/gpu/drm/v3d/Makefile                       |    3 +-
 drivers/gpu/drm/v3d/v3d_bo.c                       |    6 +-
 drivers/gpu/drm/v3d/v3d_drv.c                      |    2 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |   11 +-
 drivers/gpu/drm/v3d/v3d_gem.c                      |   21 +-
 drivers/gpu/drm/v3d/v3d_gemfs.c                    |   62 --
 drivers/gpu/drm/vgem/Kconfig                       |    9 +
 drivers/gpu/drm/xe/xe_hw_fence.c                   |    4 +-
 drivers/video/fbdev/core/fbcon.c                   |   24 -
 drivers/video/fbdev/core/fbcon.h                   |    1 -
 include/drm/drm_atomic.h                           |    5 +
 include/drm/drm_bridge.h                           |   12 +
 include/drm/drm_device.h                           |   15 +
 include/drm/drm_fb_helper.h                        |   21 -
 include/drm/drm_file.h                             |    7 +-
 include/drm/drm_gem.h                              |   45 +-
 include/drm/drm_gem_shmem_helper.h                 |    3 -
 include/drm/drm_modeset_helper_vtables.h           |   23 -
 include/drm/drm_vblank.h                           |    3 +-
 include/drm/gpu_scheduler.h                        |   52 +
 include/linux/dma-fence.h                          |   35 +-
 include/linux/fb.h                                 |    4 -
 include/trace/events/dma_buf.h                     |  157 +++
 include/uapi/drm/amdxdna_accel.h                   |    8 +
 include/uapi/drm/panfrost_drm.h                    |   76 +-
 include/uapi/drm/panthor_drm.h                     |  157 ++-
 142 files changed, 6078 insertions(+), 2928 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/sitronix,st79=
20.yaml
 delete mode 100644 drivers/accel/amdxdna/npu2_regs.c
 create mode 100644 drivers/gpu/drm/hyperv/Kconfig
 delete mode 100644 drivers/gpu/drm/i915/gem/i915_gemfs.c
 delete mode 100644 drivers/gpu/drm/i915/gem/i915_gemfs.h
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c
 create mode 100644 drivers/gpu/drm/panfrost/panfrost_drv.h
 create mode 100644 drivers/gpu/drm/panthor/panthor_drv.h
 create mode 100644 drivers/gpu/drm/sitronix/st7571-spi.c
 create mode 100644 drivers/gpu/drm/sitronix/st7571.c
 create mode 100644 drivers/gpu/drm/sitronix/st7571.h
 create mode 100644 drivers/gpu/drm/sitronix/st7920.c
 delete mode 100644 drivers/gpu/drm/v3d/v3d_gemfs.c
 create mode 100644 drivers/gpu/drm/vgem/Kconfig
 create mode 100644 include/trace/events/dma_buf.h

--mlkpzx4zkpvmtckn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaUUQfAAKCRAnX84Zoj2+
djWXAX4+0/O9YzAabAtWchIt+dCw2ZkYTHeI/wy4x03deEoAOTQg88jpt52iJfCY
7XxuU5YBf0DE09iTu+reSxXxOt2kR6rw6YU6wTJxDeZIPydxQG8eIBIpok3kovpm
/ahpLdiaAw==
=Pp5K
-----END PGP SIGNATURE-----

--mlkpzx4zkpvmtckn--

