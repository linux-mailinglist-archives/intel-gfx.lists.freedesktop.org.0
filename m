Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8112C48E17F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 01:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D26E10E874;
	Fri, 14 Jan 2022 00:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A60710E86E
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 00:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120093; x=1673656093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IQ2QQ/cS+ncHjNfC6BsTxJSLJNhPyLYfEjqhOLdZvlw=;
 b=H8PagfavtSHIQ90UqgOdV9aHCEIfLJt6Ijk6GhsnnivFo24F7ih2Oqlx
 fjZIneSCjOz3lcnqyNBlvkHpEQUeUm7HhC4D5A8GZKlQfTGcyuSBu+srj
 drp6dvzi02+iETZVaVXnf7xBnQ2vlt5U2Z5riglPNMrabzbKNig6Gh91M
 VOs2hBLjqbIyzEWTF6CSUlHNtBaHbJzSEOCLYCVAYmtJLsBWTbxUpKYX8
 c+yjmBM8IgNpEzOdtEhR0GhlsHn23IGbMVOPDTouMRXbZKzUUCk7aYKU2
 kKZt8FOx23HAjwSQjoCJYOrV682T6yApfUbE5PMAAog4RchW1qheZJtnb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244103842"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244103842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491317608"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Thu, 13 Jan 2022 16:28:42 -0800
Message-Id: <20220114002843.2083382-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/5] x86/quirks: Remove unused logic for flags
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
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The flags were only used to mark the quirk as applied when it was
requested to be called only once. Now all the users were converted to
use a static local variable, so this logic can be removed.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 35 ++++++++++++++--------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 7c70977737de..1db4d92f8a85 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -695,37 +695,33 @@ static void __init apple_airport_reset(int bus, int slot, int func)
 	early_iounmap(mmio, BCM4331_MMIO_SIZE);
 }
 
-#define QFLAG_APPLY_ONCE 	0x1
-#define QFLAG_APPLIED		0x2
-#define QFLAG_DONE		(QFLAG_APPLY_ONCE|QFLAG_APPLIED)
 struct chipset {
 	u32 vendor;
 	u32 device;
 	u32 class;
 	u32 class_mask;
-	u32 flags;
 	void (*f)(int num, int slot, int func);
 };
 
 static struct chipset early_qrk[] __initdata = {
 	{ PCI_VENDOR_ID_NVIDIA, PCI_ANY_ID,
-	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, 0, nvidia_bugs },
+	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, nvidia_bugs },
 	{ PCI_VENDOR_ID_VIA, PCI_ANY_ID,
-	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, 0, via_bugs },
+	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, via_bugs },
 	{ PCI_VENDOR_ID_AMD, PCI_DEVICE_ID_AMD_K8_NB,
-	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, 0, fix_hypertransport_config },
+	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, fix_hypertransport_config },
 	{ PCI_VENDOR_ID_ATI, PCI_DEVICE_ID_ATI_IXP400_SMBUS,
-	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, 0, ati_bugs },
+	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, ati_bugs },
 	{ PCI_VENDOR_ID_ATI, PCI_DEVICE_ID_ATI_SBX00_SMBUS,
-	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, 0, ati_bugs_contd },
+	  PCI_CLASS_SERIAL_SMBUS, PCI_ANY_ID, ati_bugs_contd },
 	{ PCI_VENDOR_ID_INTEL, 0x3403, PCI_CLASS_BRIDGE_HOST,
-	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
+	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
 	{ PCI_VENDOR_ID_INTEL, 0x3405, PCI_CLASS_BRIDGE_HOST,
-	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
+	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
 	{ PCI_VENDOR_ID_INTEL, 0x3406, PCI_CLASS_BRIDGE_HOST,
-	  PCI_BASE_CLASS_BRIDGE, 0, intel_remapping_check },
+	  PCI_BASE_CLASS_BRIDGE, intel_remapping_check },
 	{ PCI_VENDOR_ID_INTEL, PCI_ANY_ID, PCI_CLASS_DISPLAY_VGA, PCI_ANY_ID,
-	  0, intel_graphics_quirks },
+	  intel_graphics_quirks },
 	/*
 	 * HPET on the current version of the Baytrail platform has accuracy
 	 * problems: it will halt in deep idle state - so we disable it.
@@ -735,9 +731,9 @@ static struct chipset early_qrk[] __initdata = {
 	 *    http://www.intel.com/content/dam/www/public/us/en/documents/datasheets/atom-z8000-datasheet-vol-1.pdf
 	 */
 	{ PCI_VENDOR_ID_INTEL, 0x0f00,
-		PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, 0, force_disable_hpet},
+	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, force_disable_hpet},
 	{ PCI_VENDOR_ID_BROADCOM, 0x4331,
-	  PCI_CLASS_NETWORK_OTHER, PCI_ANY_ID, 0, apple_airport_reset},
+	  PCI_CLASS_NETWORK_OTHER, PCI_ANY_ID, apple_airport_reset},
 	{}
 };
 
@@ -778,12 +774,9 @@ static int __init check_dev_quirk(int num, int slot, int func)
 			((early_qrk[i].device == PCI_ANY_ID) ||
 			(early_qrk[i].device == device)) &&
 			(!((early_qrk[i].class ^ class) &
-			    early_qrk[i].class_mask))) {
-				if ((early_qrk[i].flags &
-				     QFLAG_DONE) != QFLAG_DONE)
-					early_qrk[i].f(num, slot, func);
-				early_qrk[i].flags |= QFLAG_APPLIED;
-			}
+			    early_qrk[i].class_mask)))
+				early_qrk[i].f(num, slot, func);
+
 	}
 
 	type = read_pci_config_byte(num, slot, func,
-- 
2.34.1

