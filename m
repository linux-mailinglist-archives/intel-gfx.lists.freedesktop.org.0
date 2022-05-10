Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EAD522560
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 22:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22FE10EF64;
	Tue, 10 May 2022 20:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F030410EF64
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 20:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652214171; x=1683750171;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b4ibDUo/4ImMJHKLBw4oNUnCpNkcbL/fna8SqxMnd+c=;
 b=YgX0QMxzZOshVb9WmB7isAh2a49OiSXGDmHrxM9sQeN6B/SXIB1XR8QL
 GZi788ZoPO+gCFy6G8fiUZs39P6u+Og7WgA9rLH+xuPh9K39P+N5o1Bo5
 0f8TX3q63P9PoSf2Di/YRQeaEIssuVtxZBVmnh5NbXcpSmUfeTSv7qQrv
 g5moaTwVu7PU8JWOD0TGNYnV32TTHd8NZ+cURwQQ5lB1CFosddNmiPOWt
 NJ9WZG4tMC6keWngAzfGHgXXmL81LsqakNH2BIGbrqNKLZzhKPM5C2B0P
 GbLAknibc930ZyKQkQPGEi4tgO+EiDIkf6r4eX5+7ykhYj9uZ7fprMwTu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="269630897"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="269630897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 13:22:51 -0700
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="593743694"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 13:22:49 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 22:22:44 +0200
Message-Id: <20220510202244.2559574-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: disable HPD workers before
 display driver unregister
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

Handling HPD during driver removal is pointless, and can cause different
use-after-free/concurrency issues:
1. Setup of deffered fbdev after fbdev unregistration.
2. Access to DP-AUX after DP-AUX removal.

Below stacktraces of both cases observed on CI:

[272.634530] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
[272.634536] CPU: 0 PID: 6030 Comm: i915_selftest Tainted: G     U            5.18.0-rc5-CI_DRM_11603-g12dccf4f5eef+ #1
[272.634541] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
[272.634545] RIP: 0010:fb_do_apertures_overlap.part.14+0x26/0x60
...
[272.634582] Call Trace:
[272.634583]  <TASK>
[272.634585]  do_remove_conflicting_framebuffers+0x59/0xa0
[272.634589]  remove_conflicting_framebuffers+0x2d/0xc0
[272.634592]  remove_conflicting_pci_framebuffers+0xc8/0x110
[272.634595]  drm_aperture_remove_conflicting_pci_framebuffers+0x52/0x70
[272.634604]  i915_driver_probe+0x63a/0xdd0 [i915]

[283.405824] cpu_latency_qos_update_request called for unknown object
[283.405866] WARNING: CPU: 2 PID: 240 at kernel/power/qos.c:296 cpu_latency_qos_update_request+0x2d/0x100
[283.405912] CPU: 2 PID: 240 Comm: kworker/u64:9 Not tainted 5.18.0-rc6-Patchwork_103738v3-g1672d1c43e43+ #1
[283.405915] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
[283.405916] Workqueue: i915-dp i915_digport_work_func [i915]
[283.406020] RIP: 0010:cpu_latency_qos_update_request+0x2d/0x100
...
[283.406040] Call Trace:
[283.406041]  <TASK>
[283.406044]  intel_dp_aux_xfer+0x60e/0x8e0 [i915]
[283.406131]  ? finish_swait+0x80/0x80
[283.406139]  intel_dp_aux_transfer+0xc5/0x2b0 [i915]
[283.406218]  drm_dp_dpcd_access+0x79/0x130 [drm_display_helper]
[283.406227]  drm_dp_dpcd_read+0xe2/0xf0 [drm_display_helper]
[283.406233]  intel_dp_hpd_pulse+0x134/0x570 [i915]
[283.406308]  ? __down_killable+0x70/0x140
[283.406313]  i915_digport_work_func+0xba/0x150 [i915]

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Hi all,

This is my Nth attempt to solve some old CI bug[1].
v1: caused issues in kms code [2],
v2: revealed that not only fbdev does not like HPD on removal [3],
v3: lacks drm_kms_helper_poll_disable[4]

Moreover this is quite rare bug, but due to specific configuration
of one of CI machines it appears there very frequently.

[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/5329
[2]: https://patchwork.freedesktop.org/series/103621/
[3]: https://patchwork.freedesktop.org/series/103738/
[4]: https://patchwork.freedesktop.org/series/103811/

Regards
Andrzej
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806d50b302ab92..9c9232da61ff37 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10584,6 +10584,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_hpd_cancel_work(i915);
+	drm_kms_helper_poll_disable(&i915->drm);
 	intel_fbdev_unregister(i915);
 	intel_audio_deinit(i915);
 
-- 
2.25.1

