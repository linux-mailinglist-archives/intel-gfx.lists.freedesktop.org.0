Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPGkBlXEBWpMbAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 14:47:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D328541E34
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 14:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7025010F1BE;
	Thu, 14 May 2026 12:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJLL3auH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A2D10F1A8;
 Thu, 14 May 2026 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778762832; x=1810298832;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=Ck6l/43pwiPTJP4S/II5FNGMt6BCS+Y9390KHC4wgJw=;
 b=PJLL3auHHMi2MFiYCxfNhtoChMTXypaTHx3YdzcUScUiwEJXy4Sy5igu
 O4w0sZ6sz+wd8xBaMUkBMtLpZDnd8LkVIuwO202OCZv7/P1HDXP+4X4N5
 q2ImwZwMBNRnzGK92iopICeit9pC+J4hp7VeHy9kAEcpjB0JTqRYzs4qS
 FsZsuighd6zsDu5tTugoTsW1ewKjAIDxH5T5a6o9bNuJkduOXTvWF/E/D
 KjwZrki+uJ9LWP6kPOV5h/QNFPbbVZaNnjROGxhQV2ok9eN9vgDwukFqh
 I8onlmRiVVeCdEd6l0ei76FlC+5j0noQZ5Rdp4aZmWtUc17asz9TJvqXQ g==;
X-CSE-ConnectionGUID: MW0xSORuRt+6oblCSkmfzA==
X-CSE-MsgGUID: 0j87xowtS5igp68VZpVJ8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="83317492"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="83317492"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 05:47:11 -0700
X-CSE-ConnectionGUID: aArgIKM8RMKX+ri0WUG+DA==
X-CSE-MsgGUID: 4QezpgnsQMy7Meap3cbZSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="276455508"
Received: from abityuts-desk.ger.corp.intel.com (HELO [10.245.244.254])
 ([10.245.244.254])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 05:47:02 -0700
Message-ID: <98788814-e462-4950-bb2a-ea493c30d0c0@linux.intel.com>
Date: Thu, 14 May 2026 14:46:54 +0200
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
X-Rspamd-Queue-Id: 6D328541E34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gitlab.freedesktop.org:url,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Hi Dave, Simona,

Another week, another pull request.

Enjoy!

Kind regards,
~Maarten Lankhorst

drm-misc-next-2026-05-14:
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Update fourcc descriptions of BG(R) floating formats.
- Add deferred mapping support to virtio.

Cross-subsystem Changes:
- Update lontium lt9211 bindings.

Core Changes:
- Bugfixes and cleanups to pagemap, dp/mst.
- Add lockdep annotations to gpu buddy manager.
- Updates to drm/dp for PR + VRR.
- Improve documentation's table of contents.
- Bump fpfn and lpfn in ttm to 64-bits.

Driver Changes:
- Assorted bugfixes, cleanups and updates to panthor, nouveau, qaic,
  hisilicon.
- Add support for CMN N116BCN-EA1, CMN N140HCA-EEK, IVO M140NWFQ R5, IVO
  R140NWFW R0, BOE NT140*, BOE NV133FHM-N4F, AUO B140*, AUO B133HAN06.6 and AUO B116XTN02.3 eDP panels.
- More implementation of AIE4 in amdxdna.
- Update panels to use refcounts instead of devm_kzalloc to make
  drm_panel_init static.
