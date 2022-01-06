Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B4E486ACB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 21:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3821C10E8DA;
	Thu,  6 Jan 2022 20:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E1A10E8DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641499388; x=1673035388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D50fiBRTLHD4owaliio4EjwDDy1mCKTbkcAdf24wN0I=;
 b=Ob63pkBlFATDFPqLYa5pdhWK5u4KpibQmmPmQfTc7HJ0FFg1UFf07b5d
 Bfo5qRMvElTzm4XvAeW1KqYkKw4HUDqP0RQMExG17MQoeIFdw7kydYeBg
 kE6sH7X52+Ecg4UGliLMJXNsbvaxd2zbBg6e6RertOxra1i5hPZIIie6A
 /EvWGTzrm9CUlKMSCOOjmc/Lupbz+vfn2GsNIX1Na4LheD6Su6XA6G/p3
 F/+vw/uECnK2J/qIxAT8pAOjb+woCm5HKzfrw5D90pE1AAXnOPlb9oCPh
 oPl3x9NFwY/ZIdZcJCzZpo1FINohgAu7NtSGIGZEvBVNBshtaNLAjk1uU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="303475492"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="303475492"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 12:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="763620594"
Received: from jhli-desk1.jf.intel.com ([10.54.74.139])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jan 2022 12:02:41 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 12:02:36 -0800
Message-Id: <20220106200236.489656-2-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220106200236.489656-1-juston.li@intel.com>
References: <20220106200236.489656-1-juston.li@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/pxp: Hold RPM wakelock during
 PXP unbind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Similar to commit b8d8436840ca ("drm/i915/gt: Hold RPM wakelock during
PXP suspend") but to fix the same warning for unbind during shutdown:

------------[ cut here ]------------
RPM wakelock ref not held during HW access
WARNING: CPU: 0 PID: 4139 at drivers/gpu/drm/i915/intel_runtime_pm.h:115
gen12_fwtable_write32+0x1b7/0
Modules linked in: 8021q ccm rfcomm cmac algif_hash algif_skcipher
af_alg uinput snd_hda_codec_hdmi vf industrialio iwl7000_mac80211
cros_ec_sensorhub lzo_rle lzo_compress zram iwlwifi cfg80211 joydev
CPU: 0 PID: 4139 Comm: halt Tainted: G     U  W
5.10.84 #13 344e11e079c4a03940d949e537eab645f6
RIP: 0010:gen12_fwtable_write32+0x1b7/0x200
Code: 48 c7 c7 fc b3 b5 89 31 c0 e8 2c f3 ad ff 0f 0b e9 04 ff ff ff c6
05 71 e9 1d 01 01 48 c7 c7 d67
RSP: 0018:ffffa09ec0bb3bb0 EFLAGS: 00010246
RAX: 12dde97bbd260300 RBX: 00000000000320f0 RCX: ffffffff89e60ea0
RDX: 0000000000000000 RSI: 00000000ffffdfff RDI: ffffffff89e60e70
RBP: ffffa09ec0bb3bd8 R08: 0000000000000000 R09: ffffa09ec0bb3950
R10: 00000000ffffdfff R11: ffffffff89e91160 R12: 0000000000000000
R13: 0000000028121969 R14: ffff9515c32f0990 R15: 0000000040000000
FS:  0000790dcf225740(0000) GS:ffff951737800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000058b25efae147 CR3: 0000000133ea6001 CR4: 0000000000770ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 intel_pxp_fini_hw+0x2f/0x39
 i915_pxp_tee_component_unbind+0x1c/0x42
 component_unbind+0x32/0x48
 component_unbind_all+0x80/0x9d
 take_down_master+0x24/0x36
 component_master_del+0x56/0x70
 mei_pxp_remove+0x2c/0x68
 mei_cl_device_remove+0x35/0x68
 device_release_driver_internal+0x100/0x1a1
 mei_cl_bus_remove_device+0x21/0x79
 mei_cl_bus_remove_devices+0x3b/0x51
 mei_stop+0x3b/0xae
 mei_me_shutdown+0x23/0x58
 device_shutdown+0x144/0x1d3
 kernel_power_off+0x13/0x4c
 __se_sys_reboot+0x1d4/0x1e9
 do_syscall_64+0x43/0x55
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x790dcf316273
Code: 64 89 01 48 83 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00
00 89 fa be 69 19 12 28 bf ad8
RSP: 002b:00007ffca0df9198 EFLAGS: 00000202 ORIG_RAX: 00000000000000a9
RAX: ffffffffffffffda RBX: 000000004321fedc RCX: 0000790dcf316273
RDX: 000000004321fedc RSI: 0000000028121969 RDI: 00000000fee1dead
RBP: 00007ffca0df9200 R08: 0000000000000007 R09: 0000563ce8cd8970
R10: 0000000000000000 R11: 0000000000000202 R12: 00007ffca0df9308
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000003
---[ end trace 2f501b01b348f114 ]---
ACPI: Preparing to enter system sleep state S5
reboot: Power down

Changes since v1:
 - Rebase to latest drm-tip

Fixes: 0cfab4cb3c4e ("drm/i915/pxp: Enable PXP power management")
Suggested-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Juston Li <juston.li@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 195b2323ec00..4b6f5655fab5 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -107,9 +107,12 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 					  struct device *tee_kdev, void *data)
 {
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
 	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
+	intel_wakeref_t wakeref;
 
-	intel_pxp_fini_hw(pxp);
+	with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
+		intel_pxp_fini_hw(pxp);
 
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = NULL;
-- 
2.31.1

