Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A856576FC41
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 10:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCDA710E143;
	Fri,  4 Aug 2023 08:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D93210E143
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 08:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691138768; x=1722674768;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jpvEcMDGdogWA4mQKBV3mH5p2EC6bIHcOB2ExsCR3f4=;
 b=GNVTzUg0CGVQoIWMDzDKHdD3frbXpNi05OAXG7On9Oar1QEIbDM+x+vn
 Ejk8b5L1IMj3VqtHXnNgckc1aKTGfmDODoaEIQOZI5P0LWNA5bcyzQUkJ
 mrvjWqMT50DNepTnusgfKjaOKS7lbh+2b1O0ICbm98f8y0bC6juXkixVk
 FLfT4UMIAUkTxNbYm7XqfUcxo2XfsabKR8FLoJ5Vp40x/hBuRP6M717rC
 9ye+jMCEM31q8uTBLJbuUmZtJ7Nh7zNp3tYiidGm0G0LIVmFZGMrLb+Hs
 qiuMkfuKvWpIzjHTejaYC6yAQUNG6JR16UbMAtg804fyYLkC9oV1nwYp4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="367565081"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="367565081"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="795317263"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="795317263"
Received: from popovax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:46:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 11:45:59 +0300
Message-Id: <20230804084600.1005818-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: fix display probe for IVB Q and
 IVB D GT2 server
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
Cc: jani.nikula@intel.com, Matt Roper <matthew.d.roper@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The current display probe is unable to differentiate between IVB Q and
IVB D GT2 server, as they both have the same device id, but different
subvendor and subdevice. This leads to the latter being misidentified as
the former, and should just end up not having a display. However, the no
display case returns a NULL as the display device info, and promptly
oopses.

As the IVB Q case is rare, and we're anyway moving towards GMD ID,
handle the identification requiring subvendor and subdevice as a special
case first, instead of unnecessarily growing the intel_display_ids[]
array with subvendor and subdevice.

