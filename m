Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E570485D42
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 01:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2936E10E54A;
	Thu,  6 Jan 2022 00:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90AD710E54A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 00:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641429388; x=1672965388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h3Q4cCTzr96nj2DncAmhqRNXFGrLjnTNVAL8jkMeg/Q=;
 b=fC1hoMVc/eveJgHYbeF0fKNaxE085MFqCjQKWeKQk6XMkPd0GHLEmfec
 5W61M1tTsEE6WaOFfn2/ASX728alxI9LQB86QPi7tF+f65m1gxRn7CnVg
 gsr3aETVqxk5Ia35oUNOuOt9XikGVXWqFtM8tk7/9T1/heipe4ToGjV0/
 udkf5p8lY5kd7jRMU7ulEzG0ciqF8JhJ8rhx94fKO6dMZQQGH7rJzC8Ys
 BBxi1hRlje3oeZHXTzM/OfsJr2+nWNW4OdpORYFlNq74QTlHhN7CHm1e8
 VTrMDliIN8TiOHzswLog0Ve3T4wINAU+W5tNqKYOw9xatNMTHqQ057BXZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="305914447"
X-IronPort-AV: E=Sophos;i="5.88,265,1635231600"; d="scan'208";a="305914447"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 16:36:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,265,1635231600"; d="scan'208";a="526766011"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 16:36:27 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Wed,  5 Jan 2022 16:36:54 -0800
Message-Id: <20220106003654.770316-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220106003654.770316-1-lucas.demarchi@intel.com>
References: <20220106003654.770316-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] x86/quirks: better wrap quirk conditions
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

Remove extra parenthesis and wrap lines so it's easier to read what are
the conditions being checked. The call to the hook also had an extra
indentation: remove here to conform to coding style.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 102ecd0a910e..03256f802aba 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -766,14 +766,12 @@ static int __init check_dev_quirk(int num, int slot, int func)
 	device = read_pci_config_16(num, slot, func, PCI_DEVICE_ID);
 
 	for (i = 0; early_qrk[i].f != NULL; i++) {
-		if (((early_qrk[i].vendor == PCI_ANY_ID) ||
-			(early_qrk[i].vendor == vendor)) &&
-			((early_qrk[i].device == PCI_ANY_ID) ||
-			(early_qrk[i].device == device)) &&
-			(!((early_qrk[i].class ^ class) &
-			    early_qrk[i].class_mask)))
-				early_qrk[i].f(num, slot, func);
-
+		if ((early_qrk[i].vendor == PCI_ANY_ID ||
+		     early_qrk[i].vendor == vendor) &&
+		    (early_qrk[i].device == PCI_ANY_ID ||
+		     early_qrk[i].device == device) &&
+		    !((early_qrk[i].class ^ class) & early_qrk[i].class_mask))
+			early_qrk[i].f(num, slot, func);
 	}
 
 	type = read_pci_config_byte(num, slot, func,
-- 
2.34.1

