Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ME0SDM/iDmrACwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 12:47:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B845A38EA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 12:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B1810E189;
	Thu, 21 May 2026 10:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jNKvSuju";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8048310E189;
 Thu, 21 May 2026 10:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779360459; x=1810896459;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=CQcu6k6vkEdgr3YXaYhrf0FkDkDMgcFMPdbfJKWcpjc=;
 b=jNKvSujurYeLfckhDELeQXAWKUEKdO7ymSl9JcSA4sEOPDu+P+X5oWqj
 NCJQbbkhtwTE2EWqrk3p/QbQJpYRNJoQYnQ/FhaQ9RErJk3CC0BGXROcT
 O0TrizEPaBEa1+9h5fQftpJNnMHSHo9afbbPnmjkTz1WR9rr+lxGgigwJ
 wJwLmuwxug7C56U0QAMX22IHWZACBoETPPCxWBUTMgo2UKGh4bf1wBhsw
 OH43kpiLZr71ZOCavGy670t0R8XK9CFq3ZqCSQzi+8EpziDUoK1inpxz8
 n6x6KQJebbUDeSqScEyAgKltNxk+P41/oS72Xf9WgUrC4Ik6GW6lF8AUr A==;
X-CSE-ConnectionGUID: huTC0HxSTyaHT5+4ALt+3w==
X-CSE-MsgGUID: MxeXkkq/REKxoFdfv2bgpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80130114"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80130114"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 03:47:39 -0700
X-CSE-ConnectionGUID: skp7MCU7SwydA3I90UgT9w==
X-CSE-MsgGUID: 60hjv++2SJGdhFlcNfypew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="242294964"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO [10.245.244.113])
 ([10.245.244.113])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 03:47:33 -0700
Message-ID: <f4034e3c-8290-49e1-9410-dc1f449265f4@linux.intel.com>
Date: Thu, 21 May 2026 12:47:22 +0200
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 70B845A38EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Simona,

Here's another pull request for v7.2-rc1.

Kind regards,
~Maarten Lankhorst

drm-misc-next-2026-05-21:
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Add VIRTIO_GPU_F_BLOB_ALIGNMENT flag.

Cross-subsystem Changes:
- Add common TMDS character rate constants to video/hdmi and use those
  in bridge drivers.

Core Changes:
- Fix leak in drm_syncobj_find_fence.
- Fix OOB reads related to DP-MST.
- Create drm_get_bridge_by_endpoint and convert drivers to use it in
  preparation of hotplug.

Driver Changes:
- Assorted bugfixes and cleanups to accel/ethosu, imagination, virtio,
  rockchip.
