Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aUf4LsyLRmo+YQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:03:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B4F6F9DC6
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 18:03:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i5aUimyt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662B710F4B2;
	Thu,  2 Jul 2026 16:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480AB10F4B2;
 Thu,  2 Jul 2026 16:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783008201; x=1814544201;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=exkHYHECHqDlMqIjl0X4BPoFtQ7ZzKHm7dymCwYLvOw=;
 b=i5aUimyt5AVm8CPT26isLcZVR/xuFw1S3J/V7bJH7mTnerZLfpWGRQDD
 98Qk2h5qYtZUGPUi7HQK08v7QosfMp+YwJYoaX7zTwvIQ6s15jiGvDa6u
 ZA4mM1FjlJK14ZdRa+N+1YpPOBC8u4SiSzIm0wRmOGZmenwLPWzNS5bSh
 V8txkKexVJQovzm4FjwBJSH84YtWhrvIKw2RliTQW74f91Bksdxx3XLUc
 Xt4C487AqJSEoPQclZXoRTVHovH4ymw/BKphooQaNx77/BceQ+wY/p1iE
 4h4p6c0zed7UlspjH2dsTx8vw8py435Qb9zrgYFtQZ39kL4O3lg3XpAR6 Q==;
X-CSE-ConnectionGUID: 9UE3fA5URSq77MXz4FTo6g==
X-CSE-MsgGUID: ii8CURpaS0GjX8aCmwP6Tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="95145552"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="95145552"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 09:03:20 -0700
X-CSE-ConnectionGUID: cU54ZtguQaW53lLLwiSDXw==
X-CSE-MsgGUID: Dag2sMFrS9WqX1kYKbBekg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="253053939"
Received: from abityuts-desk.ger.corp.intel.com (HELO [10.245.245.47])
 ([10.245.245.47])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 09:03:17 -0700
Message-ID: <786bdc92-0ce3-4c0f-9668-b0fa8a0047ea@linux.intel.com>
Date: Thu, 2 Jul 2026 18:03:51 +0200
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
Subject: [PULL] drm-misc-fixes
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5B4F6F9DC6

Hi Dave, Sima,

drm-misc-fixes for v7.2-rc2!

Kind regards,
~Maarten Lankhorst

drm-misc-fixes-2026-07-02:
drm-misc-fixes for v7.2-rc2:
- Fix potential null pointer dereference in dma-buf.
- Handle 0 in dma_fence_dedup_array.
- Use the correct callback in dma_fence_timeline_name.
- Fix device removal handling in amdxdna.
- kernel-doc fixes.
- Include header fix for drm_ras.h
- Handle edids better in virtio.
- Use the clk_bulk api for error handling in malidp.
- More clk handling fixes for komeda.
- panthor scheduler block fallout fixes.
- panthor unplug fixes.
- other panthor fixes.
- Fix unnecessary WARN_ON in topology probe after teardown.
- Add refcount to amdxdna job to fix use-after free.
- Fix increasing args->size in ioctl's of drm/imagination.
- Handle stride correctly in pvr_set_uobj_array.
- Only call imagination's drm_sched_entity_fini once.
The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-07-02

for you to fetch changes up to 8dc8f3f4c2382fb7d1b1986ba8f33a2466cd3d7a:

  drm/imagination: Fix user array stride in pvr_set_uobj_array() (2026-07-02 11:16:18 +0100)

----------------------------------------------------------------
drm-misc-fixes for v7.2-rc2:
- Fix potential null pointer dereference in dma-buf.
- Handle 0 in dma_fence_dedup_array.
- Use the correct callback in dma_fence_timeline_name.
- Fix device removal handling in amdxdna.
- kernel-doc fixes.
- Include header fix for drm_ras.h
- Handle edids better in virtio.
- Use the clk_bulk api for error handling in malidp.
- More clk handling fixes for komeda.
- panthor scheduler block fallout fixes.
- panthor unplug fixes.
- other panthor fixes.
- Fix unnecessary WARN_ON in topology probe after teardown.
- Add refcount to amdxdna job to fix use-after free.
- Fix increasing args->size in ioctl's of drm/imagination.
- Handle stride correctly in pvr_set_uobj_array.
- Only call imagination's drm_sched_entity_fini once.

----------------------------------------------------------------
André Draszik (1):
      dma-fence: use correct callback in dma_fence_timeline_name()

Baineng Shou (1):
      dma-fence: Make dma_fence_dedup_array() robust against 0-count input

