Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787A568EE24
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:43:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192CF10E754;
	Wed,  8 Feb 2023 11:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBBD10E744
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675856586; x=1707392586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bad3zioElFR4iOrfZwwggXy8NnitIvzl7wBCglVTA6A=;
 b=ccMlDU7yg4lHGaWwn+Wyb6vOlwzVSP8Q25RS4D0QL7/oGg1IcjJM1F+l
 J61PaJyVpWxHv9RSnDnM05PZf+KJAnyt6NeETgQ20kyLR7RfItwujsq4J
 xlS9XEXCJm5J0XLGKVC2mR5+ZpQcrYRQdD+pThtWluLNLCx59FMo0bLDi
 F5zbfm6F2Od1kVjEzzPj8/LOuTLbQUytJaDT2sX31mFpemKp5YZXie/HE
 xYxB4Q8EA2jWAVDoiwe5WUXXqn61R9ylyF4ZcRVTuF8l49DuvQWzV/kl/
 p1XRBlxR2GaocrqomXuIOM+2V8yiZSCKWfCojKrrP+IKnPW9pFcPjUZiN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313415491"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="313415491"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="699620685"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="699620685"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:04 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 13:42:57 +0200
Message-Id: <20230208114300.3123934-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230208114300.3123934-1-imre.deak@intel.com>
References: <20230208114300.3123934-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Fix system suspend without
 fbdev being initialized
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If fbdev is not initialized for some reason - in practice on platforms
without display - suspending fbdev should be skipped during system
suspend, fix this up. While at it add an assert that suspending fbdev
only happens with the display present.

This fixes the following:

[   91.227923] PM: suspend entry (s2idle)
[   91.254598] Filesystems sync: 0.025 seconds
[   91.270518] Freezing user space processes
[   91.272266] Freezing user space processes completed (elapsed 0.001 seconds)
[   91.272686] OOM killer disabled.
[   91.272872] Freezing remaining freezable tasks
[   91.274295] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)
[   91.659622] BUG: kernel NULL pointer dereference, address: 00000000000001c8
[   91.659981] #PF: supervisor write access in kernel mode
[   91.660252] #PF: error_code(0x0002) - not-present page
[   91.660511] PGD 0 P4D 0
[   91.660647] Oops: 0002 [#1] PREEMPT SMP NOPTI
[   91.660875] CPU: 4 PID: 917 Comm: bash Not tainted 6.2.0-rc7+ #54
[   91.661185] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS edk2-20221117gitfff6d81270b5-9.fc37 unknown
[   91.661680] RIP: 0010:mutex_lock+0x19/0x30
[   91.661914] Code: 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 0f 1f 44 00 00 53 48 89 fb e8 62 d3 ff ff 31 c0 65 48 8b 14 25 00 15 03 00 <f0> 48 0f b1 13 75 06 5b c3 cc cc cc cc 48 89 df 5b eb b4 0f 1f 40
[   91.662840] RSP: 0018:ffffa1e8011ffc08 EFLAGS: 00010246
[   91.663087] RAX: 0000000000000000 RBX: 00000000000001c8 RCX: 0000000000000000
[   91.663440] RDX: ffff8be455eb0000 RSI: 0000000000000001 RDI: 00000000000001c8
[   91.663802] RBP: ffff8be459440000 R08: ffff8be459441f08 R09: ffffffff8e1432c0
[   91.664167] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
[   91.664532] R13: 00000000000001c8 R14: 0000000000000000 R15: ffff8be442f4fb20
[   91.664905] FS:  00007f28ffc16740(0000) GS:ffff8be4bb900000(0000) knlGS:0000000000000000
[   91.665334] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   91.665626] CR2: 00000000000001c8 CR3: 0000000114926006 CR4: 0000000000770ee0
[   91.665988] PKRU: 55555554
[   91.666131] Call Trace:
[   91.666265]  <TASK>
[   91.666381]  intel_fbdev_set_suspend+0x97/0x1b0 [i915]
[   91.666738]  i915_drm_suspend+0xb9/0x100 [i915]
[   91.667029]  pci_pm_suspend+0x78/0x170
[   91.667234]  ? __pfx_pci_pm_suspend+0x10/0x10
[   91.667461]  dpm_run_callback+0x47/0x150
[   91.667673]  __device_suspend+0x10a/0x4e0
[   91.667880]  dpm_suspend+0x134/0x270
[   91.668069]  dpm_suspend_start+0x79/0x80
[   91.668272]  suspend_devices_and_enter+0x11b/0x890
[   91.668526]  pm_suspend.cold+0x270/0x2fc
[   91.668737]  state_store+0x46/0x90
[   91.668916]  kernfs_fop_write_iter+0x11b/0x200
[   91.669153]  vfs_write+0x1e1/0x3a0
[   91.669336]  ksys_write+0x53/0xd0
[   91.669510]  do_syscall_64+0x58/0xc0
[   91.669699]  ? syscall_exit_to_user_mode_prepare+0x18e/0x1c0
[   91.669980]  ? syscall_exit_to_user_mode_prepare+0x18e/0x1c0
[   91.670278]  ? syscall_exit_to_user_mode+0x17/0x40
[   91.670524]  ? do_syscall_64+0x67/0xc0
[   91.670717]  ? __irq_exit_rcu+0x3d/0x140
[   91.670931]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[   91.671202] RIP: 0033:0x7f28ffd14284

Fixes: f8cc091e0530 ("drm/i915/fbdev: suspend HPD before fbdev unregistration")
References: https://gitlab.freedesktop.org/drm/intel/-/issues/8015
Tested-by: iczero <iczero@hellomouse.net>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: iczero <iczero@hellomouse.net>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 81b41148e592b..e719202d831f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -632,7 +632,13 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 	struct fb_info *info;
 
-	if (!ifbdev || !ifbdev->vma)
+	if (!ifbdev)
+		return;
+
+	if (drm_WARN_ON(&dev_priv->drm, !HAS_DISPLAY(dev_priv)))
+		return;
+
+	if (!ifbdev->vma)
 		goto set_suspend;
 
 	info = ifbdev->helper.info;
-- 
2.37.1

