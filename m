Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCXUKWuQGGrWlAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 20:58:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC71E5F6C63
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 20:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951C510F584;
	Thu, 28 May 2026 18:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QDyQP7e8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3817810F582;
 Thu, 28 May 2026 18:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779994727; x=1811530727;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=h4nhAIFlrHYsBUZIJY8m5NPO1FEasVZKpDgboRZoYxA=;
 b=QDyQP7e81DDEOq0bl+TVDFufykG1fYD2gc2tsdhxCZHOn27C7QLcKwaf
 9OYzRnPWfl9ii5bpg44mDFASZqYr/zA1jt3Yo9ghIZVtCk0VYRp4HZDry
 S80ul+GouhyTxDQVyOS9uNkcJ1hWXKi91cy5sCsZoYKnY4Rr8MWAyQX/o
 QreNC/axLvnfhrzbJqpFH82yRSJB+g7rmc98fKH1QhYE8PU6Ck6euKTUo
 I3CW8xpVTVCr+J56fe3ymlr0C6BSn/ROvsj0MBPEsbdSS/5RBeSXDht91
 ajn7DT8GIOIWpis0y7EiVC+FW3Ut1nEUCDV5C+saYhdix46/sCD0pFp/G A==;
X-CSE-ConnectionGUID: f125N+QCTnSCoSg1OflcoA==
X-CSE-MsgGUID: HaCnfPA+TMmc8SGHgBT3+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="79993814"
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="79993814"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:58:46 -0700
X-CSE-ConnectionGUID: 8lEdAd/HSmOMtmrCJdGT5g==
X-CSE-MsgGUID: ur2Erzv8QnSFYBYyYJla4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="241597324"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO [10.245.244.82])
 ([10.245.244.82])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 11:58:43 -0700
Message-ID: <ef65f43c-becf-473c-a5cc-203fdfecd491@linux.intel.com>
Date: Thu, 28 May 2026 20:58:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Cc: dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PULL] drm-misc-next
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CC71E5F6C63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

Last drm-misc-next pull-request, with last minute changes for tegra, nouveau and host1x.

Kind regards,
~Maarten Lankhorst

drm-misc-next-2026-05-28:
drm-misc-next for v7.2-rc1:

UAPI Changes:
- amdxdna: Revert read-only user-pointer BO mappings.
- panthor: Add eviction and reclaim info to fdinfo.

Cross-subsystem Changes:
- Convert DMA-buf system and cma heap allocators to module.

Core Changes:
- Cleanup driver misuses of drm/exec.

Driver Changes:
- Add LG LP129WT232166, AM-1280800W8TZQW-T00H, NEC NL6448BC33-70C,
  Riverdi RVT70HSLNWCA0 and RVT101HVLNWC00 panels.
- Add support for RZ/T2H SoC to renesas.
- Add cursor plane support to verisilicon.
- Support DVI outputs in ite-it66121 bridge.
- Assorted bugfixes, docbook updates and improvements to ivpu, tegra,
  host1x, nouveau.
- Add DSC quirk for ASUS DC301 USB-C dock.
- Use drm client buffer for tegra framebuffer.
- Add support for GA100 to nouveau.

