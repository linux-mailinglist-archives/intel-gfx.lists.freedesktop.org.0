Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA25C51C2CF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 16:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB9110E415;
	Thu,  5 May 2022 14:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AD310E415
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 14:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651761889; x=1683297889;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XfQD0glDUOxUk0vPNmhUmgCYkMxUmbtRdn6jEtlOqWA=;
 b=hAUjz9aR/sE6n9XWxVCb3hadmaDgpK81yoJfYfENV1GzvPjG+H4rwfym
 ehAbaaKPXl+JJy+IwfqHsBxS5CeiPwRo1iRNirWyH+vLqb7bhceqRMyQi
 NLSaEPpCW6fUKrGQpLGoSyri7b8u/gIV2c5/JWibV8ePV1Yn/ZwhvvCgP
 qUx0BGlW/hXnv4A5EGNh5iltat60C4aLXV06cPRHi3gE4PE4q/qdvQtTY
 crqPziJFyQTY4cyhCgbTfoEQVSpaDl85QP4FqJ6ItBrPVft9fhckRQzG3
 w9BuVSwH/5JfST1AZL+lVoiysjoSs0kYxC8hCV6TokZjtky3stzTKDj8k g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="266970887"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="266970887"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 07:44:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="734923202"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 07:44:47 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 16:44:41 +0200
Message-Id: <20220505144441.1798330-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: unregister framebuffer after
 disabling hpd
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

Deferred framebuffer can be registered in hpd worker. So
drm_fb_helper_unregister_fbi should be called after hpd is stopped.
Otherwise we risk UAF after module removal.

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
Hi all,

This patch tries to solve frequent issue [1]. Currently observed only on bat-rpls-2
machine on public Intel CI.

[1]: https://gitlab.freedesktop.org/drm/intel/-/issues/5329

Regards
Andrzej
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 557c7f15ac22a9..c04c37ba5688ce 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -581,8 +581,6 @@ void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 	cancel_work_sync(&dev_priv->fbdev_suspend_work);
 	if (!current_is_async())
 		intel_fbdev_sync(ifbdev);
-
-	drm_fb_helper_unregister_fbi(&ifbdev->helper);
 }
 
 void intel_fbdev_fini(struct drm_i915_private *dev_priv)
@@ -592,6 +590,8 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv)
 	if (!ifbdev)
 		return;
 
+	drm_fb_helper_unregister_fbi(&ifbdev->helper);
+
 	intel_fbdev_destroy(ifbdev);
 }
 
-- 
2.25.1

