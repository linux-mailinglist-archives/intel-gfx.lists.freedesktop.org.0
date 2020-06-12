Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 985DB1F7698
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 12:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CE46E916;
	Fri, 12 Jun 2020 10:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E036E916
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 10:16:52 +0000 (UTC)
IronPort-SDR: 399PdTPVytPt/qR2udFaeG9iEYoKDrAdxMItNKOT8G2Df3crCWViOuUyPKRs+UMjF8Gj0i94Fc
 p+v0YyW4fgLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 03:16:51 -0700
IronPort-SDR: DtCL3RKwrCdY1A3VnbCAChRBmx3DKc/QFfpxd0KzN+anZpGTzSoU2/jvcE+iIvlVmkG37afiLb
 A7Otm6p95jqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,502,1583222400"; d="scan'208";a="380662337"
Received: from sai-ubutu.iind.intel.com ([10.145.162.88])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2020 03:16:49 -0700
From: ramadevi.gandi@intel.com
To: ashutosh.dixit@intel.com, saurabhg.gupta@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 15:33:53 +0530
Message-Id: <20200612100353.14461-1-ramadevi.gandi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] intel: sync i915_pciids.h with kernel
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gandi Ramadevi <ramadevi.gandi@intel.com>

Add DG1 PCI ID

Signed-off-by: Gandi Ramadevi <ramadevi.gandi@intel.com>
---
 intel/i915_pciids.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/intel/i915_pciids.h b/intel/i915_pciids.h
index 662d8351..3de6e574 100644
--- a/intel/i915_pciids.h
+++ b/intel/i915_pciids.h
@@ -605,4 +605,8 @@
 	INTEL_VGA_DEVICE(0x9AD9, info), \
 	INTEL_VGA_DEVICE(0x9AF8, info)
 
+/* DG1 */
+#define INTEL_DG1_IDS(info) \
+        INTEL_VGA_DEVICE(0x4905, info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