The following changes since commit bed29492d413349e5b13f21936655064cdb63c91:

  Merge v7.1-rc5 into drm-next (2026-05-28 09:58:36 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-05-28

for you to fetch changes up to 61de054a772a1feda6364931ab1baf9038abf1c8:

  drm/nouveau/gsp: formally support GA100 (2026-05-28 19:30:15 +0200)

----------------------------------------------------------------
drm-misc-next for v7.2-rc1:

UAPI Changes:
- amdxdna: Revert read-only user-pointer BO mappings.
- panthor: Add eviction and reclaim info to fdinfo.

Cross-subsystem Changes:
- Convert DMA-buf system and cma heap allocators to module.

Core Changes:
- Cleanup driver misuses of drm/exec.

Driver Changes:
- Add LG LP129WT232166, AM-1280800W8TZQW-T00H, NEC NL6448BC33-70C,
  Riverdi RVT70HSLNWCA0 and RVT101HVLNWC00 panels.
- Add support for RZ/T2H SoC to renesas.
- Add cursor plane support to verisilicon.
- Support DVI outputs in ite-it66121 bridge.
- Assorted bugfixes, docbook updates and improvements to ivpu, tegra,
  host1x, nouveau.
- Add DSC quirk for ASUS DC301 USB-C dock.
- Use drm client buffer for tegra framebuffer.
- Add support for GA100 to nouveau.

----------------------------------------------------------------
Aaron Kling (1):
      drm/tegra: Enable cmu for Tegra186 and Tegra194

Andrzej Kacprowski (1):
      accel/ivpu: Remove disable_d0i3_msg workaround

Artur Kowalski (1):
      gpu: host1x: trace: fix string fields in host1x traces

Ben Dooks (1):
      gpu: host1x: Fix missing 'host1x_context_device_bus_type'

Dario Binacchi (2):
      dt-bindings: display: simple: Add AM-1280800W8TZQW-T00H
      drm/panel: simple: Add AM-1280800W8TZQW-T00H

Dongyang Jin (1):
      drm/panel: fix kernel-doc warning for devm_drm_panel_add()

Felix Gu (2):
      gpu: host1x: mipi: Fix device_node reference leak in tegra_mipi_request()
      drm/tegra: dc: Fix device node reference leak in tegra_dc_has_output()

Guangshuo Li (1):
      gpu: host1x: Fix device reference leak in host1x_device_parse_dt() error path

Hongling Zeng (5):
      nouveau/gsp: cleanup IS_ERR_OR_NULL in rm_alloc functions
      nouveau/gsp: cleanup IS_ERR_OR_NULL in rpc_rd
      nouveau/gsp/rm: cleanup IS_ERR_OR_NULL in core implementation
      nouveau/gsp/rm: cleanup WARN_ON(IS_ERR_OR_NULL)
      nouveau/gsp/rm: cleanup remaining IS_ERR_OR_NULL usage

Icenowy Zheng (3):
      drm: verisilicon: add max cursor size to HWDB
      drm: verisilicon: add support for cursor planes
      drm: verisilicon: fix build failure of cursor plane code

Imre Deak (1):
      drm/dp: Add DSC virtual DPCD quirk for Realtek MST branch device

Ion Agorria (1):
      drm/tegra: gr2d/gr3d: Contain PM in the gr*d_probe/gr*d_remove

Jacob McLemore (1):
      drm/tegra: sor: Remove usage of drm_simple_encoder_init()

Javier Martinez Canillas (3):
      drm/bridge: ite-it66121: Switch to the HDMI connector helpers
      drm/bridge: ite-it66121: Move .mode_set logic to .atomic_enable
      drm/bridge: ite-it66121: Select HDMI or DVI mode based on sink type

Jérôme de Bretagne (1):
      drm/panel-edp: Add LG LP129WT232166 panel

Karol Wachowski (1):
      accel/ivpu: Document why full JSM message size is always used

Lad Prabhakar (4):
      dt-bindings: display: renesas,rzg2l-du: Add RZ/T2H and RZ/N2H support
      drm: renesas: rz-du: Make DU reset control optional for RZ/T2H support
      drm: renesas: rz-du: Move mode_valid logic to per-SoC clock limits
      drm: renesas: rz-du: Add support for RZ/T2H SoC

Lizhi Hou (1):
      Revert "accel/amdxdna: Support read-only user-pointer BO mappings"

Maxime Ripard (4):
      dma-buf: heaps: Export mem_accounting parameter
      dma-buf: heaps: cma: Turn the heap into a module
      dma-buf: heaps: system: Turn the heap into a module
      arm64: defconfig: Enable dma-buf heaps

Mikko Perttunen (3):
      gpu: host1x: Allow entries in BO caches to be freed
      gpu: host1x: Fix iommu_map_sgtable() return value check
      drm/tegra: Fix iommu_map_sgtable() return value check

Nicolas Frattaroli (2):
      drm/panthor: Implement evicted status for GEM objects
      drm/panthor: Reduce padding in gems debugfs for refcount

Randy Dunlap (2):
      drm/tegra: dp: fix kernel-doc warnings in dp.h
      drm/tegra: tegra_drm.h: fix all uapi kernel-doc warnings

Souradipto Das (1):
      drm/tegra: hdmi: Open-code drm_simple_encoder_init()

Steffen Trumtrar (2):
      dt-bindings: display: simple: Add NEC NL6448BC33-70C panel
      drm/panel: simple: add NEC NL6448BC33-70C

Svyatoslav Ryhel (1):
      drm/tegra: gr2d/gr3d: Initialize address register map before HOST1X client is registered

Tanmay Patil (2):
      gpu: host1x: Skip redundant syncpoint loads in host1x_syncpt_wait()
      gpu: host1x: Skip redundant HW state update

Thomas Hellström (4):
      drm/exec: Remove the index parameter from drm_exec_for_each_locked_obj[_reverse]
      drm/exec: Make the drm_exec_until_all_locked() macro more readable
      drm/exec, drm/xe: Avoid abusing the drm_exec retry pointer
      drm/exec, drm/xe, drm/amdgpu: Add an accessor for struct drm_exec::ticket

Thomas Zimmermann (6):
      Merge drm/drm-next into drm-misc-next
      drm/tegra: fbdev: Do not assign to struct drm_fb_helper.info
      drm/tegra: fbdev: Remove offset into framebuffer memory
      drm/tegra: fbdev: Calculate buffer geometry with format helpers
      drm/tegra: fbdev: Use a DRM client buffer
      drm/tegra: Make tegra_fb_alloc() an internal interface

Thorsten Blum (2):
      drm/tegra: dp: use str_plural in drm_dp_link_train_{full,fast}
      drm/tegra: sor: use str_plural in tegra_sor_dp_link_configure

Timur Tabi (9):
      drm/nouveau/gsp: add SEC2 to GA100 chip table
      drm/nouveau/gsp: use fb.bios.addr for gspFwWprEnd instead of vga_workspace.addr
      drm/nouveau/gsp: read MMU_LOCK to fix WPR placement on GA100
      drm/nouveau: only boot FRTS if its region is allocated
      drm/nouveau: GA100 has an FRTS region size of zero
      drm/nouveau/bios: specify correct display fuse register for Ampere and Ada
      drm/nouveau/bios: skip the IFR header if present
      drm/nouveau/gsp: require GSP-RM for GA100 support
      drm/nouveau/gsp: formally support GA100

Tommaso Merciai (1):
      dt-bindings: display: renesas,rzg2l-du: Refuse port@1 for RZ/G2UL

Vitor Soares (1):
      dt-bindings: display: panel-lvds: Add Riverdi RVT70HSLNWCA0 and RVT101HVLNWC00

shayderrr (1):
      host1x: bus: Fix missing ops null check in error teardown

 .../bindings/display/panel/panel-lvds.yaml         |   4 +
 .../bindings/display/panel/panel-simple.yaml       |   4 +
 .../bindings/display/renesas,rzg2l-du.yaml         |  21 +-
 arch/arm64/configs/defconfig                       |   3 +
 drivers/accel/amdxdna/amdxdna_ubuf.c               |  29 +-
 drivers/accel/ivpu/ivpu_drv.h                      |   3 -
 drivers/accel/ivpu/ivpu_fw.c                       |  23 +-
 drivers/accel/ivpu/ivpu_ipc.c                      |   6 +-
 drivers/accel/ivpu/ivpu_jsm_msg.c                  |   3 -
 drivers/accel/ivpu/vpu_boot_api.h                  |   6 +-
 drivers/dma-buf/dma-heap.c                         |   1 +
 drivers/dma-buf/heaps/Kconfig                      |   4 +-
 drivers/dma-buf/heaps/cma_heap.c                   |   3 +
 drivers/dma-buf/heaps/system_heap.c                |   5 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c   |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |  15 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_eviction_fence.c |   3 +-
 drivers/gpu/drm/bridge/Kconfig                     |   2 +
 drivers/gpu/drm/bridge/ite-it66121.c               | 310 +++++++++++++++------
 drivers/gpu/drm/display/drm_dp_helper.c            |   2 +
 drivers/gpu/drm/drm_exec.c                         |   9 +-
 drivers/gpu/drm/drm_gpuvm.c                        |   3 +-
 drivers/gpu/drm/drm_panel.c                        |   1 +
 drivers/gpu/drm/nouveau/include/nvkm/subdev/gsp.h  |   8 +-
 drivers/gpu/drm/nouveau/nvkm/engine/device/base.c  |  10 +-
 .../gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c |   3 +-
 .../gpu/drm/nouveau/nvkm/subdev/bios/shadowrom.c   | 110 +++++++-
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/ga100.c    |   1 -
 .../drm/nouveau/nvkm/subdev/gsp/rm/r535/alloc.c    |   4 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/bar.c  |   2 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/ctrl.c |   2 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/rpc.c  |  10 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/tu102.c    |  69 ++++-
 drivers/gpu/drm/panel/panel-edp.c                  |   1 +
 drivers/gpu/drm/panel/panel-simple.c               |  57 ++++
 drivers/gpu/drm/panthor/panthor_gem.c              |  16 +-
 drivers/gpu/drm/panthor/panthor_gem.h              |  10 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c      |   9 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.c       |  20 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_drv.h       |  14 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c   |   9 +-
 drivers/gpu/drm/tegra/dc.c                         | 120 +++++++-
 drivers/gpu/drm/tegra/dc.h                         |  13 +
 drivers/gpu/drm/tegra/dp.c                         |   6 +-
 drivers/gpu/drm/tegra/dp.h                         |  12 +-
 drivers/gpu/drm/tegra/drm.h                        |   5 -
 drivers/gpu/drm/tegra/fb.c                         |   1 +
 drivers/gpu/drm/tegra/fbdev.c                      |  88 +++---
 drivers/gpu/drm/tegra/gem.c                        |  22 +-
 drivers/gpu/drm/tegra/gr2d.c                       |  19 +-
 drivers/gpu/drm/tegra/gr3d.c                       |  19 +-
 drivers/gpu/drm/tegra/hdmi.c                       |  10 +-
 drivers/gpu/drm/tegra/sor.c                        |  37 ++-
 drivers/gpu/drm/tegra/submit.c                     |   3 +-
 drivers/gpu/drm/verisilicon/Makefile               |   3 +-
 drivers/gpu/drm/verisilicon/vs_crtc.c              |  11 +-
 drivers/gpu/drm/verisilicon/vs_cursor_plane.c      | 272 ++++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_cursor_plane_regs.h |  44 +++
 drivers/gpu/drm/verisilicon/vs_hwdb.c              |   4 +
 drivers/gpu/drm/verisilicon/vs_hwdb.h              |   5 +
 drivers/gpu/drm/verisilicon/vs_plane.h             |   1 +
 drivers/gpu/drm/xe/xe_validation.c                 |   4 +-
 drivers/gpu/drm/xe/xe_validation.h                 |   2 +-
 drivers/gpu/drm/xe/xe_vm.c                         |   3 +-
 drivers/gpu/host1x/bus.c                           |  66 ++++-
 drivers/gpu/host1x/context.c                       |   1 +
 drivers/gpu/host1x/context.h                       |   3 +-
 drivers/gpu/host1x/context_bus.c                   |   1 +
 drivers/gpu/host1x/intr.c                          |   8 +-
 drivers/gpu/host1x/job.c                           |  10 +-
 drivers/gpu/host1x/mipi.c                          |   6 +-
 drivers/gpu/host1x/syncpt.c                        |  23 +-
 include/drm/drm_exec.h                             |  71 +++--
 include/linux/host1x.h                             |   7 +
 include/trace/events/host1x.h                      |  50 ++--
 include/uapi/drm/tegra_drm.h                       |  16 ++
 76 files changed, 1393 insertions(+), 392 deletions(-)
 create mode 100644 drivers/gpu/drm/verisilicon/vs_cursor_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_cursor_plane_regs.h
