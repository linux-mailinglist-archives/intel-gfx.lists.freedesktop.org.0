Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1E51FB129
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 14:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407566E8BB;
	Tue, 16 Jun 2020 12:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBC226E14F;
 Tue, 16 Jun 2020 12:51:05 +0000 (UTC)
IronPort-SDR: HKnSWHo31aNfQlhM9KX4rhFvlow662I7QmKjY4xUIqNZfTAuyl1R4f7iL08nREoJzp2/QZknQq
 G7P00btohBIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 05:51:05 -0700
IronPort-SDR: IcaVSAnsiQZneWuXhXxe4WCyjpCJgHXv+6R6PovMatqXOZGhoSX0/BxCOQDfwM+ynKUCmhSIQ8
 PePdAMBuTTpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="263004872"
Received: from sai-ubutu.iind.intel.com ([10.145.162.88])
 by fmsmga008.fm.intel.com with ESMTP; 16 Jun 2020 05:51:03 -0700
From: ramadevi.gandi@intel.com
To: ashutosh.dixit@intel.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, ramadevi.gandi@intel.com,
 igt-dev@lists.freedesktop.org
Date: Tue, 16 Jun 2020 18:07:58 +0530
Message-Id: <20200616123758.3331-1-ramadevi.gandi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH libdrm] intel: sync i915_pciids.h with kernel
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
Cc: kalyan.kondapally@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gandi Ramadevi <ramadevi.gandi@intel.com>

Add DG1 PCI ID

Signed-off-by: Gandi Ramadevi <ramadevi.gandi@intel.com>
---
 intel/i915_pciids.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/intel/i915_pciids.h b/intel/i915_pciids.h
index 662d8351..724e68a0 100644
--- a/intel/i915_pciids.h
+++ b/intel/i915_pciids.h
@@ -605,4 +605,9 @@
 	INTEL_VGA_DEVICE(0x9AD9, info), \
 	INTEL_VGA_DEVICE(0x9AF8, info)
 
+/* DG1 */
+#define INTEL_DG1_IDS(info) \
+        INTEL_VGA_DEVICE(0x4905, info), \
+        INTEL_VGA_DEVICE(0x4906, info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