Boris Brezillon (10):
      drm/panthor: Always use the IRQ-safe variant when acquiring the fence lock
      drm/panthor: Keep the reset work disabled until everything is initialized
      drm/panthor: Fix potential invalid pointer deref in group_process_tiler_oom()
      drm/panthor: Fix theoretical IOMEM access in suspended state
      drm/panthor: Don't overrule pending immediate ticks in sched_resume_tick()
      drm/panthor: Fix panthor_pwr_unplug()
      drm/panthor: Drop a needless check in panthor_fw_unplug()
      drm/panthor: Fix a leak when a group is evicted before the tiler OOM is serviced
      drm/panthor: Interrupt group start/resumption if group_bind_locked() fails
      drm/panthor: Keep interrupts masked until they are needed

Brajesh Gupta (2):
      drm/imagination: Fix double call to drm_sched_entity_fini()
      drm/imagination: Fix returned size for DRM_IOCTL_PVR_DEV_QUERY

Bryam Vargas (1):
      drm/virtio: bound EDID block reads to the response buffer

Gustavo Kenji Mendonça Kaneko (2):
      drm/arm/malidp: use clk_bulk API in runtime PM resume and suspend
      drm/arm/komeda: fix error handling for clk_prepare_enable() and callers

Jani Nikula (3):
      drm/dp: fix kernel-doc for struct drm_dp_as_sdp
      drm/fixed: fix kernel-doc for drm_sm2fixp()
      drm/ras: include linux/types.h in drm_ras.h

Lizhi Hou (4):
      accel/amdxdna: Fix amdxdna_client lifetime race during device removal
      accel/amdxdna: Fix notifier_wq lifetime race during device removal
      accel/amdxdna: Fix iommu domain lifetime race during device removal
      accel/amdxdna: Fix use-after-free in debug BO command handling

Luca Coelho (1):
      drm/dp_mst: Handle torn-down topology gracefully in drm_dp_mst_topology_queue_probe()

Maarten Lankhorst (1):
      Merge drm/drm-fixes into drm-misc-fixes

Philipp Stanner (1):
      dma-buf: dma-fence: Fix potential NULL pointer dereference

Shuvam Pandey (1):
      drm/imagination: Fix user array stride in pvr_set_uobj_array()

 drivers/accel/amdxdna/aie2_ctx.c                |  68 +++++++++++----
 drivers/accel/amdxdna/amdxdna_ctx.h             |   1 +
 drivers/accel/amdxdna/amdxdna_iommu.c           |  43 +++++++---
 drivers/accel/amdxdna/amdxdna_pci_drv.c         |  38 ++++-----
 drivers/accel/amdxdna/amdxdna_pci_drv.h         |   1 +
 drivers/dma-buf/dma-fence-unwrap.c              |   3 +
 drivers/dma-buf/dma-fence.c                     |   6 +-
 drivers/gpu/drm/arm/display/komeda/komeda_dev.c |   6 +-
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c |  14 +--
 drivers/gpu/drm/arm/malidp_drv.c                |  22 +++--
 drivers/gpu/drm/display/drm_dp_mst_topology.c   |   4 +-
 drivers/gpu/drm/imagination/pvr_context.c       |  18 ++--
 drivers/gpu/drm/imagination/pvr_drv.c           |  19 +++--
 drivers/gpu/drm/imagination/pvr_queue.c         |   6 +-
 drivers/gpu/drm/imagination/pvr_queue.h         |   2 +-
 drivers/gpu/drm/imagination/pvr_vm.c            |   6 +-
 drivers/gpu/drm/panthor/panthor_device.c        |   4 +
 drivers/gpu/drm/panthor/panthor_device.h        |  17 ++--
 drivers/gpu/drm/panthor/panthor_fw.c            |   6 +-
 drivers/gpu/drm/panthor/panthor_gpu.c           |   3 +-
 drivers/gpu/drm/panthor/panthor_mmu.c           |   9 +-
 drivers/gpu/drm/panthor/panthor_pwr.c           |  10 ++-
 drivers/gpu/drm/panthor/panthor_sched.c         | 108 +++++++++++++-----------
 drivers/gpu/drm/virtio/virtgpu_vq.c             |   3 +-
 include/drm/display/drm_dp_helper.h             |   1 +
 include/drm/drm_fixed.h                         |   3 +-
 include/drm/drm_ras.h                           |   2 +
 27 files changed, 265 insertions(+), 158 deletions(-)
