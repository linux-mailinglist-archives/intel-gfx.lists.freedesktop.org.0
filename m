Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C5648E17D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 01:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ACD110E86E;
	Fri, 14 Jan 2022 00:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC65210E86E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 00:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120092; x=1673656092;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RRSc0fCF2gQ58MCLYJ6EBu3GpIJNYU365XBPjiNmmwU=;
 b=Is5UVV4j5ALLxSvgsaGN1ThpGSaZ7vbmEkcEe2/n2gaXUfItQikjoWFo
 0/0JTxA4AkPRYbVycIapwTBFePKTcqjKAtkUImClpe/gMWNmESM+0+5cN
 6RHyqbrmHgoTbAmB8yz9ZYJFQVlI6Xr8AhEL4v+x7JaDfcGdsAhfc/8hA
 oi2/SGSrSiuBebmDjSqF+scmnIvSWTRhZDEOVJnGIiZ/T2OTw0BDuVXz7
 5vdyjOL441ZCBDuDugQctSdaINSNGOasp20LHaiTt7waz4+KzSn0ZsK+h
 7i/GW9T6Fr3XgCJ7SGL3sXoty9jdh4vAZwtTcgXKMUA/mV/i8y1+/yEoc w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244103839"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244103839"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491317600"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Thu, 13 Jan 2022 16:28:39 -0800
Message-Id: <20220114002843.2083382-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/5] x86/quirks: Fix stolen detection with
 integrated + discrete GPU
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
Cc: linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>, stable@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

early_pci_scan_bus() does a depth-first traversal, possibly calling
the quirk functions for each device based on vendor, device and class
from early_qrk table. intel_graphics_quirks() however uses PCI_ANY_ID
and does additional filtering in the quirk.

If there is an Intel integrated + discrete GPU the quirk may be called
first for the discrete GPU based on the PCI topology. Then we will fail
to reserve the system stolen memory for the integrated GPU, because we
will already have marked the quirk as "applied".

This was reproduced in a setup with Alderlake-P (integrated) + DG2
(discrete), with the following PCI topology:

	- 00:01.0 Bridge
	  `- 03:00.0 DG2
	- 00:02.0 Integrated GPU

So, stop using the QFLAG_APPLY_ONCE flag, replacing it with a static
local variable. We can set this variable in the right place, inside
intel_graphics_quirks(), only when the quirk was actually applied, i.e.
when we find the integrated GPU based on the intel_early_ids table.

Cc: stable@vger.kernel.org
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---

v5: apply fix before the refactor

 arch/x86/kernel/early-quirks.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 1ca3a56fdc2d..de9a76eb544e 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -589,10 +589,14 @@ intel_graphics_stolen(int num, int slot, int func,
 
 static void __init intel_graphics_quirks(int num, int slot, int func)
 {
+	static bool quirk_applied __initdata;
 	const struct intel_early_ops *early_ops;
 	u16 device;
 	int i;
 
+	if (quirk_applied)
+		return;
+
 	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
 
 	for (i = 0; i < ARRAY_SIZE(intel_early_ids); i++) {
@@ -605,6 +609,8 @@ static void __init intel_graphics_quirks(int num, int slot, int func)
 
 		intel_graphics_stolen(num, slot, func, early_ops);
 
+		quirk_applied = true;
+
 		return;
 	}
 }
@@ -705,7 +711,7 @@ static struct chipset early_qrk[] __initdata = {
 	{ PCI_VENDOR_ID_INTEL, 0x3406, PCI_CLASS_BRIDGE_HOST,
 	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
 	{ PCI_VENDOR_ID_INTEL, PCI_ANY_ID, PCI_CLASS_DISPLAY_VGA, PCI_ANY_ID,
-	  QFLAG_APPLY_ONCE, intel_graphics_quirks },
+	  0, intel_graphics_quirks },
 	/*
 	 * HPET on the current version of the Baytrail platform has accuracy
 	 * problems: it will halt in deep idle state - so we disable it.
-- 
2.34.1