- Add support for the RCade Display Adapter to gud.
The following changes since commit 921578cf373981eba92774a27f7644a11282cf89:

  drm/bridge: tc358768: Add support for long command tx via video buffer (2026-05-07 12:38:46 +0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-05-14

for you to fetch changes up to 4c26e162947f91aa78ba57dd4fddd38fc80e7d60:

  drm/virtio: Extend blob UAPI with deferred-mapping hinting (2026-05-14 00:57:34 +0300)

----------------------------------------------------------------
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Update fourcc descriptions of BG(R) floating formats.
- Add deferred mapping support to virtio.

Cross-subsystem Changes:
- Update lontium lt9211 bindings.

Core Changes:
- Bugfixes and cleanups to pagemap, dp/mst.
- Add lockdep annotations to gpu buddy manager.
- Updates to drm/dp for PR + VRR.
- Improve documentation's table of contents.
- Bump fpfn and lpfn in ttm to 64-bits.

Driver Changes:
- Assorted bugfixes, cleanups and updates to panthor, nouveau, qaic,
  hisilicon.
- Add support for CMN N116BCN-EA1, CMN N140HCA-EEK, IVO M140NWFQ R5, IVO
  R140NWFW R0, BOE NT140*, BOE NV133FHM-N4F, AUO B140*, AUO B133HAN06.6 and AUO B116XTN02.3 eDP panels.
- More implementation of AIE4 in amdxdna.
- Update panels to use refcounts instead of devm_kzalloc to make
  drm_panel_init static.
- Add support for the RCade Display Adapter to gud.

----------------------------------------------------------------
Akash Goel (1):
      drm/panthor: Avoid potential UAF due to memory reclaim

Albert Esteve (10):
      drm/panel/visionox-g2647fb105: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/samsung-s6e63m0: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/novatek-nt37700f: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/lxd-m9189a: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/ilitek-ili9806e: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/tdo-tl070wsh30: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/sharp-ls043t1le01: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/truly-nt35597: Use refcounted allocation in place of devm_kzalloc()
      drm/panel/startek-kd070fhfid015: Use refcounted allocation in place of devm_kzalloc()
      drm/panel: Make drm_panel_init() static

Ankit Nautiyal (9):
      drm/dp: Rename and relocate AS SDP payload field masks
      drm/dp: Clean up DPRX feature enumeration macros
      drm/dp: Add bits for AS SDP FAVT Payload Fields Parsing support
      drm/dp: Add DPCD for configuring AS SDP for PR + VRR
      drm/dp: Refactor AS SDP logging to use space-separated field names
      drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
      drm/dp: Add a helper to get the SDP type as a string
      drm/dp: Add target_rr_divider field in AS SDP logging
      drm/dp: Use drm_printf_indent for DP SDP logging

Ashutosh Desai (1):
      drm/dp/mst: fix buffer overflows in sideband chunk accumulation

Chen-Yu Tsai (1):
      drm/panel-edp: Add AUO B133HAN06.6 and BOE NV133FHM-N4F V8.0

David Zhang (5):
      accel/amdxdna: Add initial support for AIE4 VF
      accel/amdxdna: Init AIE4 device partition
      accel/amdxdna: Add AIE4 VF hardware context create and destroy
      accel/amdxdna: Add command doorbell and wait support
      accel/amdxdna: Add AIE4 metadata query support

Dmitry Osipenko (1):
      drm/virtio: Extend blob UAPI with deferred-mapping hinting

Felix Kuehling (1):
      drm/ttm: Support 52-bit PAs in ttm_place

Francois Dugast (1):
      drm: Drop HPAGE_PMD_SIZE dependency in dma_iova_try_alloc calls

Jani Nikula (3):
      Documentation/gpu: limit main toctree depth to 2
      Documentation/gpu: add some tables of contents to large documents
      Documentation/gpu/rfc: fix toctree

Lin He (4):
      drm/hisilicon/hibmc: add updating link cap in DP detect()
      drm/hisilicon/hibmc: fix no showing when no connectors connected
      drm/hisilicon/hibmc: move display contrl config to hibmc_probe()
      drm/hisilicon/hibmc: use clock to look up the PLL value

Lizhi Hou (1):
      accel/amdxdna: Fix clflush buffer size

Lyude Paul (1):
      drm/nouveau/kms/nvd9-: Remove unused header in crc.c

Marek Vasut (1):
      dt-bindings: display: bridge: lt9211: Require data-lanes on DSI input ports

Maxime Ripard (1):
      Merge drm/drm-next into drm-misc-next

Nishad Saraf (1):
      accel/amdxdna: Add AIE4 work buffer initialization

Robert Ancell (1):
      drm/fourcc: Fix descriptions of 32b float formats

Rosen Penev (3):
      nouveau/vmm: use kzalloc_flex
      drm/nouveau/gsp: Use kzalloc_flex() for r535 display funcs
      accel/qaic: kcalloc + kzalloc to kzalloc

Sophie D (1):
      drm/gud: Add RCade Display Adapter VID/PID pair

Tejas Upadhyay (1):
      drm/buddy: Integrate lockdep annotations for gpu buddy manager

Terry Hsiao (4):
      drm/panel-edp: Add AUO B140XTN07.5, AUO B140HAK03.5, AUO B116XTN02.3, AUO B140XTK02.4, AUO B140HAN07.7
      drm/panel-edp: Add BOE NT140WHM-N4T, BOE NT140WHM-T05, BOE NV140FHM-N40
      drm/panel-edp: Add CMN N116BCN-EA1, CMN N140HCA-EEK, IVO M140NWFQ R5, IVO R140NWFW R0
      drm/panel-edp: Modify panel name and delay for CMN 0x14d6

 .mailmap                                           |     6 +
 Documentation/admin-guide/cgroup-v2.rst            |     2 +-
 .../bindings/display/bridge/lontium,lt9211.yaml    |    43 +-
 .../devicetree/bindings/mailbox/qcom-ipcc.yaml     |     1 +
 Documentation/filesystems/isofs.rst                |     2 +-
 Documentation/gpu/amdgpu/amdgpu-glossary.rst       |     9 +-
 Documentation/gpu/driver-uapi.rst                  |     2 +
 Documentation/gpu/drm-internals.rst                |     2 +
 Documentation/gpu/drm-kms-helpers.rst              |     2 +
 Documentation/gpu/drm-kms.rst                      |    16 +-
 Documentation/gpu/drm-mm.rst                       |     2 +
 Documentation/gpu/drm-ras.rst                      |    10 +
 Documentation/gpu/drm-uapi.rst                     |     4 +-
 Documentation/gpu/drm-usage-stats.rst              |     2 +
 Documentation/gpu/index.rst                        |     1 +
 Documentation/gpu/introduction.rst                 |     2 +
 Documentation/gpu/komeda-kms.rst                   |     8 +-
 Documentation/gpu/rfc/index.rst                    |    26 +-
 Documentation/gpu/todo.rst                         |    23 -
 Documentation/gpu/xe/index.rst                     |     1 +
 Documentation/gpu/xe/xe_gt_stats.rst               |    11 +
 Documentation/netlink/specs/drm_ras.yaml           |    13 +-
 Documentation/netlink/specs/psp.yaml               |     2 +
 MAINTAINERS                                        |   105 +-
 Makefile                                           |     2 +-
 arch/arm64/include/asm/irqflags.h                  |    14 +-
 arch/arm64/include/asm/kernel-pgtable.h            |     7 +-
 arch/arm64/include/asm/kvm_asm.h                   |    28 +-
 arch/arm64/include/asm/kvm_host.h                  |     5 +-
 arch/arm64/kernel/pi/patch-scs.c                   |     4 +-
 arch/arm64/kernel/signal.c                         |    54 +-
 arch/arm64/kvm/arm.c                               |     4 +
 arch/arm64/kvm/config.c                            |    23 +-
 arch/arm64/kvm/hyp/nvhe/hyp-main.c                 |    30 +-
 arch/arm64/kvm/hyp/nvhe/pkvm.c                     |    38 +-
 arch/arm64/kvm/hyp/nvhe/setup.c                    |     8 +-
 arch/arm64/kvm/vgic/vgic-mmio-v2.c                 |     2 +-
 arch/arm64/kvm/vgic/vgic-mmio-v3.c                 |     2 +-
 arch/s390/kernel/debug.c                           |     8 +
 arch/s390/mm/fault.c                               |     2 +-
 arch/sh/include/asm/setup.h                        |     2 +-
 crypto/authencesn.c                                |     5 +
 drivers/accel/amdxdna/Makefile                     |     1 +
 drivers/accel/amdxdna/aie.c                        |    48 +
 drivers/accel/amdxdna/aie.h                        |     9 +
 drivers/accel/amdxdna/aie2_ctx.c                   |     4 +-
 drivers/accel/amdxdna/aie2_error.c                 |     7 +-
 drivers/accel/amdxdna/aie2_message.c               |    65 +-
 drivers/accel/amdxdna/aie2_pci.c                   |    54 +-
 drivers/accel/amdxdna/aie2_pci.h                   |    36 +-
 drivers/accel/amdxdna/aie4_ctx.c                   |   333 +
 drivers/accel/amdxdna/aie4_host_queue.h            |    24 +
 drivers/accel/amdxdna/aie4_message.c               |    56 +
 drivers/accel/amdxdna/aie4_msg_priv.h              |    98 +
 drivers/accel/amdxdna/aie4_pci.c                   |   340 +-
 drivers/accel/amdxdna/aie4_pci.h                   |    38 +-
 drivers/accel/amdxdna/amdxdna_ctx.c                |    40 +
 drivers/accel/amdxdna/amdxdna_ctx.h                |     7 +-
 drivers/accel/amdxdna/amdxdna_gem.c                |     5 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |    25 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |     4 +
 drivers/accel/amdxdna/npu3_regs.c                  |    25 +-
 drivers/accel/qaic/qaic.h                          |     4 +-
 drivers/accel/qaic/qaic_drv.c                      |     8 +-
 drivers/acpi/acpi_tad.c                            |    35 +-
 drivers/acpi/apei/einj-core.c                      |    55 +-
 drivers/acpi/arm64/cpuidle.c                       |    10 +-
 drivers/acpi/cppc_acpi.c                           |     6 +-
 drivers/acpi/video_detect.c                        |     8 +
 drivers/ata/pata_parport/pata_parport.c            |    21 +-
 drivers/base/regmap/regmap-sdw-mbq.c               |     2 +-
 drivers/cdrom/cdrom.c                              |    73 +-
 drivers/dpll/dpll_netlink.c                        |    10 +
 drivers/dpll/dpll_netlink.h                        |     2 -
 drivers/gpu/buddy.c                                |    11 +
 drivers/gpu/drm/adp/adp_drv.c                      |    12 +-
 drivers/gpu/drm/amd/amdgpu/Makefile                |     2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu.h                |    44 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_bios.c           |     4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cper.c           |    12 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |    27 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c      |    33 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.h      |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c            |    17 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gart.c           |    13 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c            |    25 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c            |    51 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.h            |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c            |    21 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.h            |     4 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_ih.h             |     6 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_imu.h            |     1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c            |    57 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_mes.c            |    84 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_mes.h            |    23 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h           |     4 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_nbio.c           |    10 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_nbio.h           |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c         |    18 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c            |     9 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c     |     2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.c     |    18 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.h     |     3 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_reset.h          |    69 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c            |   331 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h            |    20 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq.c          |    22 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq.h          |     1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.c    |    28 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.h    |     3 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_vkms.c           |   127 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             |    19 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h             |     6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm_cpu.c         |    11 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm_pt.c          |     9 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c        |    11 +-
 drivers/gpu/drm/amd/amdgpu/cik_sdma.c              |    13 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v10_0.c             |     5 +
 drivers/gpu/drm/amd/amdgpu/gfx_v11_0.c             |    69 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v12_0.c             |    67 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v12_1.c             |   110 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v12_1_pkt.h         |   415 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v6_0.c              |    66 +
 drivers/gpu/drm/amd/amdgpu/gfx_v7_0.c              |     7 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v8_0.c              |     6 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c              |     9 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c            |     6 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v10_0.c             |    24 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v11_0.c             |     5 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v12_0.c             |    11 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v12_1.c             |    13 +
 drivers/gpu/drm/amd/amdgpu/gmc_v6_0.c              |    28 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v7_0.c              |    30 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v8_0.c              |    34 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v9_0.c              |    75 +-
 drivers/gpu/drm/amd/amdgpu/ih_v7_0.c               |    40 +-
 drivers/gpu/drm/amd/amdgpu/imu_v12_1.c             |    12 +-
 drivers/gpu/drm/amd/amdgpu/jpeg_v2_0.c             |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v2_5.c             |     4 +-
 drivers/gpu/drm/amd/amdgpu/jpeg_v3_0.c             |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v4_0.c             |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v4_0_3.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v4_0_5.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v5_0_0.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v5_0_1.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v5_0_2.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/jpeg_v5_3_0.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/mes_userqueue.c         |    99 +-
 drivers/gpu/drm/amd/amdgpu/mes_v12_1.c             |   147 +-
 drivers/gpu/drm/amd/amdgpu/nbio_v6_3_2.c           |   369 +
 drivers/gpu/drm/amd/amdgpu/nbio_v6_3_2.h           |    31 +
 drivers/gpu/drm/amd/amdgpu/nv.c                    |    31 +-
 drivers/gpu/drm/amd/amdgpu/psp_v15_0_8.c           |     1 +
 drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c             |     8 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c             |     8 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c             |    21 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c           |    12 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c             |    11 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c             |    14 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v6_0.c             |    16 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v7_0.c             |    16 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v7_1.c             |    12 +-
 drivers/gpu/drm/amd/amdgpu/si_dma.c                |    12 +-
 drivers/gpu/drm/amd/amdgpu/soc15.c                 |    30 +-
 drivers/gpu/drm/amd/amdgpu/soc21.c                 |    30 +-
 drivers/gpu/drm/amd/amdgpu/soc24.c                 |    21 +-
 drivers/gpu/drm/amd/amdgpu/soc_v1_0.c              |    33 +-
 drivers/gpu/drm/amd/amdgpu/uvd_v3_1.c              |    10 +
 drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c              |     2 +
 drivers/gpu/drm/amd/amdgpu/vcn_v2_5.c              |     2 +
 drivers/gpu/drm/amd/amdgpu/vcn_v3_0.c              |     7 +-
 drivers/gpu/drm/amd/amdgpu/vcn_v4_0.c              |     5 +-
 drivers/gpu/drm/amd/amdgpu/vcn_v4_0_3.c            |     1 +
 drivers/gpu/drm/amd/amdgpu/vcn_v4_0_5.c            |     1 +
 drivers/gpu/drm/amd/amdgpu/vcn_v5_0_0.c            |     1 +
 drivers/gpu/drm/amd/amdgpu/vcn_v5_0_1.c            |     1 +
 drivers/gpu/drm/amd/amdgpu/vcn_v5_0_2.c            |     1 +
 drivers/gpu/drm/amd/amdkfd/kfd_chardev.c           |    43 +-
 drivers/gpu/drm/amd/amdkfd/kfd_device.c            |    33 +-
 .../gpu/drm/amd/amdkfd/kfd_device_queue_manager.c  |   157 +-
 .../gpu/drm/amd/amdkfd/kfd_device_queue_manager.h  |     4 +-
 .../amd/amdkfd/kfd_device_queue_manager_v12_1.c    |    19 +-
 drivers/gpu/drm/amd/amdkfd/kfd_events.c            |     5 +
 drivers/gpu/drm/amd/amdkfd/kfd_migrate.c           |     3 +-
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v12_1.c |     6 +-
 drivers/gpu/drm/amd/amdkfd/kfd_priv.h              |    21 +-
 drivers/gpu/drm/amd/amdkfd/kfd_process.c           |    76 -
 drivers/gpu/drm/amd/amdkfd/kfd_svm.c               |    15 +-
 drivers/gpu/drm/amd/amdkfd/kfd_topology.c          |     1 +
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   434 +-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h  |    16 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_color.c    |    12 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_crc.c  |    36 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_crtc.c |    74 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_crtc.h |     5 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_debugfs.c  |    60 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |    44 +
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_ism.c  |    26 +-
 .../amd/display/amdgpu_dm/amdgpu_dm_mst_types.c    |    22 +-
 .../amd/display/amdgpu_dm/amdgpu_dm_mst_types.h    |     4 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c    |     6 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_psr.c  |   244 +-
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_psr.h  |    13 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_replay.c   |   143 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_replay.h   |    28 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_services.c |    27 +
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_trace.h    |    20 +-
 drivers/gpu/drm/amd/display/dc/basics/conversion.c |     2 +-
 .../gpu/drm/amd/display/dc/basics/custom_float.c   |     2 +-
 drivers/gpu/drm/amd/display/dc/basics/dce_calcs.c  |     6 +-
 drivers/gpu/drm/amd/display/dc/bios/bios_parser.c  |    79 +-
 drivers/gpu/drm/amd/display/dc/bios/bios_parser2.c |    21 +-
 .../gpu/drm/amd/display/dc/bios/command_table.c    |    12 +-
 .../gpu/drm/amd/display/dc/bios/command_table2.c   |     4 +-
 .../amd/display/dc/clk_mgr/dce110/dce110_clk_mgr.c |    12 +-
 .../drm/amd/display/dc/clk_mgr/dcn10/rv1_clk_mgr.c |     2 +-
 .../amd/display/dc/clk_mgr/dcn20/dcn20_clk_mgr.c   |    11 +-
 .../drm/amd/display/dc/clk_mgr/dcn21/rn_clk_mgr.c  |    42 +-
 .../amd/display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c   |    56 +-
 .../drm/amd/display/dc/clk_mgr/dcn301/vg_clk_mgr.c |    43 +-
 .../amd/display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c   |    55 +-
 .../amd/display/dc/clk_mgr/dcn314/dcn314_clk_mgr.c |    69 +-
 .../amd/display/dc/clk_mgr/dcn315/dcn315_clk_mgr.c |    68 +-
 .../amd/display/dc/clk_mgr/dcn316/dcn316_clk_mgr.c |    58 +-
 .../amd/display/dc/clk_mgr/dcn32/dcn32_clk_mgr.c   |    64 +-
 .../amd/display/dc/clk_mgr/dcn35/dcn35_clk_mgr.c   |   127 +-
 .../amd/display/dc/clk_mgr/dcn401/dcn401_clk_mgr.c |    59 +-
 .../amd/display/dc/clk_mgr/dcn42/dcn42_clk_mgr.c   |    48 +-
 .../drm/amd/display/dc/clk_mgr/dcn42/dcn42_smu.c   |     1 -
 drivers/gpu/drm/amd/display/dc/core/dc.c           |   993 +-
 .../gpu/drm/amd/display/dc/core/dc_hw_sequencer.c  |  1102 +-
 .../gpu/drm/amd/display/dc/core/dc_link_enc_cfg.c  |    11 +-
 drivers/gpu/drm/amd/display/dc/core/dc_resource.c  |   133 +-
 drivers/gpu/drm/amd/display/dc/core/dc_state.c     |     4 +-
 drivers/gpu/drm/amd/display/dc/core/dc_stream.c    |    40 +-
 drivers/gpu/drm/amd/display/dc/core/dc_surface.c   |     8 +-
 drivers/gpu/drm/amd/display/dc/dc.h                |    99 +-
 drivers/gpu/drm/amd/display/dc/dc_bios_types.h     |     3 +-
 drivers/gpu/drm/amd/display/dc/dc_dmub_srv.c       |   148 +-
 drivers/gpu/drm/amd/display/dc/dc_dmub_srv.h       |     9 +-
 drivers/gpu/drm/amd/display/dc/dc_fused_io.c       |     6 +-
 drivers/gpu/drm/amd/display/dc/dc_helper.c         |    16 +-
 drivers/gpu/drm/amd/display/dc/dc_stream.h         |    42 +-
 drivers/gpu/drm/amd/display/dc/dc_types.h          |    54 +-
 .../gpu/drm/amd/display/dc/dccg/dcn31/dcn31_dccg.c |     4 +-
 .../drm/amd/display/dc/dccg/dcn401/dcn401_dccg.c   |    20 +-
 .../gpu/drm/amd/display/dc/dccg/dcn42/dcn42_dccg.c |     2 +
 drivers/gpu/drm/amd/display/dc/dce/dce_aux.c       |     4 +-
 .../gpu/drm/amd/display/dc/dce/dce_clock_source.c  |    24 +-
 drivers/gpu/drm/amd/display/dc/dce/dce_i2c_hw.c    |     2 +-
 drivers/gpu/drm/amd/display/dc/dce/dce_i2c_sw.c    |    16 +-
 drivers/gpu/drm/amd/display/dc/dce/dce_ipp.c       |     2 +-
 .../gpu/drm/amd/display/dc/dce/dce_link_encoder.c  |     7 +-
 .../gpu/drm/amd/display/dc/dce/dce_panel_cntl.c    |     4 +-
 drivers/gpu/drm/amd/display/dc/dce/dce_transform.c |    12 +-
 drivers/gpu/drm/amd/display/dc/dce/dmub_abm_lcd.c  |    16 +-
 drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c      |    12 +-
 drivers/gpu/drm/amd/display/dc/dce/dmub_replay.c   |    23 +-
 .../amd/display/dc/dce80/dce80_timing_generator.c  |     2 +-
 .../gpu/drm/amd/display/dc/dcn10/dcn10_cm_common.c |    16 +-
 .../display/dc/dcn10/dcn10_hw_sequencer_debug.c    |    22 +-
 .../gpu/drm/amd/display/dc/dcn20/dcn20_dwb_scl.c   |     2 +-
 .../gpu/drm/amd/display/dc/dcn30/dcn30_cm_common.c |     8 +-
 .../gpu/drm/amd/display/dc/dcn30/dcn30_mmhubbub.c  |     4 +-
 .../amd/display/dc/dio/dcn10/dcn10_link_encoder.c  |    11 +-
 .../dc/dio/dcn30/dcn30_dio_stream_encoder.c        |     6 +-
 .../dc/dio/dcn401/dcn401_dio_stream_encoder.c      |     2 +-
 .../display/dc/dio/dcn42/dcn42_dio_link_encoder.h  |     2 -
 .../dc/dio/dcn42/dcn42_dio_stream_encoder.c        |     4 +-
 .../drm/amd/display/dc/dml/calcs/dcn_calc_auto.c   |  1824 +-
 .../drm/amd/display/dc/dml/calcs/dcn_calc_math.c   |     6 +-
 .../gpu/drm/amd/display/dc/dml/calcs/dcn_calcs.c   |   294 +-
 .../gpu/drm/amd/display/dc/dml/dcn20/dcn20_fpu.c   |   153 +-
 .../amd/display/dc/dml/dcn20/display_mode_vba_20.c |   328 +-
 .../display/dc/dml/dcn20/display_mode_vba_20v2.c   |   326 +-
 .../display/dc/dml/dcn20/display_rq_dlg_calc_20.c  |   164 +-
 .../dc/dml/dcn20/display_rq_dlg_calc_20v2.c        |   164 +-
 .../amd/display/dc/dml/dcn21/display_mode_vba_21.c |   332 +-
 .../display/dc/dml/dcn21/display_rq_dlg_calc_21.c  |    80 +-
 .../gpu/drm/amd/display/dc/dml/dcn30/dcn30_fpu.c   |    90 +-
 .../amd/display/dc/dml/dcn30/display_mode_vba_30.c |   411 +-
 .../display/dc/dml/dcn30/display_rq_dlg_calc_30.c  |    82 +-
 .../gpu/drm/amd/display/dc/dml/dcn301/dcn301_fpu.c |    25 +-
 .../gpu/drm/amd/display/dc/dml/dcn302/dcn302_fpu.c |    18 +-
 .../gpu/drm/amd/display/dc/dml/dcn303/dcn303_fpu.c |    18 +-
 .../gpu/drm/amd/display/dc/dml/dcn31/dcn31_fpu.c   |    41 +-
 .../amd/display/dc/dml/dcn31/display_mode_vba_31.c |   475 +-
 .../display/dc/dml/dcn31/display_rq_dlg_calc_31.c  |    76 +-
 .../gpu/drm/amd/display/dc/dml/dcn314/dcn314_fpu.c |    13 +-
 .../display/dc/dml/dcn314/display_mode_vba_314.c   |   487 +-
 .../dc/dml/dcn314/display_rq_dlg_calc_314.c        |    80 +-
 .../gpu/drm/amd/display/dc/dml/dcn32/dcn32_fpu.c   |   403 +-
 .../amd/display/dc/dml/dcn32/display_mode_vba_32.c |   195 +-
 .../dc/dml/dcn32/display_mode_vba_util_32.c        |   326 +-
 .../display/dc/dml/dcn32/display_rq_dlg_calc_32.c  |   138 +-
 .../gpu/drm/amd/display/dc/dml/dcn321/dcn321_fpu.c |    95 +-
 .../gpu/drm/amd/display/dc/dml/dcn35/dcn35_fpu.c   |    27 +-
 .../gpu/drm/amd/display/dc/dml/dcn351/dcn351_fpu.c |    27 +-
 .../gpu/drm/amd/display/dc/dml/display_mode_vba.c  |     8 +-
 .../amd/display/dc/dml/dml1_display_rq_dlg_calc.c  |    32 +-
 .../gpu/drm/amd/display/dc/dml/dml_inline_defs.h   |    18 +-
 .../gpu/drm/amd/display/dc/dml/dsc/rc_calc_fpu.c   |    82 +-
 drivers/gpu/drm/amd/display/dc/dml2_0/README.md    |    31 +
 .../drm/amd/display/dc/dml2_0/display_mode_core.c  |    14 +-
 .../drm/amd/display/dc/dml2_0/display_mode_util.c  |    20 +-
 .../dc/dml2_0/dml21/dml21_translation_helper.c     |    15 +-
 .../drm/amd/display/dc/dml2_0/dml21/dml21_utils.c  |     2 +-
 .../display/dc/dml2_0/dml21/inc/dml_top_types.h    |     1 -
 .../dml2_0/dml21/src/dml2_core/dml2_core_factory.c |     1 -
 .../dml2_0/dml21/src/dml2_dpmm/dml2_dpmm_factory.c |     1 -
 .../dc/dml2_0/dml21/src/dml2_mcg/dml2_mcg_dcn42.c  |     2 +-
 .../dml2_0/dml21/src/dml2_mcg/dml2_mcg_factory.c   |     1 -
 .../dml2_0/dml21/src/dml2_pmo/dml2_pmo_factory.c   |     3 +-
 .../dml21/src/dml2_top/dml2_top_interfaces.c       |     1 -
 .../dc/dml2_0/dml21/src/dml2_top/dml2_top_legacy.h |     9 -
 .../drm/amd/display/dc/dml2_0/dml2_mall_phantom.c  |   105 +-
 .../gpu/drm/amd/display/dc/dml2_0/dml2_policy.c    |     6 +-
 .../display/dc/dml2_0/dml2_translation_helper.c    |     4 +-
 drivers/gpu/drm/amd/display/dc/dml2_0/dml2_utils.c |    40 +-
 .../drm/amd/display/dc/dpp/dcn10/dcn10_dpp_cm.c    |     2 +-
 .../drm/amd/display/dc/dpp/dcn10/dcn10_dpp_dscl.c  |     2 +-
 .../gpu/drm/amd/display/dc/dpp/dcn30/dcn30_dpp.c   |    13 +-
 .../drm/amd/display/dc/dpp/dcn401/dcn401_dpp_cm.c  |     2 +-
 .../amd/display/dc/dpp/dcn401/dcn401_dpp_dscl.c    |     2 +-
 .../gpu/drm/amd/display/dc/dpp/dcn42/dcn42_dpp.c   |    15 +-
 drivers/gpu/drm/amd/display/dc/dsc/dc_dsc.c        |    13 +-
 .../gpu/drm/amd/display/dc/dsc/dcn20/dcn20_dsc.c   |    19 +-
 .../gpu/drm/amd/display/dc/dsc/dcn401/dcn401_dsc.c |     3 +-
 drivers/gpu/drm/amd/display/dc/dsc/rc_calc_dpi.c   |    33 +-
 drivers/gpu/drm/amd/display/dc/gpio/gpio_service.c |     3 +
 drivers/gpu/drm/amd/display/dc/gpio/hw_ddc.c       |     2 +-
 drivers/gpu/drm/amd/display/dc/gpio/hw_generic.c   |     2 +-
 drivers/gpu/drm/amd/display/dc/gpio/hw_gpio.c      |     2 +-
 drivers/gpu/drm/amd/display/dc/gpio/hw_gpio.h      |     9 +
 drivers/gpu/drm/amd/display/dc/gpio/hw_hpd.c       |     2 +-
 .../dc/hpo/dcn31/dcn31_hpo_dp_stream_encoder.c     |     2 +-
 .../drm/amd/display/dc/hubbub/dcn10/dcn10_hubbub.c |    16 +-
 .../drm/amd/display/dc/hubbub/dcn20/dcn20_hubbub.c |    28 +-
 .../drm/amd/display/dc/hubbub/dcn20/dcn20_hubbub.h |     3 +
 .../drm/amd/display/dc/hubbub/dcn21/dcn21_hubbub.c |    12 +-
 .../drm/amd/display/dc/hubbub/dcn30/dcn30_hubbub.c |    12 +-
 .../drm/amd/display/dc/hubbub/dcn31/dcn31_hubbub.c |    12 +-
 .../amd/display/dc/hubbub/dcn401/dcn401_hubbub.c   |     7 +-
 .../drm/amd/display/dc/hubbub/dcn42/dcn42_hubbub.c |     5 +-
 .../gpu/drm/amd/display/dc/hubp/dcn20/dcn20_hubp.c |     6 +-
 .../gpu/drm/amd/display/dc/hubp/dcn21/dcn21_hubp.c |     4 +-
 .../gpu/drm/amd/display/dc/hubp/dcn30/dcn30_hubp.c |     4 +-
 .../drm/amd/display/dc/hubp/dcn401/dcn401_hubp.c   |   229 +-
 .../drm/amd/display/dc/hubp/dcn401/dcn401_hubp.h   |    23 +-
 .../gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.c |    78 +-
 .../gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.h |    10 +-
 .../drm/amd/display/dc/hwss/dce110/dce110_hwseq.c  |   165 +-
 .../drm/amd/display/dc/hwss/dce120/dce120_hwseq.c  |    12 +-
 .../drm/amd/display/dc/hwss/dcn10/dcn10_hwseq.c    |    67 +-
 .../drm/amd/display/dc/hwss/dcn20/dcn20_hwseq.c    |    47 +-
 .../drm/amd/display/dc/hwss/dcn21/dcn21_hwseq.c    |    10 +-
 .../drm/amd/display/dc/hwss/dcn30/dcn30_hwseq.c    |    31 +-
 .../drm/amd/display/dc/hwss/dcn31/dcn31_hwseq.c    |    12 +-
 .../drm/amd/display/dc/hwss/dcn314/dcn314_hwseq.c  |    86 +-
 .../drm/amd/display/dc/hwss/dcn32/dcn32_hwseq.c    |    36 +-
 .../drm/amd/display/dc/hwss/dcn35/dcn35_hwseq.c    |    81 +-
 .../drm/amd/display/dc/hwss/dcn351/dcn351_hwseq.c  |     2 +-
 .../drm/amd/display/dc/hwss/dcn401/dcn401_hwseq.c  |   492 +-
 .../drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.c    |   517 +-
 .../drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.h    |     9 +-
 drivers/gpu/drm/amd/display/dc/hwss/hw_sequencer.h |   393 +-
 drivers/gpu/drm/amd/display/dc/inc/bw_fixed.h      |     2 +-
 drivers/gpu/drm/amd/display/dc/inc/core_types.h    |    10 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/clk_mgr.h    |    22 +
 drivers/gpu/drm/amd/display/dc/inc/hw/hubp.h       |    37 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/mpc.h        |    79 +-
 .../gpu/drm/amd/display/dc/inc/hw/stream_encoder.h |     1 +
 .../drm/amd/display/dc/inc/soc_and_ip_translator.h |    19 +-
 .../amd/display/dc/irq/dce110/irq_service_dce110.c |     2 +-
 .../amd/display/dc/link/accessories/link_dp_cts.c  |    37 +-
 .../amd/display/dc/link/hwss/link_hwss_hpo_dp.c    |     4 +-
 .../gpu/drm/amd/display/dc/link/link_detection.c   |    10 +-
 drivers/gpu/drm/amd/display/dc/link/link_dpms.c    |    26 +-
 drivers/gpu/drm/amd/display/dc/link/link_factory.c |    12 +-
 .../gpu/drm/amd/display/dc/link/link_validation.c  |     4 +-
 .../drm/amd/display/dc/link/protocols/link_ddc.c   |     5 +-
 .../display/dc/link/protocols/link_dp_capability.c |     6 +-
 .../amd/display/dc/link/protocols/link_dp_dpia.c   |     2 +-
 .../display/dc/link/protocols/link_dp_dpia_bw.c    |    12 +-
 .../dc/link/protocols/link_dp_irq_handler.c        |    53 +-
 .../dc/link/protocols/link_dp_panel_replay.c       |    27 +-
 .../display/dc/link/protocols/link_dp_training.c   |     4 +-
 .../dc/link/protocols/link_dp_training_8b_10b.c    |    10 +-
 .../dc/link/protocols/link_edp_panel_control.c     |    41 +-
 .../amd/display/dc/mmhubbub/dcn20/dcn20_mmhubbub.c |     4 +-
 .../amd/display/dc/mmhubbub/dcn32/dcn32_mmhubbub.c |     4 +-
 .../gpu/drm/amd/display/dc/mpc/dcn10/dcn10_mpc.c   |     2 +-
 .../gpu/drm/amd/display/dc/mpc/dcn401/dcn401_mpc.c |   177 +-
 .../gpu/drm/amd/display/dc/mpc/dcn401/dcn401_mpc.h |    25 +-
 .../gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.c   |   392 +-
 .../gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.h   |    49 +-
 .../gpu/drm/amd/display/dc/optc/dcn10/dcn10_optc.c |     2 +-
 .../gpu/drm/amd/display/dc/optc/dcn20/dcn20_optc.c |     4 +-
 .../gpu/drm/amd/display/dc/optc/dcn42/dcn42_optc.h |     1 -
 .../drm/amd/display/dc/pg/dcn35/dcn35_pg_cntl.c    |     6 +-
 .../drm/amd/display/dc/pg/dcn42/dcn42_pg_cntl.c    |     4 +-
 .../display/dc/resource/dce110/dce110_resource.c   |     4 +-
 .../amd/display/dc/resource/dce60/dce60_resource.c |     3 +-
 .../amd/display/dc/resource/dce80/dce80_resource.c |     3 +-
 .../amd/display/dc/resource/dcn10/dcn10_resource.c |     4 +-
 .../amd/display/dc/resource/dcn20/dcn20_resource.c |    24 +-
 .../amd/display/dc/resource/dcn21/dcn21_resource.c |     2 +-
 .../amd/display/dc/resource/dcn30/dcn30_resource.c |    14 +-
 .../display/dc/resource/dcn301/dcn301_resource.c   |     8 +-
 .../display/dc/resource/dcn302/dcn302_resource.c   |     4 +-
 .../display/dc/resource/dcn303/dcn303_resource.c   |     4 +-
 .../amd/display/dc/resource/dcn31/dcn31_resource.c |     4 +-
 .../display/dc/resource/dcn314/dcn314_resource.c   |     4 +-
 .../display/dc/resource/dcn315/dcn315_resource.c   |     4 +-
 .../display/dc/resource/dcn316/dcn316_resource.c   |     4 +-
 .../amd/display/dc/resource/dcn32/dcn32_resource.c |    20 +-
 .../dc/resource/dcn32/dcn32_resource_helpers.c     |     2 +-
 .../display/dc/resource/dcn321/dcn321_resource.c   |     4 +-
 .../amd/display/dc/resource/dcn35/dcn35_resource.c |     4 +-
 .../display/dc/resource/dcn351/dcn351_resource.c   |     4 +-
 .../amd/display/dc/resource/dcn36/dcn36_resource.c |     4 +-
 .../display/dc/resource/dcn401/dcn401_resource.c   |     4 +-
 .../amd/display/dc/resource/dcn42/dcn42_resource.c |    58 +-
 .../dcn401/dcn401_soc_and_ip_translator.c          |    42 +-
 .../dcn42/dcn42_soc_and_ip_translator.c            |    20 +-
 drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h    |   264 +-
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn401.c |     2 +-
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn42.c  |     2 +-
 .../amd/display/include/grph_object_ctrl_defs.h    |     4 +
 .../drm/amd/display/modules/color/color_gamma.c    |    12 +-
 .../gpu/drm/amd/display/modules/inc/mod_power.h    |   415 +
 .../amd/display/modules/info_packet/info_packet.c  |     2 +-
 drivers/gpu/drm/amd/display/modules/power/Makefile |     2 +-
 drivers/gpu/drm/amd/display/modules/power/power.c  |  3024 ++
 .../drm/amd/display/modules/power/power_helpers.c  |    16 +-
 drivers/gpu/drm/amd/display/modules/vmid/vmid.c    |     6 +-
 drivers/gpu/drm/amd/include/amd_cper.h             |     2 +-
 .../drm/amd/include/asic_reg/gc/gc_12_1_0_offset.h |   110 +
 .../amd/include/asic_reg/gc/gc_12_1_0_sh_mask.h    |   455 +
 .../drm/amd/include/asic_reg/gc/gc_12_1_1_offset.h |   149 +
 .../amd/include/asic_reg/gc/gc_12_1_1_sh_mask.h    |   377 +
 .../amd/include/asic_reg/nbio/nbio_6_3_2_offset.h  | 13149 +++++
 .../amd/include/asic_reg/nbio/nbio_6_3_2_sh_mask.h | 49475 +++++++++++++++++++
 drivers/gpu/drm/amd/pm/amdgpu_pm.c                 |     6 +-
 .../gpu/drm/amd/pm/powerplay/smumgr/ci_smumgr.c    |    13 +-
 drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c |     1 +
 .../gpu/drm/amd/pm/swsmu/smu13/smu_v13_0_6_ppt.c   |     9 +-
 .../gpu/drm/amd/pm/swsmu/smu15/smu_v15_0_8_ppt.c   |   215 +-
 .../gpu/drm/amd/pm/swsmu/smu15/smu_v15_0_8_ppt.h   |    34 +
 drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c             |     2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c   |     8 +-
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c    |    10 +-
 .../gpu/drm/arm/display/komeda/komeda_pipeline.h   |    14 +-
 .../drm/arm/display/komeda/komeda_pipeline_state.c |    28 +-
 drivers/gpu/drm/arm/display/komeda/komeda_plane.c  |     4 +-
 drivers/gpu/drm/arm/hdlcd_crtc.c                   |    10 +-
 drivers/gpu/drm/arm/malidp_crtc.c                  |     6 +-
 drivers/gpu/drm/arm/malidp_drv.c                   |     4 +-
 drivers/gpu/drm/arm/malidp_mw.c                    |     2 +-
 drivers/gpu/drm/arm/malidp_mw.h                    |     2 +-
 drivers/gpu/drm/arm/malidp_planes.c                |     6 +-
 drivers/gpu/drm/armada/armada_crtc.c               |    10 +-
 drivers/gpu/drm/armada/armada_overlay.c            |    10 +-
 drivers/gpu/drm/armada/armada_plane.c              |     6 +-
 drivers/gpu/drm/armada/armada_plane.h              |     2 +-
 drivers/gpu/drm/ast/ast_cursor.c                   |     6 +-
 drivers/gpu/drm/ast/ast_dp.c                       |     4 +-
 drivers/gpu/drm/ast/ast_dp501.c                    |     4 +-
 drivers/gpu/drm/ast/ast_mode.c                     |    18 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c     |    10 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c       |     2 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h       |     2 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c    |     6 +-
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |     4 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |    14 +-
 drivers/gpu/drm/bridge/analogix/anx7625.c          |     4 +-
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c     |     4 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |     6 +-
 drivers/gpu/drm/bridge/chipone-icn6211.c           |     6 +-
 drivers/gpu/drm/bridge/fsl-ldb.c                   |     4 +-
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-pvi.c       |     4 +-
 drivers/gpu/drm/bridge/imx/imx8qm-ldb.c            |     4 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-ldb.c           |     6 +-
 .../gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c    |     2 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c    |     4 +-
 drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c       |     2 +-
 drivers/gpu/drm/bridge/inno-hdmi.c                 |     6 +-
 drivers/gpu/drm/bridge/ite-it6263.c                |     4 +-
 drivers/gpu/drm/bridge/ite-it6505.c                |     8 +-
 drivers/gpu/drm/bridge/ite-it66121.c               |     4 +-
 drivers/gpu/drm/bridge/lontium-lt9211.c            |     4 +-
 drivers/gpu/drm/bridge/lontium-lt9611.c            |     8 +-
 drivers/gpu/drm/bridge/microchip-lvds.c            |     4 +-
 drivers/gpu/drm/bridge/nwl-dsi.c                   |     4 +-
 drivers/gpu/drm/bridge/panel.c                     |     8 +-
 drivers/gpu/drm/bridge/parade-ps8640.c             |     4 +-
 drivers/gpu/drm/bridge/samsung-dsim.c              |     8 +-
 drivers/gpu/drm/bridge/sii902x.c                   |     4 +-
 drivers/gpu/drm/bridge/ssd2825.c                   |     6 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |     4 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |     4 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |     6 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c      |     6 +-
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c     |     6 +-
 drivers/gpu/drm/bridge/tc358762.c                  |     6 +-
 drivers/gpu/drm/bridge/tc358767.c                  |     8 +-
 drivers/gpu/drm/bridge/tc358768.c                  |     8 +-
 drivers/gpu/drm/bridge/tc358775.c                  |     6 +-
 drivers/gpu/drm/bridge/ti-dlpc3433.c               |     6 +-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c              |     6 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              |    22 +-
 drivers/gpu/drm/bridge/ti-tdp158.c                 |     4 +-
 drivers/gpu/drm/ci/xfails/vkms-none-skips.txt      |    20 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |     2 +-
 drivers/gpu/drm/display/drm_dp_helper.c            |    71 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c      |    35 +-
 drivers/gpu/drm/display/drm_dp_tunnel.c            |    31 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |     6 +-
 drivers/gpu/drm/drm_atomic.c                       |   128 +-
 drivers/gpu/drm/drm_atomic_helper.c                |   172 +-
 drivers/gpu/drm/drm_atomic_state_helper.c          |     2 +-
 drivers/gpu/drm/drm_atomic_uapi.c                  |    28 +-
 drivers/gpu/drm/drm_blend.c                        |     8 +-
 drivers/gpu/drm/drm_bridge.c                       |    14 +-
 drivers/gpu/drm/drm_buddy.c                        |     1 +
 drivers/gpu/drm/drm_client_modeset.c               |     8 +-
 drivers/gpu/drm/drm_color_mgmt.c                   |     8 +-
 drivers/gpu/drm/drm_crtc_helper.c                  |     2 +-
 drivers/gpu/drm/drm_crtc_internal.h                |    10 +-
 drivers/gpu/drm/drm_damage_helper.c                |    10 +-
 drivers/gpu/drm/drm_fb_helper.c                    |     8 +-
 drivers/gpu/drm/drm_framebuffer.c                  |     8 +-
 drivers/gpu/drm/drm_gem_framebuffer_helper.c       |     4 +-
 drivers/gpu/drm/drm_gpusvm.c                       |    10 +-
 drivers/gpu/drm/drm_mipi_dbi.c                     |     8 +-
 drivers/gpu/drm/drm_mode_object.c                  |     8 +-
 drivers/gpu/drm/drm_modeset_helper.c               |     2 +-
 drivers/gpu/drm/drm_pagemap.c                      |     5 +-
 drivers/gpu/drm/drm_panel.c                        |     7 +-
 drivers/gpu/drm/drm_ras.c                          |    43 +-
 drivers/gpu/drm/drm_ras_nl.c                       |    13 +
 drivers/gpu/drm/drm_ras_nl.h                       |     2 +
 drivers/gpu/drm/drm_self_refresh_helper.c          |    12 +-
 drivers/gpu/drm/drm_simple_kms_helper.c            |    10 +-
 drivers/gpu/drm/drm_vblank_helper.c                |     6 +-
 drivers/gpu/drm/exynos/exynos_drm_crtc.c           |    10 +-
 drivers/gpu/drm/exynos/exynos_drm_plane.c          |     6 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c         |     6 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_plane.c        |     6 +-
 drivers/gpu/drm/gud/gud_connector.c                |    10 +-
 drivers/gpu/drm/gud/gud_drv.c                      |     1 +
 drivers/gpu/drm/gud/gud_internal.h                 |     8 +-
 drivers/gpu/drm/gud/gud_pipe.c                     |     8 +-
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_comm.h       |     1 +
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_hw.h         |     1 +
 drivers/gpu/drm/hisilicon/hibmc/dp/dp_link.c       |     2 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c     |    90 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_dp.c     |    39 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c    |    14 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.h    |     1 +
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_vdac.c   |    75 +-
 drivers/gpu/drm/hisilicon/kirin/kirin_drm_ade.c    |    14 +-
 drivers/gpu/drm/hyperv/hyperv_drm_modeset.c        |     6 +-
 drivers/gpu/drm/i915/Kconfig.debug                 |     2 +-
 drivers/gpu/drm/i915/Makefile                      |     7 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c            |     2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.h            |     6 +-
 drivers/gpu/drm/i915/display/i9xx_display_sr.c     |     2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |     2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c             |    75 +-
 drivers/gpu/drm/i915/display/intel_atomic.c        |    16 +-
 drivers/gpu/drm/i915/display/intel_atomic.h        |    12 +-
 drivers/gpu/drm/i915/display/intel_audio.c         |    30 +-
 drivers/gpu/drm/i915/display/intel_backlight.c     |     2 +-
 drivers/gpu/drm/i915/display/intel_bo.c            |    27 +
 drivers/gpu/drm/i915/display/intel_bo.h            |     8 +
 drivers/gpu/drm/i915/display/intel_bw.c            |    58 +-
 drivers/gpu/drm/i915/display/intel_casf.c          |   102 +-
 drivers/gpu/drm/i915/display/intel_casf.h          |     6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |   142 +-
 drivers/gpu/drm/i915/display/intel_color.c         |    58 +-
 drivers/gpu/drm/i915/display/intel_crt.c           |     2 +-
 .../gpu/drm/i915/display/intel_crtc_state_dump.c   |    26 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |     2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |    18 +-
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |    11 +-
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h |     3 +
 drivers/gpu/drm/i915/display/intel_de.c            |     8 +
 drivers/gpu/drm/i915/display/intel_de.h            |    17 +-
 drivers/gpu/drm/i915/display/intel_display.c       |   100 +-
 drivers/gpu/drm/i915/display/intel_display.h       |     6 +-
 .../drm/i915/display/intel_display_clock_gating.c  |   270 +
 .../drm/i915/display/intel_display_clock_gating.h  |    27 +
 drivers/gpu/drm/i915/display/intel_display_core.h  |    64 +-
 .../gpu/drm/i915/display/intel_display_debugfs.c   |     7 +-
 .../gpu/drm/i915/display/intel_display_device.c    |     2 +-
 .../gpu/drm/i915/display/intel_display_device.h    |     1 +
 .../gpu/drm/i915/display/intel_display_driver.c    |     8 +-
 .../gpu/drm/i915/display/intel_display_driver.h    |     4 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c   |     4 +
 drivers/gpu/drm/i915/display/intel_display_power.c |    14 +-
 .../gpu/drm/i915/display/intel_display_power_map.c |     2 +-
 .../drm/i915/display/intel_display_power_well.c    |    65 +-
 drivers/gpu/drm/i915/display/intel_display_regs.h  |    32 +
 drivers/gpu/drm/i915/display/intel_display_reset.c |    50 +-
 drivers/gpu/drm/i915/display/intel_display_reset.h |     8 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |    16 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c    |     2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |    12 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        |     2 +-
 drivers/gpu/drm/i915/display/intel_dp.c            |   297 +-
 .../gpu/drm/i915/display/intel_dp_link_training.c  |   124 +-
 .../gpu/drm/i915/display/intel_dp_link_training.h  |     2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |    15 +-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |    18 +
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h     |     6 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c      |   176 +-
 drivers/gpu/drm/i915/display/intel_dpll.c          |   144 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |     4 +-
 drivers/gpu/drm/i915/display/intel_dram.c          |    48 +-
 drivers/gpu/drm/i915/display/intel_fb.c            |    49 +-
 drivers/gpu/drm/i915/display/intel_fb.h            |     3 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h        |    27 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |    13 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c         |    40 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c      |   118 -
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h      |    24 -
 drivers/gpu/drm/i915/display/intel_fdi.c           |    13 +-
 drivers/gpu/drm/i915/display/intel_flipq.c         |     2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |    19 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          |   167 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c   |    30 +-
 drivers/gpu/drm/i915/display/intel_initial_plane.c |    83 +-
 drivers/gpu/drm/i915/display/intel_load_detect.c   |    20 +-
 drivers/gpu/drm/i915/display/intel_load_detect.h   |     6 +-
 drivers/gpu/drm/i915/display/intel_lpe_audio.c     |     2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c        |     2 +-
 drivers/gpu/drm/i915/display/intel_mchbar.c        |    78 +
 drivers/gpu/drm/i915/display/intel_mchbar.h        |    21 +
 drivers/gpu/drm/i915/display/intel_modeset_lock.c  |     2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |     9 +-
 drivers/gpu/drm/i915/display/intel_opregion.c      |     2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c       |    10 +-
 drivers/gpu/drm/i915/display/intel_parent.c        |    35 +-
 drivers/gpu/drm/i915/display/intel_parent.h        |     8 +-
 drivers/gpu/drm/i915/display/intel_pfit.c          |    24 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c      |     8 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |    27 +-
 drivers/gpu/drm/i915/display/intel_plane.h         |     3 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |     2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |    38 +-
 drivers/gpu/drm/i915/display/intel_quirks.c        |    17 +
 drivers/gpu/drm/i915/display/intel_quirks.h        |     1 +
 drivers/gpu/drm/i915/display/intel_rom.c           |    19 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c          |     2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c      |     2 +-
 drivers/gpu/drm/i915/display/intel_sprite_uapi.c   |     8 +-
 drivers/gpu/drm/i915/display/intel_tc.c            |     6 +-
 drivers/gpu/drm/i915/display/intel_tv.c            |     4 +-
 drivers/gpu/drm/i915/display/intel_vblank.c        |     4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           |    16 +-
 drivers/gpu/drm/i915/display/intel_wm.c            |    32 +-
 drivers/gpu/drm/i915/display/skl_scaler.c          |   110 +-
 drivers/gpu/drm/i915/display/skl_scaler.h          |     2 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c |    37 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       |   296 +-
 drivers/gpu/drm/i915/display/vlv_clock.c           |    13 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |    20 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c         |    38 +-
 drivers/gpu/drm/i915/display/vlv_sideband.c        |   136 +-
 drivers/gpu/drm/i915/display/vlv_sideband.h        |   166 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c         |     4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c               |     2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c       |     2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                 |     2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |     1 -
 drivers/gpu/drm/i915/gt/intel_llc.c                |     2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c        |     2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c              |    40 +-
 drivers/gpu/drm/i915/gt/intel_rps.c                |     4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c        |     1 -
 drivers/gpu/drm/i915/gvt/cfg_space.c               |     2 +-
 drivers/gpu/drm/i915/gvt/handlers.c                |     1 -
 drivers/gpu/drm/i915/i915_bo.c                     |   114 +
 drivers/gpu/drm/i915/i915_bo.h                     |     6 +
 drivers/gpu/drm/i915/i915_debugfs.c                |     2 +-
 drivers/gpu/drm/i915/i915_dpt.c                    |     5 +-
 drivers/gpu/drm/i915/i915_driver.c                 |     9 +-
 drivers/gpu/drm/i915/i915_drv.h                    |     2 +
 .../i915/{display/intel_fb_pin.c => i915_fb_pin.c} |   157 +-
 drivers/gpu/drm/i915/i915_freq.c                   |     2 +-
 drivers/gpu/drm/i915/i915_gmch.c                   |     2 +-
 drivers/gpu/drm/i915/i915_gtt_view_types.h         |    15 +
 drivers/gpu/drm/i915/i915_hwmon.c                  |     2 +-
 drivers/gpu/drm/i915/i915_initial_plane.c          |    33 +-
 drivers/gpu/drm/i915/i915_overlay.c                |     8 +-
 drivers/gpu/drm/i915/i915_pci.c                    |     2 +-
 drivers/gpu/drm/i915/i915_reg.h                    |    31 -
 drivers/gpu/drm/i915/i915_vma.c                    |    10 -
 drivers/gpu/drm/i915/i915_vma.h                    |     2 -
 drivers/gpu/drm/i915/intel_clock_gating.c          |   230 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c        |     2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c   |     1 +
 drivers/gpu/drm/i915/vlv_iosf_sb.c                 |     8 +
 drivers/gpu/drm/i915/vlv_iosf_sb.h                 |    16 +-
 drivers/gpu/drm/imagination/pvr_fw_trace.c         |     2 +-
 drivers/gpu/drm/imx/dc/dc-crtc.c                   |    10 +-
 drivers/gpu/drm/imx/dc/dc-plane.c                  |     6 +-
 drivers/gpu/drm/imx/dcss/dcss-crtc.c               |     8 +-
 drivers/gpu/drm/imx/dcss/dcss-plane.c              |     6 +-
 drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |     4 +-
 drivers/gpu/drm/imx/ipuv3/imx-drm.h                |     2 +-
 drivers/gpu/drm/imx/ipuv3/ipuv3-crtc.c             |    10 +-
 drivers/gpu/drm/imx/ipuv3/ipuv3-plane.c            |     8 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |    24 +-
 drivers/gpu/drm/ingenic/ingenic-ipu.c              |    10 +-
 drivers/gpu/drm/kmb/kmb_crtc.c                     |    10 +-
 drivers/gpu/drm/kmb/kmb_drv.h                      |     2 +-
 drivers/gpu/drm/kmb/kmb_dsi.c                      |     4 +-
 drivers/gpu/drm/kmb/kmb_dsi.h                      |     2 +-
 drivers/gpu/drm/kmb/kmb_plane.c                    |     6 +-
 drivers/gpu/drm/logicvc/logicvc_crtc.c             |     6 +-
 drivers/gpu/drm/logicvc/logicvc_layer.c            |     6 +-
 drivers/gpu/drm/loongson/lsdc_crtc.c               |     8 +-
 drivers/gpu/drm/loongson/lsdc_output_7a1000.c      |     2 +-
 drivers/gpu/drm/loongson/lsdc_output_7a2000.c      |     6 +-
 drivers/gpu/drm/loongson/lsdc_plane.c              |    22 +-
 drivers/gpu/drm/mediatek/mtk_crtc.c                |    12 +-
 drivers/gpu/drm/mediatek/mtk_crtc.h                |     2 +-
 drivers/gpu/drm/mediatek/mtk_dp.c                  |     4 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h             |     2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |     8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |     8 +-
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             |     8 +-
 drivers/gpu/drm/mediatek/mtk_plane.c               |    10 +-
 drivers/gpu/drm/meson/meson_crtc.c                 |    12 +-
 drivers/gpu/drm/meson/meson_encoder_cvbs.c         |     4 +-
 drivers/gpu/drm/meson/meson_encoder_dsi.c          |     4 +-
 drivers/gpu/drm/meson/meson_encoder_hdmi.c         |     4 +-
 drivers/gpu/drm/meson/meson_overlay.c              |     6 +-
 drivers/gpu/drm/meson/meson_plane.c                |     6 +-
 drivers/gpu/drm/mgag200/mgag200_drv.h              |    26 +-
 drivers/gpu/drm/mgag200/mgag200_g200.c             |     4 +-
 drivers/gpu/drm/mgag200/mgag200_g200eh.c           |     4 +-
 drivers/gpu/drm/mgag200/mgag200_g200eh3.c          |     2 +-
 drivers/gpu/drm/mgag200/mgag200_g200eh5.c          |     2 +-
 drivers/gpu/drm/mgag200/mgag200_g200er.c           |     6 +-
 drivers/gpu/drm/mgag200/mgag200_g200ev.c           |     6 +-
 drivers/gpu/drm/mgag200/mgag200_g200ew3.c          |     2 +-
 drivers/gpu/drm/mgag200/mgag200_g200se.c           |    10 +-
 drivers/gpu/drm/mgag200/mgag200_g200wb.c           |     4 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c             |    18 +-
 drivers/gpu/drm/mgag200/mgag200_vga_bmc.c          |     4 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           |    12 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        |     8 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h        |     4 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |     4 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h            |     2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.c          |    12 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_plane.h          |     2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c      |     2 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_crtc.c          |    10 +-
 drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c         |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c          |    10 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c           |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h           |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.c         |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_mixer.h         |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.c          |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_pipe.h          |     4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c         |     8 +-
 drivers/gpu/drm/msm/disp/msm_disp_snapshot.h       |     2 +-
 drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c  |     2 +-
 drivers/gpu/drm/msm/dp/dp_display.c                |     6 +-
 drivers/gpu/drm/msm/dp/dp_drm.c                    |     6 +-
 drivers/gpu/drm/msm/dp/dp_drm.h                    |     6 +-
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             |     4 +-
 drivers/gpu/drm/msm/msm_atomic.c                   |     8 +-
 drivers/gpu/drm/msm/msm_drv.h                      |     6 +-
 drivers/gpu/drm/msm/msm_kms.h                      |     4 +-
 drivers/gpu/drm/mxsfb/lcdif_kms.c                  |    12 +-
 drivers/gpu/drm/mxsfb/mxsfb_kms.c                  |    16 +-
 drivers/gpu/drm/nouveau/dispnv50/atom.h            |     6 +-
 drivers/gpu/drm/nouveau/dispnv50/crc.c             |    17 +-
 drivers/gpu/drm/nouveau/dispnv50/crc.h             |    16 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c            |    68 +-
 drivers/gpu/drm/nouveau/dispnv50/head.c            |     2 +-
 drivers/gpu/drm/nouveau/dispnv50/wndw.c            |     2 +-
 drivers/gpu/drm/nouveau/nouveau_connector.c        |     2 +-
 drivers/gpu/drm/nouveau/nouveau_display.h          |     2 +-
 drivers/gpu/drm/nouveau/nouveau_encoder.h          |     4 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/disp.c |     3 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c      |     3 +-
 drivers/gpu/drm/omapdrm/dss/hdmi4.c                |     4 +-
 drivers/gpu/drm/omapdrm/dss/hdmi5.c                |     4 +-
 drivers/gpu/drm/omapdrm/omap_crtc.c                |    10 +-
 drivers/gpu/drm/omapdrm/omap_drv.c                 |    14 +-
 drivers/gpu/drm/omapdrm/omap_drv.h                 |     2 +-
 drivers/gpu/drm/omapdrm/omap_overlay.c             |     4 +-
 drivers/gpu/drm/omapdrm/omap_overlay.h             |     4 +-
 drivers/gpu/drm/omapdrm/omap_plane.c               |     6 +-
 drivers/gpu/drm/panel/panel-edp.c                  |    16 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c |    10 +-
 drivers/gpu/drm/panel/panel-lxd-m9189a.c           |    11 +-
 drivers/gpu/drm/panel/panel-novatek-nt37700f.c     |    11 +-
 drivers/gpu/drm/panel/panel-samsung-s6e63m0.c      |    14 +-
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    |    11 +-
 .../gpu/drm/panel/panel-startek-kd070fhfid015.c    |    12 +-
 drivers/gpu/drm/panel/panel-tdo-tl070wsh30.c       |    14 +-
 drivers/gpu/drm/panel/panel-truly-nt35597.c        |    10 +-
 drivers/gpu/drm/panel/panel-visionox-g2647fb105.c  |    13 +-
 drivers/gpu/drm/panthor/panthor_mmu.c              |    16 +-
 drivers/gpu/drm/qxl/qxl_display.c                  |    16 +-
 drivers/gpu/drm/radeon/ci_dpm.c                    |     9 +-
 drivers/gpu/drm/radeon/cik.c                       |     2 +-
 drivers/gpu/drm/radeon/radeon_gem.c                |    13 +-
 drivers/gpu/drm/radeon/radeon_ring.c               |     4 +-
 drivers/gpu/drm/radeon/si.c                        |     2 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.c     |    18 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c      |     4 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_plane.c    |     6 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_plane.h    |     2 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_vsp.c      |     4 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_lvds.c        |     6 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_mipi_dsi.c    |     6 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_mipi_dsi.h    |     6 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_crtc.c      |     6 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_vsp.c       |     4 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |     8 +-
 drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c  |     6 +-
 drivers/gpu/drm/renesas/shmobile/shmob_drm_plane.c |     6 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |     6 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |     4 +-
 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c   |     2 +-
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |     2 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |     6 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        |    22 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |    18 +-
 drivers/gpu/drm/sitronix/st7571.c                  |    10 +-
 drivers/gpu/drm/sitronix/st7586.c                  |     6 +-
 drivers/gpu/drm/sitronix/st7735r.c                 |     2 +-
 drivers/gpu/drm/sitronix/st7920.c                  |    12 +-
 drivers/gpu/drm/solomon/ssd130x.c                  |    32 +-
 drivers/gpu/drm/sprd/sprd_dpu.c                    |    12 +-
 drivers/gpu/drm/sti/sti_crtc.c                     |     6 +-
 drivers/gpu/drm/sti/sti_cursor.c                   |     6 +-
 drivers/gpu/drm/sti/sti_gdp.c                      |     6 +-
 drivers/gpu/drm/sti/sti_hqvdp.c                    |     6 +-
 drivers/gpu/drm/stm/drv.c                          |     2 +-
 drivers/gpu/drm/stm/ltdc.c                         |    12 +-
 drivers/gpu/drm/stm/ltdc.h                         |     2 +-
 drivers/gpu/drm/stm/lvds.c                         |     6 +-
 drivers/gpu/drm/sun4i/sun4i_backend.c              |     4 +-
 drivers/gpu/drm/sun4i/sun4i_crtc.c                 |    10 +-
 drivers/gpu/drm/sun4i/sun4i_framebuffer.c          |     2 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |     4 +-
 drivers/gpu/drm/sun4i/sun4i_layer.c                |     4 +-
 drivers/gpu/drm/sun4i/sun4i_tv.c                   |     4 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c                |     2 +-
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c             |     4 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c             |     4 +-
 drivers/gpu/drm/sun4i/sunxi_engine.h               |     4 +-
 drivers/gpu/drm/sysfb/drm_sysfb_helper.h           |     8 +-
 drivers/gpu/drm/sysfb/drm_sysfb_modeset.c          |     8 +-
 drivers/gpu/drm/sysfb/ofdrm.c                      |     4 +-
 drivers/gpu/drm/sysfb/vesadrm.c                    |     4 +-
 drivers/gpu/drm/tegra/dc.c                         |    32 +-
 drivers/gpu/drm/tegra/dc.h                         |     2 +-
 drivers/gpu/drm/tegra/drm.c                        |     6 +-
 drivers/gpu/drm/tegra/hub.c                        |    12 +-
 drivers/gpu/drm/tegra/hub.h                        |     4 +-
 drivers/gpu/drm/tests/Makefile                     |     2 +-
 ...tomic_state_test.c => drm_atomic_commit_test.c} |    12 +-
 drivers/gpu/drm/tests/drm_bridge_test.c            |     8 +-
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |    88 +-
 drivers/gpu/drm/tests/drm_kunit_helpers.c          |    18 +-
 drivers/gpu/drm/tidss/tidss_crtc.c                 |    10 +-
 drivers/gpu/drm/tidss/tidss_kms.c                  |     4 +-
 drivers/gpu/drm/tidss/tidss_oldi.c                 |     4 +-
 drivers/gpu/drm/tidss/tidss_plane.c                |     8 +-
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |     8 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.c                |     2 +-
 drivers/gpu/drm/tilcdc/tilcdc_plane.c              |     4 +-
 drivers/gpu/drm/tiny/appletbdrm.c                  |    10 +-
 drivers/gpu/drm/tiny/bochs.c                       |    10 +-
 drivers/gpu/drm/tiny/cirrus-qemu.c                 |     8 +-
 drivers/gpu/drm/tiny/hx8357d.c                     |     2 +-
 drivers/gpu/drm/tiny/ili9163.c                     |     2 +-
 drivers/gpu/drm/tiny/ili9225.c                     |     6 +-
 drivers/gpu/drm/tiny/ili9341.c                     |     2 +-
 drivers/gpu/drm/tiny/ili9486.c                     |     2 +-
 drivers/gpu/drm/tiny/mi0283qt.c                    |     2 +-
 drivers/gpu/drm/tiny/panel-mipi-dbi.c              |     2 +-
 drivers/gpu/drm/tiny/pixpaper.c                    |    10 +-
 drivers/gpu/drm/tiny/sharp-memory.c                |    10 +-
 drivers/gpu/drm/udl/udl_main.c                     |     3 +-
 drivers/gpu/drm/udl/udl_modeset.c                  |    13 +-
 drivers/gpu/drm/vboxvideo/vbox_mode.c              |    18 +-
 drivers/gpu/drm/vc4/tests/vc4_mock.h               |     4 +-
 drivers/gpu/drm/vc4/tests/vc4_mock_output.c        |     4 +-
 drivers/gpu/drm/vc4/tests/vc4_test_pv_muxing.c     |    50 +-
 drivers/gpu/drm/vc4/vc4_crtc.c                     |    10 +-
 drivers/gpu/drm/vc4/vc4_drv.h                      |    28 +-
 drivers/gpu/drm/vc4/vc4_dsi.c                      |     8 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |    12 +-
 drivers/gpu/drm/vc4/vc4_hvs.c                      |    10 +-
 drivers/gpu/drm/vc4/vc4_kms.c                      |    30 +-
 drivers/gpu/drm/vc4/vc4_plane.c                    |     8 +-
 drivers/gpu/drm/vc4/vc4_txp.c                      |    10 +-
 drivers/gpu/drm/vc4/vc4_vec.c                      |     4 +-
 drivers/gpu/drm/verisilicon/vs_bridge.c            |     6 +-
 drivers/gpu/drm/verisilicon/vs_crtc.c              |     4 +-
 drivers/gpu/drm/verisilicon/vs_primary_plane.c     |     8 +-
 drivers/gpu/drm/virtio/virtgpu_display.c           |     8 +-
 drivers/gpu/drm/virtio/virtgpu_drv.h               |     2 +
 drivers/gpu/drm/virtio/virtgpu_ioctl.c             |     1 +
 drivers/gpu/drm/virtio/virtgpu_plane.c             |     6 +-
 drivers/gpu/drm/virtio/virtgpu_vram.c              |    30 +-
 drivers/gpu/drm/vkms/vkms_crtc.c                   |     6 +-
 drivers/gpu/drm/vkms/vkms_drv.c                    |     4 +-
 drivers/gpu/drm/vkms/vkms_plane.c                  |     4 +-
 drivers/gpu/drm/vkms/vkms_writeback.c              |     4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_cursor_plane.c       |     4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_cursor_plane.h       |     4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.h                |     2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c                |    18 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.h                |     6 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c                |     2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c               |     4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c               |     8 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_vkms.c               |     8 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_vkms.h               |    10 +-
 drivers/gpu/drm/xe/Makefile                        |    11 +-
 drivers/gpu/drm/xe/abi/guc_klvs_abi.h              |     8 +
 drivers/gpu/drm/xe/abi/xe_sysctrl_abi.h            |    65 +
 .../xe/compat-i915-headers/intel_clock_gating.h    |    10 +-
 .../drm/xe/compat-i915-headers/intel_mchbar_regs.h |     6 -
 .../drm/xe/compat-i915-headers/intel_pci_config.h  |     6 -
 .../gpu/drm/xe/compat-i915-headers/intel_step.h    |    13 -
 .../gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h   |    42 -
 .../drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h   |     6 -
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c        |   120 -
 drivers/gpu/drm/xe/display/xe_display.c            |    11 +-
 drivers/gpu/drm/xe/display/xe_display_bo.c         |   120 +
 drivers/gpu/drm/xe/display/xe_display_bo.h         |     6 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |    84 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c           |    12 +-
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |    32 +-
 drivers/gpu/drm/xe/regs/xe_engine_regs.h           |     5 +-
 drivers/gpu/drm/xe/regs/xe_gt_regs.h               |     7 +-
 drivers/gpu/drm/xe/regs/xe_irq_regs.h              |     1 +
 drivers/gpu/drm/xe/regs/xe_pcode_regs.h            |     3 +
 drivers/gpu/drm/xe/regs/xe_sysctrl_regs.h          |    36 +
 .../gpu/drm/xe/tests/xe_gt_sriov_pf_config_kunit.c |    21 +-
 drivers/gpu/drm/xe/tests/xe_migrate.c              |     3 +-
 drivers/gpu/drm/xe/tests/xe_pci.c                  |     4 +-
 drivers/gpu/drm/xe/xe_bo.c                         |    29 +-
 drivers/gpu/drm/xe/xe_bo_types.h                   |     5 +-
 drivers/gpu/drm/xe/xe_debugfs.c                    |    43 +-
 drivers/gpu/drm/xe/xe_dep_scheduler.h              |     5 +
 drivers/gpu/drm/xe/xe_devcoredump.c                |    10 +-
 drivers/gpu/drm/xe/xe_device.c                     |    64 +-
 drivers/gpu/drm/xe/xe_device.h                     |    23 +-
 drivers/gpu/drm/xe/xe_device_types.h               |    22 +-
 drivers/gpu/drm/xe/xe_device_wa_oob.rules          |     1 +
 drivers/gpu/drm/xe/xe_dma_buf.c                    |    23 +-
 drivers/gpu/drm/xe/xe_drm_ras.c                    |    35 +-
 drivers/gpu/drm/xe/xe_drm_ras.h                    |     4 +-
 drivers/gpu/drm/xe/xe_eu_stall.c                   |     4 +-
 drivers/gpu/drm/xe/xe_eu_stall.h                   |     4 +-
 drivers/gpu/drm/xe/xe_exec_queue.c                 |     9 +-
 drivers/gpu/drm/xe/xe_exec_queue_types.h           |     2 +-
 drivers/gpu/drm/xe/xe_execlist.c                   |     9 -
 drivers/gpu/drm/xe/xe_ggtt.c                       |     8 +-
 drivers/gpu/drm/xe/xe_gsc.c                        |     2 +-
 drivers/gpu/drm/xe/xe_gt.c                         |     1 -
 drivers/gpu/drm/xe/xe_gt_mcr.c                     |    23 +-
 drivers/gpu/drm/xe/xe_gt_mcr.h                     |     1 -
 drivers/gpu/drm/xe/xe_gt_sriov_pf.c                |     1 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c         |   262 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h         |     2 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_policy.c         |   124 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_policy.h         |     4 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_types.h          |     1 -
 drivers/gpu/drm/xe/xe_gt_stats.c                   |    41 +
 drivers/gpu/drm/xe/xe_gt_stats_types.h             |   118 +
 drivers/gpu/drm/xe/xe_gt_types.h                   |     4 +-
 drivers/gpu/drm/xe/xe_guc.c                        |    17 +-
 drivers/gpu/drm/xe/xe_guc_ads.c                    |     5 +-
 drivers/gpu/drm/xe/xe_guc_capture.c                |     2 +-
 drivers/gpu/drm/xe/xe_guc_capture.h                |     4 +-
 drivers/gpu/drm/xe/xe_guc_capture_types.h          |     6 +-
 drivers/gpu/drm/xe/xe_guc_ct.c                     |    38 +-
 drivers/gpu/drm/xe/xe_guc_ct_types.h               |     8 +-
 drivers/gpu/drm/xe/xe_guc_fwif.h                   |     4 +-
 drivers/gpu/drm/xe/xe_guc_pc.c                     |    42 +-
 drivers/gpu/drm/xe/xe_guc_pc.h                     |     2 +-
 drivers/gpu/drm/xe/xe_guc_relay_types.h            |     2 +-
 drivers/gpu/drm/xe/xe_guc_submit.c                 |    40 +-
 drivers/gpu/drm/xe/xe_guc_submit_types.h           |     2 +-
 drivers/gpu/drm/xe/xe_hw_engine.c                  |    86 +-
 drivers/gpu/drm/xe/xe_hw_engine.h                  |     1 -
 drivers/gpu/drm/xe/xe_hw_engine_types.h            |     2 +-
 drivers/gpu/drm/xe/xe_hw_error.h                   |     4 +-
 drivers/gpu/drm/xe/xe_hwmon.c                      |    28 +-
 drivers/gpu/drm/xe/xe_irq.c                        |     2 +
 drivers/gpu/drm/xe/xe_lrc.c                        |    22 +-
 drivers/gpu/drm/xe/xe_mem_pool.c                   |   403 +
 drivers/gpu/drm/xe/xe_mem_pool.h                   |    35 +
 drivers/gpu/drm/xe/xe_mem_pool_types.h             |    21 +
 drivers/gpu/drm/xe/xe_migrate.c                    |    71 +-
 drivers/gpu/drm/xe/xe_migrate.h                    |     4 +-
 drivers/gpu/drm/xe/xe_nvm.h                        |     4 +-
 drivers/gpu/drm/xe/xe_oa.c                         |   136 +-
 drivers/gpu/drm/xe/xe_oa_types.h                   |    12 +-
 drivers/gpu/drm/xe/xe_pagefault_types.h            |     4 +-
 drivers/gpu/drm/xe/xe_pat.c                        |     9 +
 drivers/gpu/drm/xe/xe_pat.h                        |     8 +
 drivers/gpu/drm/xe/xe_pci.c                        |    13 +-
 drivers/gpu/drm/xe/xe_pci_sriov.c                  |     2 +
 drivers/gpu/drm/xe/xe_pci_types.h                  |     2 +-
 drivers/gpu/drm/xe/xe_pcode_api.h                  |     8 +-
 drivers/gpu/drm/xe/xe_pm.c                         |     6 +
 drivers/gpu/drm/xe/xe_pt.c                         |     3 +-
 drivers/gpu/drm/xe/xe_pt_types.h                   |     2 +-
 drivers/gpu/drm/xe/xe_pt_walk.h                    |    14 +-
 drivers/gpu/drm/xe/xe_pxp.c                        |     6 +
 drivers/gpu/drm/xe/xe_pxp.h                        |     6 +-
 drivers/gpu/drm/xe/xe_pxp_debugfs.h                |     6 +-
 drivers/gpu/drm/xe/xe_pxp_submit.h                 |     6 +-
 drivers/gpu/drm/xe/xe_pxp_types.h                  |     6 +-
 drivers/gpu/drm/xe/xe_query.c                      |     7 +
 drivers/gpu/drm/xe/xe_ras.c                        |    93 +
 drivers/gpu/drm/xe/xe_ras.h                        |    15 +
 drivers/gpu/drm/xe/xe_ras_types.h                  |    73 +
 drivers/gpu/drm/xe/xe_reg_sr.h                     |     4 +-
 drivers/gpu/drm/xe/xe_reg_sr_types.h               |     4 +-
 drivers/gpu/drm/xe/xe_reg_whitelist.c              |     2 +-
 drivers/gpu/drm/xe/xe_reg_whitelist.h              |     4 +-
 drivers/gpu/drm/xe/xe_rtp.c                        |    15 +
 drivers/gpu/drm/xe/xe_rtp.h                        |    28 +-
 drivers/gpu/drm/xe/xe_rtp_helpers.h                |     6 +-
 drivers/gpu/drm/xe/xe_rtp_types.h                  |     4 +-
 drivers/gpu/drm/xe/xe_sriov_pf.c                   |     6 -
 drivers/gpu/drm/xe/xe_sriov_pf_helpers.h           |     3 +-
 drivers/gpu/drm/xe/xe_sriov_pf_provision.c         |    41 +
 drivers/gpu/drm/xe/xe_sriov_pf_provision.h         |     1 +
 drivers/gpu/drm/xe/xe_sriov_pf_types.h             |     3 -
 drivers/gpu/drm/xe/xe_sriov_vf_ccs.c               |    54 +-
 drivers/gpu/drm/xe/xe_sriov_vf_ccs_types.h         |     5 +-
 drivers/gpu/drm/xe/xe_step.c                       |     2 +-
 drivers/gpu/drm/xe/xe_step.h                       |     4 +-
 drivers/gpu/drm/xe/xe_step_types.h                 |    61 +-
 drivers/gpu/drm/xe/xe_svm.c                        |    10 +-
 drivers/gpu/drm/xe/xe_sysctrl.c                    |   132 +
 drivers/gpu/drm/xe/xe_sysctrl.h                    |    24 +
 drivers/gpu/drm/xe/xe_sysctrl_event.c              |    88 +
 drivers/gpu/drm/xe/xe_sysctrl_event_types.h        |    57 +
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.c            |   371 +
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.h            |    31 +
 drivers/gpu/drm/xe/xe_sysctrl_mailbox_types.h      |    58 +
 drivers/gpu/drm/xe/xe_sysctrl_types.h              |    39 +
 drivers/gpu/drm/xe/xe_tlb_inval.c                  |     2 +-
 drivers/gpu/drm/xe/xe_ttm_vram_mgr.c               |     7 +-
 drivers/gpu/drm/xe/xe_tuning.c                     |     9 +-
 drivers/gpu/drm/xe/xe_tuning.h                     |     4 +-
 drivers/gpu/drm/xe/xe_uc_fw.c                      |    11 +
 drivers/gpu/drm/xe/xe_uc_fw.h                      |     4 +
 drivers/gpu/drm/xe/xe_uc_fw_abi.h                  |     4 +-
 drivers/gpu/drm/xe/xe_vm.c                         |    17 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c                 |    47 +
 drivers/gpu/drm/xe/xe_vm_types.h                   |     3 +-
 drivers/gpu/drm/xe/xe_vram.c                       |    22 +
 drivers/gpu/drm/xe/xe_vram.h                       |     2 +
 drivers/gpu/drm/xe/xe_wa.c                         |    21 +-
 drivers/gpu/drm/xe/xe_wa.h                         |     4 +-
 drivers/gpu/drm/xe/xe_wa_oob.rules                 |     7 +
 drivers/gpu/drm/xlnx/zynqmp_dp.c                   |     6 +-
 drivers/gpu/drm/xlnx/zynqmp_kms.c                  |    16 +-
 drivers/mailbox/cix-mailbox.c                      |     6 +-
 drivers/mailbox/exynos-mailbox.c                   |     4 -
 drivers/mailbox/hi3660-mailbox.c                   |     2 -
 drivers/mailbox/hi6220-mailbox.c                   |    14 +-
 drivers/mailbox/imx-mailbox.c                      |     4 +-
 drivers/mailbox/mailbox-sti.c                      |     2 -
 drivers/mailbox/mailbox-test.c                     |    80 +-
 drivers/mailbox/mailbox.c                          |    67 +-
 drivers/mailbox/mailbox.h                          |    12 -
 drivers/mailbox/mtk-cmdq-mailbox.c                 |    10 +-
 drivers/mailbox/mtk-vcp-mailbox.c                  |     2 +-
 drivers/mailbox/omap-mailbox.c                     |     4 +-
 drivers/mailbox/pcc.c                              |     2 -
 drivers/mailbox/rockchip-mailbox.c                 |     9 +-
 drivers/mailbox/tegra-hsp.c                        |     6 +-
 drivers/md/md-bitmap.c                             |   133 +-
 drivers/md/md-bitmap.h                             |     2 +-
 drivers/md/md-llbitmap.c                           |     7 +-
 drivers/md/md.c                                    |   182 +-
 drivers/md/md.h                                    |     6 +-
 drivers/md/persistent-data/dm-btree-remove.c       |     8 +
 drivers/md/raid1-10.c                              |     7 +-
 drivers/md/raid1.c                                 |    15 +-
 drivers/md/raid10.c                                |     2 +
 drivers/md/raid5.c                                 |     7 +-
 drivers/mtd/nand/spi/core.c                        |    24 +-
 drivers/mtd/nand/spi/winbond.c                     |     6 +-
 drivers/mtd/spi-nor/debugfs.c                      |     4 +-
 drivers/net/bareudp.c                              |     3 +
 drivers/net/bonding/bond_3ad.c                     |   109 +-
 drivers/net/bonding/bond_main.c                    |     8 +-
 drivers/net/bonding/bond_netlink.c                 |    16 +-
 drivers/net/bonding/bond_procfs.c                  |     3 +-
 drivers/net/bonding/bond_sysfs_slave.c             |    17 +-
 drivers/net/ethernet/airoha/airoha_eth.c           |    51 +-
 drivers/net/ethernet/airoha/airoha_eth.h           |     5 +
 drivers/net/ethernet/ibm/ibmveth.c                 |    22 +
 drivers/net/ethernet/ibm/ibmveth.h                 |     1 +
 drivers/net/ethernet/intel/iavf/iavf.h             |     9 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c        |    52 +-
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c    |    76 +-
 drivers/net/ethernet/intel/ice/devlink/devlink.c   |     2 +
 drivers/net/ethernet/intel/ice/ice_common.c        |     2 -
 drivers/net/ethernet/intel/ice/ice_dpll.c          |   146 +-
 drivers/net/ethernet/intel/ice/ice_main.c          |     2 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c        |     7 +-
 drivers/net/ethernet/sfc/efx_devlink.c             |     2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  |    19 +-
 drivers/net/mctp/mctp-i2c.c                        |     4 +-
 drivers/net/netconsole.c                           |    49 +-
 drivers/net/netdevsim/dev.c                        |     2 +-
 drivers/net/phy/dp83869.c                          |    13 +-
 drivers/net/usb/rtl8150.c                          |    12 +-
 drivers/net/vrf.c                                  |    15 +-
 drivers/nfc/trf7970a.c                             |     3 +-
 drivers/nvme/common/auth.c                         |    94 +-
 drivers/nvme/host/apple.c                          |     6 +-
 drivers/nvme/host/auth.c                           |    16 +-
 drivers/nvme/host/core.c                           |    16 +-
 drivers/nvme/host/fc.c                             |     1 +
 drivers/nvme/host/multipath.c                      |     4 -
 drivers/nvme/host/pci.c                            |     5 +
 drivers/nvme/host/rdma.c                           |     9 +
 drivers/nvme/host/sysfs.c                          |    19 +
 drivers/nvme/host/tcp.c                            |    29 +-
 drivers/nvme/target/admin-cmd.c                    |     8 +-
 drivers/nvme/target/auth.c                         |    21 +-
 drivers/nvme/target/configfs.c                     |    27 +
 drivers/nvme/target/core.c                         |    10 +-
 drivers/nvme/target/fabrics-cmd-auth.c             |     9 +-
 drivers/nvme/target/nvmet.h                        |    13 +
 drivers/nvme/target/tcp.c                          |   117 +-
 drivers/nvme/target/zns.c                          |     6 +-
 drivers/regulator/Kconfig                          |     1 +
 drivers/s390/char/Kconfig                          |     8 -
 drivers/s390/char/sclp_config.c                    |     6 -
 drivers/scsi/sr.c                                  |    11 +-
 drivers/scsi/sr.h                                  |     1 -
 drivers/spi/spi-amlogic-spisg.c                    |     3 +-
 drivers/spi/spi-axiado.c                           |     2 +-
 drivers/spi/spi-cadence-quadspi.c                  |    36 +-
 drivers/spi/spi-cadence.c                          |    15 +-
 drivers/spi/spi-rockchip.c                         |     6 +-
 drivers/spi/spi-rzv2h-rspi.c                       |     2 +-
 drivers/xen/privcmd.c                              |     7 +
 drivers/xen/sys-hypervisor.c                       |     8 +-
 fs/btrfs/extent_io.c                               |    14 +-
 fs/btrfs/extent_io.h                               |     3 +-
 fs/btrfs/free-space-tree.c                         |    18 +-
 fs/btrfs/inode.c                                   |     4 +-
 fs/btrfs/ioctl.c                                   |     7 +-
 fs/btrfs/raid-stripe-tree.c                        |    57 +-
 fs/btrfs/relocation.c                              |    30 +-
 fs/isofs/export.c                                  |     2 +-
 fs/isofs/namei.c                                   |    11 +-
 fs/isofs/rock.c                                    |     9 +
 fs/notify/fanotify/fanotify.c                      |     2 +-
 fs/notify/fsnotify.c                               |     2 +-
 fs/notify/mark.c                                   |    57 +-
 fs/ntfs/bitmap.c                                   |    19 +-
 fs/ntfs/dir.c                                      |    13 +-
 fs/ntfs/index.c                                    |    17 +-
 fs/ntfs/iomap.c                                    |     6 +-
 fs/ntfs/namei.c                                    |    13 +-
 fs/ntfs/reparse.c                                  |     5 +-
 fs/ntfs/runlist.c                                  |    24 +-
 fs/smb/client/cifsproto.h                          |     1 -
 fs/smb/client/fs_context.c                         |    31 -
 fs/smb/client/smb2inode.c                          |     2 +-
 fs/smb/client/smb2ops.c                            |    11 +
 fs/smb/server/connection.c                         |    48 +-
 fs/smb/server/connection.h                         |     1 +
 fs/smb/server/smb2pdu.c                            |     8 +-
 fs/udf/misc.c                                      |     8 +-
 include/acpi/acpi_bus.h                            |     2 +
 include/acpi/actbl1.h                              |     6 +
 include/drm/display/drm_dp.h                       |    20 +-
 include/drm/display/drm_dp_helper.h                |     1 +
 include/drm/display/drm_dp_mst_helper.h            |    32 +-
 include/drm/display/drm_dp_tunnel.h                |    30 +-
 include/drm/display/drm_hdmi_state_helper.h        |     6 +-
 include/drm/drm_atomic.h                           |   158 +-
 include/drm/drm_atomic_helper.h                    |    78 +-
 include/drm/drm_atomic_state_helper.h              |     4 +-
 include/drm/drm_blend.h                            |     4 +-
 include/drm/drm_bridge.h                           |    16 +-
 include/drm/drm_colorop.h                          |     4 +-
 include/drm/drm_connector.h                        |     6 +-
 include/drm/drm_crtc.h                             |    10 +-
 include/drm/drm_crtc_helper.h                      |     4 +-
 include/drm/drm_damage_helper.h                    |     2 +-
 include/drm/drm_fb_helper.h                        |     6 +
 include/drm/drm_kunit_helpers.h                    |     2 +-
 include/drm/drm_mipi_dbi.h                         |     8 +-
 include/drm/drm_mode_config.h                      |    38 +-
 include/drm/drm_modeset_helper_vtables.h           |    44 +-
 include/drm/drm_panel.h                            |     4 -
 include/drm/drm_plane.h                            |     6 +-
 include/drm/drm_ras.h                              |    11 +
 include/drm/drm_self_refresh_helper.h              |     6 +-
 include/drm/drm_vblank_helper.h                    |     8 +-
 include/drm/intel/display_parent_interface.h       |    23 +-
 .../drm/intel/mchbar_regs.h                        |     7 +-
 .../drm/intel/pci_config.h                         |     0
 .../drm/intel/vlv_iosf_sb_regs.h                   |    18 +-
 include/drm/ttm/ttm_placement.h                    |     4 +-
 include/linux/cdrom.h                              |     1 +
 include/linux/dma-buf.h                            |     4 +-
 include/linux/dpll.h                               |     1 +
 include/linux/fsnotify_backend.h                   |     1 +
 include/linux/gpu_buddy.h                          |    41 +
 include/linux/mailbox_client.h                     |     1 +
 include/linux/mailbox_controller.h                 |    17 +-
 include/linux/maple_tree.h                         |     2 +-
 include/linux/mm.h                                 |     2 +-
 include/linux/mroute_base.h                        |     3 +
 include/linux/mtd/spinand.h                        |     7 +
 include/linux/nvme-auth.h                          |     6 +-
 include/linux/rculist.h                            |    29 +
 include/linux/rhashtable-types.h                   |     5 +
 include/linux/rhashtable.h                         |     8 +-
 include/linux/tracepoint.h                         |     2 +-
 include/net/bond_3ad.h                             |     2 +-
 include/net/netfilter/nf_tables.h                  |    13 +
 include/net/netmem.h                               |    15 +
 include/uapi/drm/amdxdna_accel.h                   |    24 +-
 include/uapi/drm/drm_fourcc.h                      |     6 +-
 include/uapi/drm/drm_ras.h                         |     1 +
 include/uapi/drm/virtgpu_drm.h                     |     4 +
 include/uapi/drm/xe_drm.h                          |   206 +-
 include/uapi/linux/io_uring.h                      |     3 +-
 io_uring/kbuf.c                                    |     9 +-
 io_uring/kbuf.h                                    |     8 +-
 io_uring/napi.c                                    |     2 +
 io_uring/tw.c                                      |    12 +-
 io_uring/zcrx.c                                    |     3 +-
 kernel/cgroup/cgroup.c                             |    46 +-
 kernel/cgroup/cpuset-internal.h                    |     5 +
 kernel/cgroup/cpuset.c                             |    13 +-
 kernel/cgroup/rdma.c                               |     2 +-
 kernel/fork.c                                      |    12 +-
 kernel/futex/requeue.c                             |    13 +-
 kernel/liveupdate/kexec_handover.c                 |    21 +-
 kernel/liveupdate/luo_session.c                    |    15 +-
 kernel/sched/core.c                                |     1 +
 kernel/sched/ext.c                                 |   398 +-
 kernel/sched/ext_idle.c                            |    20 +-
 kernel/sched/ext_idle.h                            |     1 +
 kernel/sched/ext_internal.h                        |     2 +
 kernel/sched/fair.c                                |    44 +-
 kernel/trace/trace_branch.c                        |     8 +-
 kernel/trace/trace_probe.c                         |     6 +
 kernel/trace/trace_probe.h                         |     4 +-
 lib/maple_tree.c                                   |     2 +-
 lib/rhashtable.c                                   |    36 +-
 lib/test_maple_tree.c                              |     4 +-
 mm/damon/lru_sort.c                                |    85 +-
 mm/damon/reclaim.c                                 |    85 +-
 mm/damon/stat.c                                    |    30 +-
 mm/damon/sysfs-schemes.c                           |    24 +-
 mm/hugetlb_cma.c                                   |     1 +
 mm/memcontrol.c                                    |    29 +-
 mm/page-writeback.c                                |    16 +-
 mm/page_alloc.c                                    |     5 +
 mm/slub.c                                          |     4 +
 mm/userfaultfd.c                                   |    12 +-
 mm/util.c                                          |    26 +-
 mm/vma.c                                           |     3 +-
 mm/vmalloc.c                                       |     2 +-
 net/core/devmem.c                                  |     3 +-
 net/core/neighbour.c                               |    10 +-
 net/core/netpoll.c                                 |    19 +-
 net/core/page_pool.c                               |    10 +-
 net/ipv4/ipmr.c                                    |   108 +-
 net/ipv4/ipmr_base.c                               |    16 +
 net/ipv4/netfilter/arp_tables.c                    |    18 +-
 net/ipv4/netfilter/arpt_mangle.c                   |     8 +
 net/ipv4/tcp_timer.c                               |     5 +-
 net/ipv6/exthdrs.c                                 |     9 +-
 net/ipv6/rpl_iptunnel.c                            |     9 +
 net/ipv6/seg6_iptunnel.c                           |     9 +
 net/mptcp/pm_kernel.c                              |     1 +
 net/mptcp/protocol.c                               |     3 +-
 net/mptcp/sockopt.c                                |    12 +-
 net/netfilter/nf_conntrack_proto_sctp.c            |    10 +-
 net/netfilter/nf_conntrack_sip.c                   |   152 +-
 net/netfilter/nf_nat_sip.c                         |     1 +
 net/netfilter/nf_tables_api.c                      |   314 +-
 net/netfilter/nft_bitwise.c                        |     3 +-
 net/netfilter/xt_policy.c                          |     2 +-
 net/phonet/socket.c                                |    10 +-
 net/psp/psp-nl-gen.c                               |     4 +-
 net/psp/psp_nl.c                                   |    10 +-
 net/sched/sch_cake.c                               |   217 +-
 net/sched/sch_choke.c                              |    26 +-
 net/sched/sch_fq_pie.c                             |    19 +-
 net/sched/sch_netem.c                              |    76 +-
 net/sched/sch_taprio.c                             |    13 +-
 net/sctp/sm_statefuns.c                            |     6 +
 net/tls/tls.h                                      |     1 +
 net/tls/tls_strp.c                                 |     6 +
 net/tls/tls_sw.c                                   |     4 +
 net/vmw_vsock/hyperv_transport.c                   |     4 +-
 security/selinux/hooks.c                           |    38 +-
 security/selinux/include/objsec.h                  |     4 +-
 sound/core/oss/pcm_oss.c                           |    29 +-
 sound/drivers/aloop.c                              |    43 +-
 sound/hda/codecs/Makefile                          |     2 -
 sound/hda/codecs/conexant.c                        |     8 +-
 sound/hda/codecs/realtek/alc269.c                  |    14 +-
 sound/hda/codecs/side-codecs/cs35l56_hda.c         |    31 +-
 sound/hda/codecs/side-codecs/cs35l56_hda.h         |     1 +
 sound/hda/codecs/side-codecs/tas2781_hda_spi.c     |    14 +-
 sound/hda/core/hdmi_chmap.c                        |    11 +-
 sound/soc/amd/acp/acp-legacy-mach.c                |     2 +-
 sound/soc/amd/acp/acp-mach-common.c                |    22 +-
 sound/soc/amd/acp/acp-mach.h                       |     4 +
 sound/soc/amd/acp/acp-sof-mach.c                   |     2 +-
 sound/soc/codecs/ab8500-codec.c                    |     6 +-
 sound/soc/codecs/aw88395/aw88395.c                 |     9 +-
 sound/soc/codecs/cs35l56-shared.c                  |     7 +-
 sound/soc/codecs/es8389.c                          |     2 +-
 sound/soc/codecs/tas2764.c                         |     1 +
 sound/soc/codecs/tas2770.c                         |     4 +-
 sound/soc/codecs/wcd937x.c                         |    26 +-
 sound/soc/intel/boards/bytcr_wm5102.c              |     1 +
 sound/soc/sof/intel/hda.c                          |     3 +-
 sound/soc/spacemit/k1_i2s.c                        |    49 +-
 sound/soc/tegra/Makefile                           |     1 -
 sound/usb/caiaq/device.c                           |     6 +-
 sound/usb/caiaq/input.c                            |     2 +-
 sound/usb/misc/ua101.c                             |     7 +
 sound/usb/mixer.c                                  |    10 +
 sound/usb/quirks-table.h                           |     4 +-
 sound/usb/quirks.c                                 |     2 +-
 sound/usb/stream.c                                 |    62 +-
 sound/usb/stream.h                                 |     3 +-
 tools/sched_ext/scx_qmap.bpf.c                     |    24 +-
 tools/testing/radix-tree/maple.c                   |     2 +-
 tools/testing/selftests/arm64/gcs/gcs-util.h       |     6 -
 tools/testing/selftests/arm64/gcs/libc-gcs.c       |     1 +
 tools/testing/selftests/drivers/net/README.rst     |    10 +-
 .../selftests/kvm/access_tracking_perf_test.c      |    44 +-
 tools/testing/selftests/kvm/arch_timer.c           |     6 +-
 .../testing/selftests/kvm/arm64/aarch32_id_regs.c  |    14 +-
 tools/testing/selftests/kvm/arm64/arch_timer.c     |     8 +-
 .../selftests/kvm/arm64/arch_timer_edge_cases.c    |   161 +-
 .../testing/selftests/kvm/arm64/debug-exceptions.c |    72 +-
 tools/testing/selftests/kvm/arm64/hypercalls.c     |    24 +-
 tools/testing/selftests/kvm/arm64/idreg-idst.c     |     4 +-
 tools/testing/selftests/kvm/arm64/no-vgic.c        |     8 +-
 .../testing/selftests/kvm/arm64/page_fault_test.c  |    82 +-
 tools/testing/selftests/kvm/arm64/psci_test.c      |    26 +-
 tools/testing/selftests/kvm/arm64/sea_to_user.c    |    41 +-
 tools/testing/selftests/kvm/arm64/set_id_regs.c    |    70 +-
 tools/testing/selftests/kvm/arm64/smccc_filter.c   |    10 +-
 tools/testing/selftests/kvm/arm64/vgic_init.c      |    56 +-
 tools/testing/selftests/kvm/arm64/vgic_irq.c       |   137 +-
 .../testing/selftests/kvm/arm64/vgic_lpi_stress.c  |    20 +-
 tools/testing/selftests/kvm/arm64/vgic_v5.c        |    10 +-
 .../selftests/kvm/arm64/vpmu_counter_access.c      |    56 +-
 tools/testing/selftests/kvm/coalesced_io_test.c    |    38 +-
 tools/testing/selftests/kvm/demand_paging_test.c   |    10 +-
 tools/testing/selftests/kvm/dirty_log_perf_test.c  |    14 +-
 tools/testing/selftests/kvm/dirty_log_test.c       |    82 +-
 tools/testing/selftests/kvm/get-reg-list.c         |     2 +-
 tools/testing/selftests/kvm/guest_memfd_test.c     |    18 +-
 tools/testing/selftests/kvm/guest_print_test.c     |    22 +-
 .../testing/selftests/kvm/hardware_disable_test.c  |     6 +-
 .../selftests/kvm/include/arm64/arch_timer.h       |    30 +-
 tools/testing/selftests/kvm/include/arm64/delay.h  |     4 +-
 tools/testing/selftests/kvm/include/arm64/gic.h    |     8 +-
 .../selftests/kvm/include/arm64/gic_v3_its.h       |     7 +-
 .../selftests/kvm/include/arm64/processor.h        |    22 +-
 tools/testing/selftests/kvm/include/arm64/ucall.h  |     4 +-
 tools/testing/selftests/kvm/include/arm64/vgic.h   |    22 +-
 tools/testing/selftests/kvm/include/kvm_util.h     |   344 +-
 .../testing/selftests/kvm/include/kvm_util_types.h |     8 +-
 .../selftests/kvm/include/loongarch/arch_timer.h   |     4 +-
 .../selftests/kvm/include/loongarch/ucall.h        |     4 +-
 tools/testing/selftests/kvm/include/memstress.h    |    30 +-
 .../selftests/kvm/include/riscv/arch_timer.h       |    22 +-
 .../selftests/kvm/include/riscv/processor.h        |     9 +-
 tools/testing/selftests/kvm/include/riscv/ucall.h  |     4 +-
 .../kvm/include/s390/diag318_test_handler.h        |     2 +-
 .../testing/selftests/kvm/include/s390/facility.h  |     4 +-
 tools/testing/selftests/kvm/include/s390/ucall.h   |     4 +-
 tools/testing/selftests/kvm/include/sparsebit.h    |     6 +-
 tools/testing/selftests/kvm/include/test_util.h    |    40 +-
 tools/testing/selftests/kvm/include/timer_test.h   |    18 +-
 tools/testing/selftests/kvm/include/ucall_common.h |    22 +-
 .../selftests/kvm/include/userfaultfd_util.h       |     6 +-
 tools/testing/selftests/kvm/include/x86/apic.h     |    22 +-
 tools/testing/selftests/kvm/include/x86/evmcs.h    |    22 +-
 tools/testing/selftests/kvm/include/x86/hyperv.h   |    28 +-
 .../selftests/kvm/include/x86/kvm_util_arch.h      |    36 +-
 tools/testing/selftests/kvm/include/x86/pmu.h      |     9 +-
 .../testing/selftests/kvm/include/x86/processor.h  |   292 +-
 tools/testing/selftests/kvm/include/x86/sev.h      |    20 +-
 tools/testing/selftests/kvm/include/x86/smm.h      |     3 +-
 tools/testing/selftests/kvm/include/x86/svm_util.h |    12 +-
 tools/testing/selftests/kvm/include/x86/ucall.h    |     2 +-
 tools/testing/selftests/kvm/include/x86/vmx.h      |    70 +-
 tools/testing/selftests/kvm/kvm_page_table_test.c  |    54 +-
 tools/testing/selftests/kvm/lib/arm64/gic.c        |     6 +-
 .../testing/selftests/kvm/lib/arm64/gic_private.h  |    26 +-
 tools/testing/selftests/kvm/lib/arm64/gic_v3.c     |    90 +-
 tools/testing/selftests/kvm/lib/arm64/gic_v3_its.c |    11 +-
 tools/testing/selftests/kvm/lib/arm64/processor.c  |   163 +-
 tools/testing/selftests/kvm/lib/arm64/ucall.c      |    12 +-
 tools/testing/selftests/kvm/lib/arm64/vgic.c       |    40 +-
 tools/testing/selftests/kvm/lib/elf.c              |    17 +-
 tools/testing/selftests/kvm/lib/guest_modes.c      |     2 +-
 tools/testing/selftests/kvm/lib/guest_sprintf.c    |    18 +-
 tools/testing/selftests/kvm/lib/kvm_util.c         |   377 +-
 .../selftests/kvm/lib/loongarch/processor.c        |   110 +-
 tools/testing/selftests/kvm/lib/loongarch/ucall.c  |    12 +-
 tools/testing/selftests/kvm/lib/memstress.c        |    38 +-
 tools/testing/selftests/kvm/lib/riscv/processor.c  |    91 +-
 .../selftests/kvm/lib/s390/diag318_test_handler.c  |    12 +-
 tools/testing/selftests/kvm/lib/s390/facility.c    |     2 +-
 tools/testing/selftests/kvm/lib/s390/processor.c   |    65 +-
 tools/testing/selftests/kvm/lib/sparsebit.c        |    18 +-
 tools/testing/selftests/kvm/lib/test_util.c        |    30 +-
 tools/testing/selftests/kvm/lib/ucall_common.c     |    34 +-
 tools/testing/selftests/kvm/lib/userfaultfd_util.c |    14 +-
 tools/testing/selftests/kvm/lib/x86/apic.c         |     2 +-
 tools/testing/selftests/kvm/lib/x86/hyperv.c       |    14 +-
 tools/testing/selftests/kvm/lib/x86/memstress.c    |    14 +-
 tools/testing/selftests/kvm/lib/x86/pmu.c          |     8 +-
 tools/testing/selftests/kvm/lib/x86/processor.c    |   292 +-
 tools/testing/selftests/kvm/lib/x86/sev.c          |    20 +-
 tools/testing/selftests/kvm/lib/x86/svm.c          |    16 +-
 tools/testing/selftests/kvm/lib/x86/ucall.c        |     4 +-
 tools/testing/selftests/kvm/lib/x86/vmx.c          |    44 +-
 tools/testing/selftests/kvm/loongarch/arch_timer.c |    28 +-
 tools/testing/selftests/kvm/loongarch/pmu_test.c   |    10 +-
 .../kvm/memslot_modification_stress_test.c         |    10 +-
 tools/testing/selftests/kvm/memslot_perf_test.c    |   164 +-
 tools/testing/selftests/kvm/mmu_stress_test.c      |    28 +-
 .../testing/selftests/kvm/pre_fault_memory_test.c  |    12 +-
 tools/testing/selftests/kvm/riscv/arch_timer.c     |     8 +-
 tools/testing/selftests/kvm/riscv/ebreak_test.c    |     6 +-
 tools/testing/selftests/kvm/riscv/get-reg-list.c   |     4 +-
 tools/testing/selftests/kvm/riscv/sbi_pmu_test.c   |     8 +-
 tools/testing/selftests/kvm/s390/debug_test.c      |     8 +-
 tools/testing/selftests/kvm/s390/irq_routing.c     |     2 +-
 tools/testing/selftests/kvm/s390/memop.c           |    94 +-
 tools/testing/selftests/kvm/s390/resets.c          |     6 +-
 .../selftests/kvm/s390/shared_zeropage_test.c      |     2 +-
 tools/testing/selftests/kvm/s390/tprot.c           |    24 +-
 tools/testing/selftests/kvm/s390/ucontrol_test.c   |     8 +-
 .../testing/selftests/kvm/set_memory_region_test.c |    40 +-
 tools/testing/selftests/kvm/steal_time.c           |    79 +-
 .../selftests/kvm/system_counter_offset_test.c     |    12 +-
 tools/testing/selftests/kvm/x86/amx_test.c         |    14 +-
 tools/testing/selftests/kvm/x86/aperfmperf_test.c  |    16 +-
 .../selftests/kvm/x86/apic_bus_clock_test.c        |    24 +-
 tools/testing/selftests/kvm/x86/cpuid_test.c       |     6 +-
 tools/testing/selftests/kvm/x86/debug_regs.c       |     4 +-
 .../kvm/x86/dirty_log_page_splitting_test.c        |    16 +-
 .../selftests/kvm/x86/evmcs_smm_controls_test.c    |     6 +-
 tools/testing/selftests/kvm/x86/fastops_test.c     |    52 +-
 .../testing/selftests/kvm/x86/feature_msrs_test.c  |    12 +-
 .../testing/selftests/kvm/x86/fix_hypercall_test.c |    20 +-
 tools/testing/selftests/kvm/x86/flds_emulation.h   |     6 +-
 tools/testing/selftests/kvm/x86/hwcr_msr_test.c    |    10 +-
 tools/testing/selftests/kvm/x86/hyperv_clock.c     |     6 +-
 tools/testing/selftests/kvm/x86/hyperv_evmcs.c     |    10 +-
 .../selftests/kvm/x86/hyperv_extended_hypercalls.c |    20 +-
 tools/testing/selftests/kvm/x86/hyperv_features.c  |    26 +-
 tools/testing/selftests/kvm/x86/hyperv_ipi.c       |    12 +-
 tools/testing/selftests/kvm/x86/hyperv_svm_test.c  |    10 +-
 tools/testing/selftests/kvm/x86/hyperv_tlb_flush.c |    36 +-
 tools/testing/selftests/kvm/x86/kvm_buslock_test.c |     2 +-
 tools/testing/selftests/kvm/x86/kvm_clock_test.c   |    14 +-
 tools/testing/selftests/kvm/x86/kvm_pv_test.c      |    10 +-
 .../testing/selftests/kvm/x86/monitor_mwait_test.c |     2 +-
 .../selftests/kvm/x86/nested_close_kvm_test.c      |     2 +-
 .../selftests/kvm/x86/nested_dirty_log_test.c      |    10 +-
 .../selftests/kvm/x86/nested_emulation_test.c      |    20 +-
 .../selftests/kvm/x86/nested_exceptions_test.c     |     6 +-
 .../selftests/kvm/x86/nested_invalid_cr3_test.c    |     2 +-
 .../selftests/kvm/x86/nested_set_state_test.c      |     4 +-
 .../selftests/kvm/x86/nested_tsc_adjust_test.c     |    12 +-
 .../selftests/kvm/x86/nested_tsc_scaling_test.c    |    24 +-
 .../selftests/kvm/x86/nested_vmsave_vmload_test.c  |     2 +-
 .../testing/selftests/kvm/x86/nx_huge_pages_test.c |    18 +-
 .../testing/selftests/kvm/x86/platform_info_test.c |     6 +-
 .../testing/selftests/kvm/x86/pmu_counters_test.c  |   109 +-
 .../selftests/kvm/x86/pmu_event_filter_test.c      |   102 +-
 .../kvm/x86/private_mem_conversions_test.c         |    78 +-
 .../selftests/kvm/x86/private_mem_kvm_exits_test.c |    14 +-
 tools/testing/selftests/kvm/x86/set_boot_cpu_id.c  |     6 +-
 tools/testing/selftests/kvm/x86/set_sregs_test.c   |     6 +-
 tools/testing/selftests/kvm/x86/sev_init2_tests.c  |     6 +-
 tools/testing/selftests/kvm/x86/sev_smoke_test.c   |    22 +-
 .../kvm/x86/smaller_maxphyaddr_emulation_test.c    |     8 +-
 tools/testing/selftests/kvm/x86/smm_test.c         |     8 +-
 tools/testing/selftests/kvm/x86/state_test.c       |    14 +-
 tools/testing/selftests/kvm/x86/svm_int_ctl_test.c |     2 +-
 .../selftests/kvm/x86/svm_lbr_nested_state.c       |     2 +-
 .../selftests/kvm/x86/svm_nested_clear_efer_svme.c |     2 +-
 .../selftests/kvm/x86/svm_nested_shutdown_test.c   |     2 +-
 .../kvm/x86/svm_nested_soft_inject_test.c          |    10 +-
 .../selftests/kvm/x86/svm_nested_vmcb12_gpa.c      |    14 +-
 tools/testing/selftests/kvm/x86/svm_vmcall_test.c  |     2 +-
 tools/testing/selftests/kvm/x86/sync_regs_test.c   |     2 +-
 .../selftests/kvm/x86/triple_fault_event_test.c    |     4 +-
 tools/testing/selftests/kvm/x86/tsc_msrs_test.c    |     2 +-
 tools/testing/selftests/kvm/x86/tsc_scaling_sync.c |     4 +-
 .../selftests/kvm/x86/ucna_injection_test.c        |    45 +-
 .../testing/selftests/kvm/x86/userspace_io_test.c  |     4 +-
 .../selftests/kvm/x86/userspace_msr_exit_test.c    |    58 +-
 .../selftests/kvm/x86/vmx_apic_access_test.c       |     4 +-
 .../selftests/kvm/x86/vmx_apicv_updates_test.c     |     4 +-
 .../kvm/x86/vmx_invalid_nested_guest_state.c       |     2 +-
 tools/testing/selftests/kvm/x86/vmx_msrs_test.c    |    22 +-
 .../selftests/kvm/x86/vmx_nested_la57_state_test.c |     4 +-
 .../testing/selftests/kvm/x86/vmx_pmu_caps_test.c  |    12 +-
 .../selftests/kvm/x86/vmx_preemption_timer_test.c  |     2 +-
 tools/testing/selftests/kvm/x86/xapic_ipi_test.c   |    64 +-
 tools/testing/selftests/kvm/x86/xapic_state_test.c |    20 +-
 tools/testing/selftests/kvm/x86/xapic_tpr_test.c   |    24 +-
 tools/testing/selftests/kvm/x86/xcr0_cpuid_test.c  |     8 +-
 tools/testing/selftests/kvm/x86/xen_shinfo_test.c  |    22 +-
 tools/testing/selftests/kvm/x86/xss_msr_test.c     |     2 +-
 tools/testing/selftests/mm/config                  |     1 +
 tools/testing/selftests/sched_ext/Makefile         |     1 +
 .../selftests/sched_ext/non_scx_kfunc_deny.bpf.c   |    44 +
 .../selftests/sched_ext/non_scx_kfunc_deny.c       |    47 +
 .../tc-testing/tc-tests/qdiscs/taprio.json         |    26 +
 tools/testing/vma/include/dup.h                    |     2 +-
 tools/testing/vma/include/stubs.h                  |     3 +-
 1553 files changed, 94753 insertions(+), 17942 deletions(-)
 create mode 100644 Documentation/gpu/xe/xe_gt_stats.rst
 create mode 100644 drivers/accel/amdxdna/aie4_ctx.c
 create mode 100644 drivers/accel/amdxdna/aie4_host_queue.h
 create mode 100644 drivers/gpu/drm/amd/amdgpu/nbio_v6_3_2.c
 create mode 100644 drivers/gpu/drm/amd/amdgpu/nbio_v6_3_2.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/dml2_0/README.md
 delete mode 100644 drivers/gpu/drm/amd/display/dc/dml2_0/dml21/src/dml2_top/dml2_top_legacy.h
 create mode 100644 drivers/gpu/drm/amd/display/modules/inc/mod_power.h
 create mode 100644 drivers/gpu/drm/amd/display/modules/power/power.c
 create mode 100755 drivers/gpu/drm/amd/include/asic_reg/gc/gc_12_1_1_offset.h
 create mode 100755 drivers/gpu/drm/amd/include/asic_reg/gc/gc_12_1_1_sh_mask.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/nbio/nbio_6_3_2_offset.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/nbio/nbio_6_3_2_sh_mask.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h
 rename drivers/gpu/drm/i915/{display/intel_fb_pin.c => i915_fb_pin.c} (66%)
 rename drivers/gpu/drm/tests/{drm_atomic_state_test.c => drm_atomic_commit_test.c} (98%)
 create mode 100644 drivers/gpu/drm/xe/abi/xe_sysctrl_abi.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.c
 create mode 100644 drivers/gpu/drm/xe/regs/xe_sysctrl_regs.h
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.c
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.h
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_ras.c
 create mode 100644 drivers/gpu/drm/xe/xe_ras.h
 create mode 100644 drivers/gpu/drm/xe/xe_ras_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_event.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_event_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_types.h
 delete mode 100644 drivers/mailbox/mailbox.h
 rename drivers/gpu/drm/i915/intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h (98%)
 rename drivers/gpu/drm/i915/intel_pci_config.h => include/drm/intel/pci_config.h (100%)
 rename drivers/gpu/drm/i915/vlv_iosf_sb_reg.h => include/drm/intel/vlv_iosf_sb_regs.h (95%)
 create mode 100644 tools/testing/selftests/sched_ext/non_scx_kfunc_deny.bpf.c
 create mode 100644 tools/testing/selftests/sched_ext/non_scx_kfunc_deny.c
