Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC6048E17E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 01:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A3CF10E870;
	Fri, 14 Jan 2022 00:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1151510E867
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 00:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120093; x=1673656093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T53454V8nQ4gSGGOXNzK4CkJUyzEgeyk3LttBFKGHco=;
 b=MxvfG6B6KFAmmEhdFefFUERBOnvXOY3MGRL1t5uIYwgRJnBKebshuNNN
 m45y2K1pPDVtA7+vFAe/CbV7uTDmd4kUTQSvYEEQyRTJysK7Q96mrEuNw
 DCZXwUv/DlXthm2RkKB2k5OfJzIXjTJy25iqEr7SE7O8CiayZpsw1kal1
 s4ohVmsRNuA3XlWtKiF9YqUEtVYZtvvqNRvkfcN30XHAKH3j9F+Ze4NAL
 dcekFHNVYiMcBHugdbsiZlcKJtwBTA5CJNdcIlp1Qf6gS7c1aPNGyOuSO
 2RbzFVVaN00+iTI3EY15ee3D4XcftnC8akj31770seoHTsY3xll8VIbly g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244103841"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244103841"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491317605"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Thu, 13 Jan 2022 16:28:41 -0800
Message-Id: <20220114002843.2083382-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/5] x86/quirks: Stop using QFLAG_APPLY_ONCE
 in nvidia_bugs()
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

Adopt the same approach as in intel_graphics_quirks(), with a static
local variable, to control when the quirk has already been applied.
However, contrary to intel_graphics_quirks(), here we always set it as
applied as soon as it's called to avoid changing the current behavior
that is not failing.

This is the last user of the flags, so we can cleanup the early-quirks,
removing all the flags logic later.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 59cc67aace93..7c70977737de 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -88,6 +88,13 @@ static void __init nvidia_bugs(int num, int slot, int func)
 {
 #ifdef CONFIG_ACPI
 #ifdef CONFIG_X86_IO_APIC
+	static bool quirk_applied __initdata;
+
+	if (quirk_applied)
+		return;
+
+	quirk_applied = true;
+
 	/*
 	 * Only applies to Nvidia root ports (bus 0) and not to
 	 * Nvidia graphics cards with PCI ports on secondary buses.
@@ -702,7 +709,7 @@ struct chipset {
 
 static struct chipset early_qrk[] __initdata = {
 	{ PCI_VENDOR_ID_NVIDIA, PCI_ANY_ID,
-	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, QFLAG_APPLY_ONCE, nvidia_bugs },
+	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, 0, nvidia_bugs },
 	{ PCI_VENDOR_ID_VIA, PCI_ANY_ID,
 	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, 0, via_bugs },
 	{ PCI_VENDOR_ID_AMD, PCI_DEVICE_ID_AMD_K8_NB,
-- 
2.34.1

