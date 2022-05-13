Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D155266C9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 18:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC3D10E2DD;
	Fri, 13 May 2022 16:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD8210E2DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 16:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652458343; x=1683994343;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7eMgB9FuCQkZ+JUcNsnpc47EbT5DNzOaJ971/N84wZI=;
 b=TDgJ0jdcSAivEsoNKdyuDI0KIjpYsiB3uFUCUXdQIxF2ti8ve+e6CBEW
 Q1c7kIi71xkIP9ijJVQaho5sOeVw5Pp5RjP3ez7JlLGPY3nLuhS0mKfTW
 7VYbPYr2CKdDZXHH7Za503etPNQn5zMm7a7hx9ti7foZJbg+MikjfUL/W
 s8APhdpQV4dqtKmduwNqAu4nyB0q7BIKBfTawEdxN8/+lqhEIdJDUaej5
 FDqTlBwFn6lkJ+zgwboEWM/HmPZpnB03ne8FvmGIR49usvemQjzbIBjOA
 ujL34H2bJphcjMcdK2aO70IF5AfgyZ0d3MQ49hGoXGUCSRk1mk5yuRG2z w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="269175327"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="269175327"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 09:06:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="740208292"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 09:06:46 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 18:06:41 +0200
Message-Id: <20220513160641.3096487-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6] drm/i915/display: disable HPD workers before
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
1. Setup of deferred fbdev after fbdev unregistration.
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
v-2: caused issues in kms code [2],
v-1: revealed that not only fbdev does not like HPD on removal [3],
v3: lacks drm_kms_helper_poll_disable[4]
v4: added dump_stack to detect late fb registration
v5: added intel_dp_mst_suspend to stop late fb registration
v6: removed dump_stack with hope everything is handled

Moreover this is quite rare bug, but due to specific configuration
of one of CI machines it appears there very frequently.
Forgive me spamming the list.

[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/5329
[2]: https://patchwork.freedesktop.org/series/103621/
[3]: https://patchwork.freedesktop.org/series/103738/
[4]: https://patchwork.freedesktop.org/series/103811/

Regards
Andrzej
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806d50b302ab92..007bc6daef7d31 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10486,13 +10486,6 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 	 */
 	intel_hpd_poll_fini(i915);
 
-	/*
-	 * MST topology needs to be suspended so we don't have any calls to
-	 * fbdev after it's finalized. MST will be destroyed later as part of
-	 * drm_mode_config_cleanup()
-	 */
-	intel_dp_mst_suspend(i915);
-
 	/* poll work can call into fbdev, hence clean that up afterwards */
 	intel_fbdev_fini(i915);
 
@@ -10584,6 +10577,10 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_dp_mst_suspend(i915);
+	intel_hpd_cancel_work(i915);
+	drm_kms_helper_poll_disable(&i915->drm);
+
 	intel_fbdev_unregister(i915);
 	intel_audio_deinit(i915);
 
-- 
2.25.1

