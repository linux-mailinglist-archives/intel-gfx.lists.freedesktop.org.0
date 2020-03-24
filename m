Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB191904DD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 06:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04B06E0B7;
	Tue, 24 Mar 2020 05:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 321236E0B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 05:23:10 +0000 (UTC)
IronPort-SDR: IIxCLLhUQvLrubse8W+rvJTQwJiRcfq7v5C1C+Dim0h/1OF/k7JXrj5RG+nn2sa1t1w7rZs8tV
 mpAbZQ7Er+uQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 22:23:09 -0700
IronPort-SDR: IVonpOflLbdX9Y7z2GsymzIUk8Akkhn7koDga70UOBzXsrOzZETd5IZ3xd3kUug8LoKHKcWmzU
 yXY6i1zlTw1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,299,1580803200"; d="scan'208";a="246420446"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga003.jf.intel.com with ESMTP; 23 Mar 2020 22:23:07 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Mar 2020 10:41:11 +0530
Message-Id: <20200324051111.29398-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200319215119.GA11219@intel.com>
References: <20200319215119.GA11219@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 6/7] drm/i915/dp: Register definition for DP
 compliance register
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

DP_COMP_CTL and DP_COMP_PAT register used to program DP
compliance pattern.

v1: Initial patch.
v2: used pipe instead of port in macro definition. [Manasi]
v3: used trans_offset for offset calculation. [Manasi]
v4: Used MMIO_PIPE for evenly spaced register offset instead
MMIO_PIPE2. [Ville]

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 309cb7d96b35..465862ed2cf8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9792,6 +9792,24 @@ enum skl_power_gate {
 #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
 #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
 
+/* DDI DP Compliance Control */
+#define _DDI_DP_COMP_CTL_A			0x605F0
+#define _DDI_DP_COMP_CTL_B			0x615F0
+#define DDI_DP_COMP_CTL(pipe)			_MMIO_PIPE(pipe, _DDI_DP_COMP_CTL_A, _DDI_DP_COMP_CTL_B)
+#define   DDI_DP_COMP_CTL_ENABLE		(1 << 31)
+#define   DDI_DP_COMP_CTL_D10_2			(0 << 28)
+#define   DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
+#define   DDI_DP_COMP_CTL_PRBS7			(2 << 28)
+#define   DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
+#define   DDI_DP_COMP_CTL_HBR2			(4 << 28)
+#define   DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
+#define   DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
+
+/* DDI DP Compliance Pattern */
+#define _DDI_DP_COMP_PAT_A			0x605F4
+#define _DDI_DP_COMP_PAT_B			0x615F4
+#define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)
+
 /* Sideband Interface (SBI) is programmed indirectly, via
  * SBI_ADDR, which contains the register offset; and SBI_DATA,
  * which contains the payload */
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
