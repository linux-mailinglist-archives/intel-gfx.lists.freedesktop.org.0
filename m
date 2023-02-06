Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9F968C36F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB28310E419;
	Mon,  6 Feb 2023 16:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F4D10E418
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 16:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675701317; x=1707237317;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y5xtNHMHfelaP9PfWcnVMD3G+//HWSaYFCl6rvM7xC4=;
 b=YMB5ZWnQgLmB2LuJkgAAUcqAv3P+tXTXgKNrpoxSN2CSsmS4Inj+DmDr
 Sk7e5CGHPycCyKs6R6lm9KyTTkOBgN9fR/KUlslagIRwmpISBHbTyjhd2
 cYfsdRYMixxtbdhZZZYX5+yB68kKrUO5f+AjoF/b4lZ17ujR7VqXGttaS
 7Q19x/f4cTDLvEnDg40ureadteCrrYSuJk2qmEXCpJd5ZkxeNSHdb1z6b
 RRqMwcPCvV/qkiv+2CzFDEfJkvyzyV2dkKipdi1vP1cqdT+A7PmSTZsTp
 KqZIg+zdZgJ/1LtivFDeQD/5wlb5AYYkZZwIBhnuknom+v6ud1NW/iOFb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="312903613"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="312903613"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="659907505"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="659907505"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 08:35:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 18:35:11 +0200
Message-Id: <20230206163512.2841513-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230206163512.2841513-1-imre.deak@intel.com>
References: <20230206163512.2841513-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/dgfx,
 mtl+: Disable display functionality if it's globally fused-off
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

DG1/DG2 and MTL+ has added a new display-present HW flag. Check this
flag and if cleared, disable the driver's display functionality.

So far the missing check resulted in running the display initialization
sequence, and the WARNs below, due to the display register accesses
timing out:

[    3.902843] ------------[ cut here ]------------
[    3.902848] i915 0000:03:00.0: drm_WARN_ON(intel_de_wait_for_set(dev_priv, ((const i915_reg_t){ .reg = (0x42000) }), (1 << (27 - (pg))), 1))
[    3.902879] WARNING: CPU: 6 PID: 462 at drivers/gpu/drm/i915/display/intel_display_power_well.c:326 gen9_wait_for_power_well_fuses+0x71/0x80 [i915]
[    3.903009] Modules linked in: hid_sensor_hub intel_ishtp_hid i915(+) rtsx_pci_sdmmc drm_buddy mmc_core drm_display_helper crct10dif_pclmul nvme cec crc32_pclmul intel_ish_ipc crc32c_intel ucsi_acpi hid_multitouch nvme_core ghash_clmulni_intel typec_ucsi rtsx_pci ttm sha512_ssse3 serio_raw intel_ishtp typec video i2c_hid_acpi i2c_hid wmi pinctrl_tigerlake ip6_tables ip_tables x_tables fuse
[    3.903021] CPU: 6 PID: 462 Comm: systemd-udevd Tainted: G     U             6.2.0-rc6+ #50
[    3.903023] Hardware name: LENOVO 82VB/LNVNB161216, BIOS KMCN09WW 04/26/2022
[    3.903023] RIP: 0010:gen9_wait_for_power_well_fuses+0x71/0x80 [i915]
[    3.903105] Code: 48 8b 5f 50 48 85 db 75 03 48 8b 1f e8 98 bb 0d e9 48 c7 c1 00 65 a1 c0 48 89 da 48 c7 c7 4b c5 a3 c0 48 89 c6 e8 e3 df 53 e9 <0f> 0b 5b c3 cc cc cc cc 0f 1f 80 00 00 00 00 90 90 90 90 90 90 90
[    3.903106] RSP: 0018:ffffa7cec0b07a98 EFLAGS: 00010292
[    3.903107] RAX: 0000000000000080 RBX: ffff9a05430eaaa0 RCX: 0000000000000000
[    3.903108] RDX: 0000000000000001 RSI: ffffffffaa7ab69e RDI: 00000000ffffffff
[    3.903108] RBP: ffff9a0552ba2020 R08: ffffffffab062ce0 R09: 00000000abd3ffc2
[    3.903109] R10: ffffffffffffffff R11: 0000000000000081 R12: 0000000000000000
[    3.903109] R13: ffff9a05532a9cb0 R14: ffffffffc09e1670 R15: ffff9a0543132000
[    3.903110] FS:  00007f24d0fe5b40(0000) GS:ffff9a0ccf780000(0000) knlGS:0000000000000000
[    3.903110] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    3.903111] CR2: 00005643d7a31a28 CR3: 0000000111614002 CR4: 0000000000770ee0
[    3.903112] PKRU: 55555554
[    3.903112] Call Trace:
[    3.903113]  <TASK>
[    3.903114]  hsw_power_well_enable+0x12f/0x1a0 [i915]
[    3.903191]  intel_power_well_enable+0x21/0x70 [i915]
[    3.903265]  icl_display_core_init+0x92/0x6a0 [i915]
[    3.903346]  intel_power_domains_init_hw+0x1da/0x5b0 [i915]
[    3.903422]  intel_modeset_init_noirq+0x60/0x250 [i915]
[    3.903497]  i915_driver_probe+0x562/0xe10 [i915]
[    3.903557]  ? i915_pci_probe+0x87/0x180 [i915]
[    3.903617]  local_pci_probe+0x3e/0x80
[    3.903621]  pci_device_probe+0xb3/0x210
[    3.903622]  really_probe+0xdb/0x380
[    3.903624]  ? pm_runtime_barrier+0x50/0x90
[    3.903626]  __driver_probe_device+0x78/0x170
[    3.903627]  driver_probe_device+0x1f/0x90
[    3.903628]  __driver_attach+0xce/0x1c0
[    3.903629]  ? __pfx___driver_attach+0x10/0x10
[    3.903630]  bus_for_each_dev+0x5f/0x90
[    3.903631]  bus_add_driver+0x1ae/0x200
[    3.903632]  driver_register+0x89/0xe0
[    3.903634]  i915_init+0x1f/0x7f [i915]
[    3.903695]  ? __pfx_init_module+0x10/0x10 [i915]
[    3.903751]  do_one_initcall+0x43/0x220
[    3.903753]  ? kmalloc_trace+0x26/0x90
[    3.903756]  do_init_module+0x4a/0x200
[    3.903758]  __do_sys_init_module+0x157/0x180
[    3.903760]  do_syscall_64+0x58/0xc0
[    3.903762]  ? do_syscall_64+0x67/0xc0
[    3.903762]  ? exc_page_fault+0x70/0x170
[    3.903764]  entry_SYSCALL_64_after_hwframe+0x72/0xdc

Bspec: 49189, 53112

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8015
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h          |  3 +++
 drivers/gpu/drm/i915/intel_device_info.c | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 596efc940ee70..a22a0fa299645 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -116,6 +116,9 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
+#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
+#define   DEPRESENT			REG_BIT(9)
+
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 #define   DRIVERFLR			REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 98769e5f2c3d1..044ac552c9280 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -501,6 +501,19 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			runtime->has_dsc = 0;
 	}
 
+	if ((IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
+	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
+		drm_info(&dev_priv->drm, "Display fused off, disabling\n");
+
+		runtime->pipe_mask = 0;
+		runtime->cpu_transcoder_mask = 0;
+		runtime->fbc_mask = 0;
+		runtime->has_hdcp = 0;
+		runtime->fbc_mask = 0;
+		runtime->has_dmc = 0;
+		runtime->has_dsc = 0;
+	}
+
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
 		drm_info(&dev_priv->drm,
 			 "Disabling ppGTT for VT-d support\n");
-- 
2.37.1

