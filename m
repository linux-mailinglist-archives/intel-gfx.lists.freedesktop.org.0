Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1133148E180
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 01:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7304210E875;
	Fri, 14 Jan 2022 00:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D6210E867
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jan 2022 00:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642120093; x=1673656093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9MmdtQRSP84iEIfaXDUKrSAI73pBddgm1gbmWx06UMk=;
 b=oBOLX2s5orz0XD3VMoZuPtVb1soV5NVPxJ+6tYUjFPnt7IWOYJfdOjTI
 HsGbJZcei7SvtcyqzULlbfaoc5hROkGVxdHHdJkkJDblYf/x3WYGczsi5
 CdlcOS62is+FRMKQu1+7rRY+gYTei6zwGPdcViYF8ADC+zURLnouIjHJf
 xnuEfqLxH8+4FNkACeKUiJSapXjybguDKNFXh7zEYNBO8FS98bt3nnN9a
 1mf7WThVOUvg2z/O0uMqvpX+wS0M6sBtqMsparv35tNdpwN8OGpzbY/zO
 RVQOk1ZytlNV0P5xm+PyjmvDW+Yg4HBujKhX4ALGD86T+kV2m64T6t2AV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244103843"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="244103843"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491317611"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:28:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: x86@kernel.org
Date: Thu, 13 Jan 2022 16:28:43 -0800
Message-Id: <20220114002843.2083382-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 5/5] x86/quirks: Improve line wrap on quirk
 conditions
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index 1db4d92f8a85..996e3cbc1c5f 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -769,14 +769,12 @@ static int __init check_dev_quirk(int num, int slot, int func)
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

