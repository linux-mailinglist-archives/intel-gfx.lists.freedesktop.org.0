Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4051F695
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 10:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BD610E37B;
	Mon,  9 May 2022 08:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E3A10E386
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 08:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652085493; x=1683621493;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nK0z1sIBq/6CBewrT+sUtsP5p8ONX3K/AO56dII7dBo=;
 b=F/nT7CO7gIhPlwbIEgU6wjyc2kcvxar+svqIFchzmqcerte1MJY5BTIF
 Blnk6zhkRh7njqqThEdxYm2dTjcMQFrwlHpUC2MRfjFZxNp5oiNuj38WI
 05OnHAkakym6FRHowZWXMeHBv5fhxqQorIbZaX1k1OJkrkNojgagTCrJA
 AIvAgRrrT09wXjdpfri7WvoyNWbd/IUJNqEe2AQB1uj4EG5GdsddWtxI3
 EUSInjC4zcM8nKgZQsr95hpzNAu+p8a8xjRbTPu6zEyzMvbFHQrtI0e4C
 OXg8HbBSDaCWeF0EArs95LMFMWmqwvo34RTXtcPfhHkwTXPxZH3cJI3FI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="248885659"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="248885659"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 01:37:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="893235680"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 01:37:58 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 10:37:46 +0200
Message-Id: <20220509083746.2270545-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: disable HPD before framebuffer
 unregistration
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

In case framebuffer setup is deferred it will happen in HPD worker.
Then on driver removal we should assure it will not happen after
drm_fb_helper_unregister_fbi, otherwise we risk UAF.
The patch should fix following GPF:

[272.634530] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
[272.634536] CPU: 0 PID: 6030 Comm: i915_selftest Tainted: G     U            5.18.0-rc5-CI_DRM_11603-g12dccf4f5eef+ #1
[272.634541] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
[272.634545] RIP: 0010:fb_do_apertures_overlap.part.14+0x26/0x60
[272.634550] Code: a0 4f 4c 00 8b 0e 85 c9 74 4e 41 57 41 56 49 c7 c6 48 e2 34 82 41 55 41 54 49 89 fc 55 48 89 f5 53 31 db 48 83 ec 10 48 63 c3 <41> 8b 14 24 48 c1 e0 04 4c 8d 6c 05 08 85 d2 0f 85 53 9a 49 00 83
[272.634556] RSP: 0018:ffffc900015ab988 EFLAGS: 00010286
[272.634559] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000002
[272.634562] RDX: 0000000000000001 RSI: ffff888139c14040 RDI: 6b6b6b6b6b6b6b6b
[272.634564] RBP: ffff888139c14040 R08: ffff88811a9eddf8 R09: 00000000fffffffe
[272.634567] R10: ffffc900015aba18 R11: 00000000c283001c R12: 6b6b6b6b6b6b6b6b
[272.634569] R13: ffffffff82877400 R14: ffffffff8234e248 R15: 6b6b6b6b6b6b6b6b
[272.634572] FS:  00007f2ea1b8c500(0000) GS:ffff88888e800000(0000) knlGS:0000000000000000
[272.634575] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[272.634578] CR2: 00007ffc8db09f50 CR3: 00000001406d4001 CR4: 0000000000770ef0
[272.634580] PKRU: 55555554
[272.634582] Call Trace:
[272.634583]  <TASK>
[272.634585]  do_remove_conflicting_framebuffers+0x59/0xa0
[272.634589]  remove_conflicting_framebuffers+0x2d/0xc0
[272.634592]  remove_conflicting_pci_framebuffers+0xc8/0x110
[272.634595]  drm_aperture_remove_conflicting_pci_framebuffers+0x52/0x70
[272.634604]  i915_driver_probe+0x63a/0xdd0 [i915]

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 43 +++++++++++-----------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 557c7f15ac22a9..0b0e96d3892b90 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -571,6 +571,27 @@ static void intel_fbdev_sync(struct intel_fbdev *ifbdev)
 	ifbdev->cookie = 0;
 }
 
+/* Suspends/resumes fbdev processing of incoming HPD events. When resuming HPD
+ * processing, fbdev will perform a full connector reprobe if a hotplug event
+ * was received while HPD was suspended.
+ */
+static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state)
+{
+	struct intel_fbdev *ifbdev = i915->fbdev;
+	bool send_hpd = false;
+
+	mutex_lock(&ifbdev->hpd_lock);
+	ifbdev->hpd_suspended = state == FBINFO_STATE_SUSPENDED;
+	send_hpd = !ifbdev->hpd_suspended && ifbdev->hpd_waiting;
+	ifbdev->hpd_waiting = false;
+	mutex_unlock(&ifbdev->hpd_lock);
+
+	if (send_hpd) {
+		drm_dbg_kms(&i915->drm, "Handling delayed fbcon HPD event\n");
+		drm_fb_helper_hotplug_event(&ifbdev->helper);
+	}
+}
+
 void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 {
 	struct intel_fbdev *ifbdev = dev_priv->fbdev;
@@ -582,6 +603,7 @@ void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 	if (!current_is_async())
 		intel_fbdev_sync(ifbdev);
 
+	intel_fbdev_hpd_set_suspend(dev_priv, FBINFO_STATE_SUSPENDED);
 	drm_fb_helper_unregister_fbi(&ifbdev->helper);
 }
 
@@ -595,27 +617,6 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv)
 	intel_fbdev_destroy(ifbdev);
 }
 
-/* Suspends/resumes fbdev processing of incoming HPD events. When resuming HPD
- * processing, fbdev will perform a full connector reprobe if a hotplug event
- * was received while HPD was suspended.
- */
-static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state)
-{
-	struct intel_fbdev *ifbdev = i915->fbdev;
-	bool send_hpd = false;
-
-	mutex_lock(&ifbdev->hpd_lock);
-	ifbdev->hpd_suspended = state == FBINFO_STATE_SUSPENDED;
-	send_hpd = !ifbdev->hpd_suspended && ifbdev->hpd_waiting;
-	ifbdev->hpd_waiting = false;
-	mutex_unlock(&ifbdev->hpd_lock);
-
-	if (send_hpd) {
-		drm_dbg_kms(&i915->drm, "Handling delayed fbcon HPD event\n");
-		drm_fb_helper_hotplug_event(&ifbdev->helper);
-	}
-}
-
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-- 
2.25.1

