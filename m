Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E648D48E17B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 01:28:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4645010E867;
	Fri, 14 Jan 2022 00:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A4910E867
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 00:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120092; x=1673656092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gChLAsxaUfo34M70y3IYu5wvatIKFodsmuRuEKDfuLg=;
 b=jkzg+7GHkJHHeo+ECX5ml3At5/m0StFTGuHFfg7zxp7so9M4KMsAFaY4
 z33PmP9HKs1dr/Pe+ipiwaOcaSV8La9BmLhhwnOe8YQAm6x3h3Ban1Zwv
 jwCMKa6mLjlIn4ssbul6KJ/6MmxI4PMDBT7vPQX47Ae3cY5/DqAa47F/N
 g6oLJfOllyzRLAFh0bEJ+DiHIOVvrIgYOiUKOixOGWKsDDpU5UbBFF7Q7
 7Z+ew9aMdOKP7VR7QLAMatV9CUOI5HVJ6InCeFnsMqj1G6vArd2JnXd4K
 coBvazI+sHCn3+VQ6OAm73uE7Zlw6Am5FNcD/9InZZkWB3i6YjfBlu07F Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244103840"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244103840"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491317602"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Thu, 13 Jan 2022 16:28:40 -0800
Message-Id: <20220114002843.2083382-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/5] x86/quirks: Stop using QFLAG_APPLY_ONCE
 in via_bugs()
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
However, contrary to intel_graphics_quirks() here we always set it as
applied as soon as it's called to avoid changing the current behavior
that is not failing.

After converting other users, it will allow us to remove all the logic
handling the flags.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index de9a76eb544e..59cc67aace93 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -57,6 +57,13 @@ static void __init fix_hypertransport_config(int num, int slot, int func)
 static void __init via_bugs(int  num, int slot, int func)
 {
 #ifdef CONFIG_GART_IOMMU
+	static bool quirk_applied __initdata;
+
+	if (quirk_applied)
+		return;
+
+	quirk_applied = true;
+
 	if ((max_pfn > MAX_DMA32_PFN ||  force_iommu) &&
 	    !gart_iommu_aperture_allowed) {
 		printk(KERN_INFO
@@ -697,7 +704,7 @@ static struct chipset early_qrk[] __initdata = {
 	{ PCI_VENDOR_ID_NVIDIA, PCI_ANY_ID,
 	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, QFLAG_APPLY_ONCE, nvidia_bugs },
 	{ PCI_VENDOR_ID_VIA, PCI_ANY_ID,
-	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, QFLAG_APPLY_ONCE, via_bugs },
+	  PCI_CLASS_BRIDGE_PCI, PCI_ANY_ID, 0, via_bugs },
 	{ PCI_VENDOR_ID_AMD, PCI_DEVICE_ID_AMD_K8_NB,
 	  PCI_CLASS_BRIDGE_HOST, PCI_ANY_ID, 0, fix_hypertransport_config },
 	{ PCI_VENDOR_ID_ATI, PCI_DEVICE_ID_ATI_IXP400_SMBUS,
-- 
2.34.1