- Expandable device heap support to amdxdna, bridge/chipone-icn6211.
- Add Surface Pro 12 panels.
- Convert ite-it6211 to use drm hdmi audio helpers.
The following changes since commit 4c26e162947f91aa78ba57dd4fddd38fc80e7d60:

  drm/virtio: Extend blob UAPI with deferred-mapping hinting (2026-05-14 00:57:34 +0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-05-21

for you to fetch changes up to bfb76105b864af5553263a2156eecd7f08d7810b:

  drm/bridge: ite-it66121: Convert to DRM HDMI Audio Helper (2026-05-21 12:03:08 +0200)

----------------------------------------------------------------
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Add VIRTIO_GPU_F_BLOB_ALIGNMENT flag.

Cross-subsystem Changes:
- Add common TMDS character rate constants to video/hdmi and use those
  in bridge drivers.

Core Changes:
- Fix leak in drm_syncobj_find_fence.
- Fix OOB reads related to DP-MST.
- Create drm_get_bridge_by_endpoint and convert drivers to use it in
  preparation of hotplug.

Driver Changes:
- Assorted bugfixes and cleanups to accel/ethosu, imagination, virtio,
  rockchip.
- Expandable device heap support to amdxdna, bridge/chipone-icn6211.
- Add Surface Pro 12 panels.
- Convert ite-it6211 to use drm hdmi audio helpers.

----------------------------------------------------------------
Alexandru Dadu (1):
      drm/imagination: Add support for trace points

Ashutosh Desai (2):
      drm/dp/mst: fix OOB reads in remote DPCD/I2C sideband reply parsers
      drm/dp/mst: fix OOB reads on 2-byte fields in sideband reply parsers

Brajesh Gupta (4):
      drm/imagination: Populate FW common context ID before passing to the FW
      drm/imagination: Don't timeout job if its fence has been signaled
      drm/imagination: Rename FW booted to FW initialised
      drm/imagination: Access FW initialised state with READ/WRITE_ONCE

Deepanshu Kartikey (1):
      drm/virtio: use uninterruptible resv lock for plane updates

Harrison Vanderbyl (1):
      drm/panel-edp: Add panel for Surface Pro 12in

Javier Martinez Canillas (9):
      drm/imagination: Fix missing argument in pvr_power_fw_{en,dis}able()
      video/hdmi: Add common TMDS character rate constants
      drm/bridge: dw-hdmi: Use the common TMDS char rate constant
      drm/bridge: dw-hdmi-qp: Use the common TMDS char rate constant
      drm/bridge: inno-hdmi: Use the common TMDS char rate constant
      drm/sti: hdmi: Use the common TMDS char rate constants
      drm/sun4i: hdmi: Use the common TMDS char rate constant
      drm/msm/hdmi: Use the common TMDS char rate constants in 8996 PHY
      drm/msm/hdmi: Use the common TMDS char rate constants in 8998 PHY

Liviu Dudau (1):
      drm/syncobj: Fix memory leak in drm_syncobj_find_fence()

Lizhi Hou (1):
      accel/amdxdna: Add expandable device heap support

Luca Ceresoli (11):
      drm/bridge: drm_bridge_put(): ignore ERR_PTR
      drm/bridge: add of_drm_get_bridge_by_endpoint()
      drm/msm/hdmi: switch to of_drm_get_bridge_by_endpoint()
      drm/hisilicon/kirin: switch to of_drm_get_bridge_by_endpoint()
      drm/bridge: chrontel-ch7033: switch to of_drm_get_bridge_by_endpoint()
      drm/bridge: lontium-lt9611uxc: switch to of_drm_get_bridge_by_endpoint()
      drm/bridge: lt9611: switch to of_drm_get_bridge_by_endpoint()
      drm/bridge: adv7511: switch to of_drm_get_bridge_by_endpoint()
      drm/bridge: lt8713sx: switch to of_drm_get_bridge_by_endpoint()
      drm: zynqmp_dp: switch to of_drm_get_bridge_by_endpoint()
      drm: of: forbid bridge-only calls to drm_of_find_panel_or_bridge()

Osama Abdelkader (1):
      drm/bridge: chipone-icn6211: use devm_drm_bridge_add in dsi probe

Rob Herring (Arm) (1):
      accel: ethosu: Validate SRAM size on submit

Sen Wang (1):
      drm/bridge: ite-it66121: Convert to DRM HDMI Audio Helper

Sergio Lopez (3):
      drm/virtio: support VIRTIO_GPU_F_BLOB_ALIGNMENT
      drm/virtio: honor blob_alignment requirements
      drm/virtio: add VIRTGPU_PARAM_BLOB_ALIGNMENT to params

Vladimir Oltean (1):
      drm/rockchip: dw_hdmi: avoid direct dereference of phy->dev.of_node

 drivers/accel/amdxdna/aie2_ctx.c               |  45 +++-
 drivers/accel/amdxdna/aie2_message.c           |  52 +++-
 drivers/accel/amdxdna/aie2_msg_priv.h          |   1 +
 drivers/accel/amdxdna/aie2_pci.c               |   1 +
 drivers/accel/amdxdna/aie2_pci.h               |   8 +-
 drivers/accel/amdxdna/amdxdna_ctx.c            |  82 +++++-
 drivers/accel/amdxdna/amdxdna_ctx.h            |   2 +
 drivers/accel/amdxdna/amdxdna_gem.c            | 330 +++++++++++++++++++------
 drivers/accel/amdxdna/amdxdna_gem.h            |  16 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c        |  12 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h        |   8 +-
 drivers/accel/amdxdna/npu1_regs.c              |   1 +
 drivers/accel/amdxdna/npu4_regs.c              |   2 +
 drivers/accel/amdxdna/npu5_regs.c              |   1 +
 drivers/accel/amdxdna/npu6_regs.c              |   1 +
 drivers/accel/ethosu/ethosu_job.c              |  18 +-
 drivers/gpu/drm/bridge/adv7511/adv7511.h       |   1 -
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c   |  15 +-
 drivers/gpu/drm/bridge/chipone-icn6211.c       |  11 +-
 drivers/gpu/drm/bridge/chrontel-ch7033.c       |  28 +--
 drivers/gpu/drm/bridge/inno-hdmi.c             |   4 +-
 drivers/gpu/drm/bridge/ite-it66121.c           | 138 ++++-------
 drivers/gpu/drm/bridge/lontium-lt8713sx.c      |  10 +-
 drivers/gpu/drm/bridge/lontium-lt9611.c        |   9 +-
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c     |   9 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c   |   6 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c      |  10 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c  |  23 +-
 drivers/gpu/drm/drm_bridge.c                   |  45 +++-
 drivers/gpu/drm/drm_of.c                       |  26 +-
 drivers/gpu/drm/drm_syncobj.c                  |  10 +-
 drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c   |   9 +-
 drivers/gpu/drm/imagination/Makefile           |   3 +
 drivers/gpu/drm/imagination/pvr_context.c      |  32 +--
 drivers/gpu/drm/imagination/pvr_device.c       |   2 +-
 drivers/gpu/drm/imagination/pvr_drv.c          |   3 +
 drivers/gpu/drm/imagination/pvr_fw.c           |   4 +-
 drivers/gpu/drm/imagination/pvr_fw.h           |   7 +-
 drivers/gpu/drm/imagination/pvr_job.c          |   3 +
 drivers/gpu/drm/imagination/pvr_mmu.c          |   4 +-
 drivers/gpu/drm/imagination/pvr_power.c        |  10 +-
 drivers/gpu/drm/imagination/pvr_queue.c        |  12 +-
 drivers/gpu/drm/imagination/pvr_trace.h        | 113 +++++++++
 drivers/gpu/drm/imagination/pvr_trace_points.c |   7 +
 drivers/gpu/drm/msm/hdmi/hdmi.c                |  70 ++++--
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c       |   6 +-
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8998.c       |   6 +-
 drivers/gpu/drm/panel/panel-edp.c              |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c    |  25 +-
 drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c     |   6 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c         |   4 +-
 drivers/gpu/drm/virtio/virtgpu_drv.c           |   1 +
 drivers/gpu/drm/virtio/virtgpu_drv.h           |   3 +
 drivers/gpu/drm/virtio/virtgpu_gem.c           |  17 ++
 drivers/gpu/drm/virtio/virtgpu_ioctl.c         |  10 +
 drivers/gpu/drm/virtio/virtgpu_kms.c           |  14 +-
 drivers/gpu/drm/virtio/virtgpu_plane.c         |  10 +-
 drivers/gpu/drm/xlnx/zynqmp_dp.c               |  19 +-
 include/drm/drm_bridge.h                       |   7 +
 include/linux/hdmi.h                           |   6 +
 include/uapi/drm/virtgpu_drm.h                 |   1 +
 include/uapi/linux/virtio_gpu.h                |   9 +
 62 files changed, 976 insertions(+), 373 deletions(-)
 create mode 100644 drivers/gpu/drm/imagination/pvr_trace.h
 create mode 100644 drivers/gpu/drm/imagination/pvr_trace_points.c