[    5.425298] BUG: kernel NULL pointer dereference, address: 0000000000000000
[    5.426059] #PF: supervisor read access in kernel mode
[    5.426810] #PF: error_code(0x0000) - not-present page
[    5.427570] PGD 0 P4D 0
[    5.428285] Oops: 0000 [#1] PREEMPT SMP PTI
[    5.429035] CPU: 0 PID: 137 Comm: (udev-worker) Not tainted 6.4.0-1-amd64 #1  Debian 6.4.4-1
[    5.429759] Hardware name: HP HP Z220 SFF Workstation/HP Z220 SFF Workstation, BIOS 4.19-218-gb184e6e0a1 02/02/2023
[    5.430485] RIP: 0010:intel_device_info_driver_create+0xf1/0x120 [i915]
[    5.431338] Code: 48 8b 97 80 1b 00 00 89 8f c0 1b 00 00 48 89 b7 b0 1b 00 00 48 89 97 b8 1b 00 00 0f b7 fd e8 76 e8 14 00 48 89 83 50 1b 00 00 <48> 8b 08 48 89 8b c4 1b 00 00 48 8b 48 08 48 89 8b cc 1b 00 00 8b
[    5.432920] RSP: 0018:ffffb8254044fb98 EFLAGS: 00010206
[    5.433707] RAX: 0000000000000000 RBX: ffff923076e80000 RCX: 0000000000000000
[    5.434494] RDX: 0000000000000260 RSI: 0000000100001000 RDI: 000000000000016a
[    5.435277] RBP: 000000000000016a R08: ffffb8254044fb00 R09: 0000000000000000
[    5.436055] R10: ffff922d02761de8 R11: 00657361656c6572 R12: ffffffffc0e5d140
[    5.436867] R13: ffff922d00b720d0 R14: 0000000076e80000 R15: ffff923078c0cae8
[    5.437646] FS:  00007febd19a18c0(0000) GS:ffff92307c000000(0000) knlGS:0000000000000000
[    5.438434] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.439218] CR2: 0000000000000000 CR3: 000000010256e002 CR4: 00000000001706f0
[    5.440009] Call Trace:
[    5.440824]  <TASK>
[    5.441611]  ? __die+0x23/0x70
[    5.442394]  ? page_fault_oops+0x17d/0x4c0
[    5.443173]  ? exc_page_fault+0x7f/0x180
[    5.443949]  ? asm_exc_page_fault+0x26/0x30
[    5.444756]  ? intel_device_info_driver_create+0xf1/0x120 [i915]
[    5.445652]  ? intel_device_info_driver_create+0xea/0x120 [i915]
[    5.446545]  i915_driver_probe+0x7f/0xb60 [i915]
[    5.447431]  ? drm_privacy_screen_get+0x15c/0x1a0 [drm]
[    5.448240]  local_pci_probe+0x45/0xa0
[    5.449013]  pci_device_probe+0xc7/0x240
[    5.449748]  really_probe+0x19e/0x3e0
[    5.450464]  ? __pfx___driver_attach+0x10/0x10
[    5.451172]  __driver_probe_device+0x78/0x160
[    5.451870]  driver_probe_device+0x1f/0x90
[    5.452601]  __driver_attach+0xd2/0x1c0
[    5.453293]  bus_for_each_dev+0x88/0xd0
[    5.453989]  bus_add_driver+0x116/0x220
[    5.454672]  driver_register+0x59/0x100
[    5.455336]  i915_init+0x25/0xc0 [i915]
[    5.456104]  ? __pfx_i915_init+0x10/0x10 [i915]
[    5.456882]  do_one_initcall+0x5d/0x240
[    5.457511]  do_init_module+0x60/0x250
[    5.458126]  __do_sys_finit_module+0xac/0x120
[    5.458721]  do_syscall_64+0x60/0xc0
[    5.459314]  ? syscall_exit_to_user_mode+0x1b/0x40
[    5.459897]  ? do_syscall_64+0x6c/0xc0
[    5.460510]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
[    5.461082] RIP: 0033:0x7febd20b0eb9
[    5.461648] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2f 1f 0d 00 f7 d8 64 89 01 48
[    5.462905] RSP: 002b:00007fffabb1ba78 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[    5.463554] RAX: ffffffffffffffda RBX: 0000561e6304f410 RCX: 00007febd20b0eb9
[    5.464201] RDX: 0000000000000000 RSI: 00007febd2244f0d RDI: 0000000000000015
[    5.464869] RBP: 00007febd2244f0d R08: 0000000000000000 R09: 000000000000000a
[    5.465512] R10: 0000000000000015 R11: 0000000000000246 R12: 0000000000020000
[    5.466124] R13: 0000000000000000 R14: 0000561e63032b60 R15: 000000000000000a
[    5.466700]  </TASK>
[    5.467271] Modules linked in: i915(+) drm_buddy video crc32_pclmul sr_mod hid_generic wmi crc32c_intel i2c_algo_bit sd_mod cdrom drm_display_helper cec usbhid rc_core ghash_clmulni_intel hid sha512_ssse3 ttm sha512_generic xhci_pci ehci_pci xhci_hcd ehci_hcd nvme ahci drm_kms_helper nvme_core libahci t10_pi libata psmouse aesni_intel scsi_mod crypto_simd i2c_i801 scsi_common crc64_rocksoft_generic cryptd i2c_smbus drm lpc_ich crc64_rocksoft crc_t10dif e1000e usbcore crct10dif_generic usb_common crct10dif_pclmul crc64 crct10dif_common button
[    5.469750] CR2: 0000000000000000
[    5.470364] ---[ end trace 0000000000000000 ]---
[    5.470971] RIP: 0010:intel_device_info_driver_create+0xf1/0x120 [i915]
[    5.471699] Code: 48 8b 97 80 1b 00 00 89 8f c0 1b 00 00 48 89 b7 b0 1b 00 00 48 89 97 b8 1b 00 00 0f b7 fd e8 76 e8 14 00 48 89 83 50 1b 00 00 <48> 8b 08 48 89 8b c4 1b 00 00 48 8b 48 08 48 89 8b cc 1b 00 00 8b
[    5.473034] RSP: 0018:ffffb8254044fb98 EFLAGS: 00010206
[    5.473698] RAX: 0000000000000000 RBX: ffff923076e80000 RCX: 0000000000000000
[    5.474371] RDX: 0000000000000260 RSI: 0000000100001000 RDI: 000000000000016a
[    5.475045] RBP: 000000000000016a R08: ffffb8254044fb00 R09: 0000000000000000
[    5.475725] R10: ffff922d02761de8 R11: 00657361656c6572 R12: ffffffffc0e5d140
[    5.476405] R13: ffff922d00b720d0 R14: 0000000076e80000 R15: ffff923078c0cae8
[    5.477124] FS:  00007febd19a18c0(0000) GS:ffff92307c000000(0000) knlGS:0000000000000000
[    5.477811] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.478499] CR2: 0000000000000000 CR3: 000000010256e002 CR4: 00000000001706f0

Fixes: 69d439818fe5 ("drm/i915/display: Make display responsible for probing its own IP")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8991
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 24 ++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 8286e79522d1..3d6a262e037f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -724,10 +724,24 @@ static const struct intel_display_device_info xe_lpdp_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+/*
+ * Separate detection for no display cases to keep the display id array simple.
+ *
+ * IVB Q requires subvendor and subdevice matching to differentiate from IVB D
+ * GT2 server.
+ */
+static bool has_no_display(struct pci_dev *pdev)
+{
+	static const struct pci_device_id ids[] = {
+		INTEL_IVB_Q_IDS(0),
+		{}
+	};
+
+	return pci_match_id(ids, pdev);
+}
+
 #undef INTEL_VGA_DEVICE
-#undef INTEL_QUANTA_VGA_DEVICE
 #define INTEL_VGA_DEVICE(id, info) { id, info }
-#define INTEL_QUANTA_VGA_DEVICE(info) { 0x16a, info }
 
 static const struct {
 	u32 devid;
@@ -752,7 +766,6 @@ static const struct {
 	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
 	INTEL_SNB_D_IDS(&snb_display),
 	INTEL_SNB_M_IDS(&snb_display),
-	INTEL_IVB_Q_IDS(NULL),		/* must be first IVB in list */
 	INTEL_IVB_M_IDS(&ivb_display),
 	INTEL_IVB_D_IDS(&ivb_display),
 	INTEL_HSW_IDS(&hsw_display),
@@ -837,6 +850,11 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
 	if (has_gmdid)
 		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
 
+	if (has_no_display(pdev)) {
+		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
+		return &no_display;
+	}
+
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
 		if (intel_display_ids[i].devid == pdev->device)
 			return intel_display_ids[i].info;
-- 
2.39.2

