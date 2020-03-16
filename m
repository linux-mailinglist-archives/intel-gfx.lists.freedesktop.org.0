Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 365E218696C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 11:50:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DED6E3E7;
	Mon, 16 Mar 2020 10:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAE76E3E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 10:49:58 +0000 (UTC)
IronPort-SDR: y+Cay9MWzlEh5SDhpdCohr4mb2h7nvbwqeXz8dYzhksFwx4wYwwq26ry9gQgwQ0422dRmwJvc7
 yQHL26koXPjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 03:49:58 -0700
IronPort-SDR: w2Ki1Q+Mrc8J441Jf+0GDWnGuVFa820YSkkvXg1D5/jDgG2DpV7euSMVg7OynyjYqI+cPitqUr
 3HrcGOld5gjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="417099576"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2020 03:49:56 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 16:07:58 +0530
Message-Id: <20200316103759.12867-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
References: <20200316103759.12867-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 6/7] drm/i915/dp: Register definition for DP
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

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 309cb7d96b35..e93b90e17573 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9792,6 +9792,26 @@ enum skl_power_gate {
 #define  DDI_BUF_BALANCE_LEG_ENABLE	(1 << 31)
 #define DDI_BUF_TRANS_HI(port, i)	_MMIO(_PORT(port, _DDI_BUF_TRANS_A, _DDI_BUF_TRANS_B) + (i) * 8 + 4)
 
+/* DDI DP Compliance Control */
+#define DDI_DP_COMP_CTL_A			0x605F0
+#define DDI_DP_COMP_CTL_B			0x615F0
+#define DDI_DP_COMP_CTL(pipe) _MMIO_PORT(pipe, DDI_DP_COMP_CTL_A, \
+					 DDI_DP_COMP_CTL_B)
+#define  DDI_DP_COMP_CTL_ENABLE			(1 << 31)
+#define  DDI_DP_COMP_CTL_D10_2			(0 << 28)
+#define  DDI_DP_COMP_CTL_SCRAMBLED_0		(1 << 28)
+#define  DDI_DP_COMP_CTL_PRBS7			(2 << 28)
+#define  DDI_DP_COMP_CTL_CUSTOM80		(3 << 28)
+#define  DDI_DP_COMP_CTL_HBR2			(4 << 28)
+#define  DDI_DP_COMP_CTL_SCRAMBLED_1		(5 << 28)
+#define  DDI_DP_COMP_CTL_HBR2_RESET		(0xFC << 0)
+
+/* DDI DP Compliance Pattern */
+#define DDI_DP_COMP_PAT_A			0x605F4
+#define DDI_DP_COMP_PAT_B			0x615F4
+#define DDI_DP_COMP_PAT(pipe, i) _MMIO(_PIPE(pipe, DDI_DP_COMP_PAT_A, \
+					     DDI_DP_COMP_PAT_B) + (i) * 4)
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
