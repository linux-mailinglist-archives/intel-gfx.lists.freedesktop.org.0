Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F144EC68F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 16:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5303B10E225;
	Wed, 30 Mar 2022 14:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8055110E1E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 14:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648650627; x=1680186627;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xr25lZVIYsuIa1UZQgLTAy47KhwUGK6H3wWQl7w+NuM=;
 b=f/yowLIwxxPTM4stqOCrMJdBocKqIjaSBWJSKy+r/8jtWt0p2uS/F6Xq
 thV4KDFES/k355qbgN4jbo8T8868WArMUduCV4NvbPdRDaDiXPR8vYeHg
 duNB8odkw/uPfZKW+vEkzknVRcr41XR2QIKVFzJIU5Im0CTNHd5yk9MpI
 CoPaKpc/V4gI1W4OF6msfk2vVGXQTRuUUiQrEjWG3o+Ljtq1OZjJMr0m0
 7q8wizrFC13J04fk6cwObLjd09vmcyBIzd/u+ZEGB1soUSgIcE70dxTvB
 Q5+qFxJl0tSbFcg9H8pnxkCFyRZ6S4aoRjBLeGmL1roL7ME5DgKm7JdmH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241711243"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="241711243"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="653851211"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 07:30:22 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 07:31:33 -0700
Message-Id: <20220330143136.84930-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 1/4] drm/i915/display/tgl+: Set default
 values for all registers in PIPE_MBUS_DBOX_CTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MBUS_DBOX_B2B_TRANSACTIONS_MAX, MBUS_DBOX_B2B_TRANSACTIONS_DELAY and
MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN were being programmed with
zeros while specification has different default values for this
registers in display 12 and newer.

While at it also converting all MBUS_DBOX macros to use REG_* macros.

BSpec: 50343
BSpec: 20231
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++---
 drivers/gpu/drm/i915/i915_reg.h              | 25 ++++++++++++--------
 2 files changed, 25 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7a147f224fb6a..8501929bca3aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1830,13 +1830,20 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u32 val;
+	u32 val = 0;
+
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
+		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
+	}
 
 	/* Wa_22010947358:adl-p */
 	if (IS_ALDERLAKE_P(dev_priv))
-		val = joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
+		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
+				     MBUS_DBOX_A_CREDIT(4);
 	else
-		val = MBUS_DBOX_A_CREDIT(2);
+		val |= MBUS_DBOX_A_CREDIT(2);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= MBUS_DBOX_BW_CREDIT(2);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a0d652f19ff93..efb81cb4c7c0c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1103,16 +1103,21 @@
 #define MBUS_ABOX_BT_CREDIT_POOL1_MASK	(0x1F << 0)
 #define MBUS_ABOX_BT_CREDIT_POOL1(x)	((x) << 0)
 
-#define _PIPEA_MBUS_DBOX_CTL		0x7003C
-#define _PIPEB_MBUS_DBOX_CTL		0x7103C
-#define PIPE_MBUS_DBOX_CTL(pipe)	_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
-						   _PIPEB_MBUS_DBOX_CTL)
-#define MBUS_DBOX_BW_CREDIT_MASK	(3 << 14)
-#define MBUS_DBOX_BW_CREDIT(x)		((x) << 14)
-#define MBUS_DBOX_B_CREDIT_MASK		(0x1F << 8)
-#define MBUS_DBOX_B_CREDIT(x)		((x) << 8)
-#define MBUS_DBOX_A_CREDIT_MASK		(0xF << 0)
-#define MBUS_DBOX_A_CREDIT(x)		((x) << 0)
+#define _PIPEA_MBUS_DBOX_CTL			0x7003C
+#define _PIPEB_MBUS_DBOX_CTL			0x7103C
+#define PIPE_MBUS_DBOX_CTL(pipe)		_MMIO_PIPE(pipe, _PIPEA_MBUS_DBOX_CTL, \
+							   _PIPEB_MBUS_DBOX_CTL)
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK	REG_GENMASK(24, 20) /* tgl+ */
+#define MBUS_DBOX_B2B_TRANSACTIONS_MAX(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_MAX_MASK, x)
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK	REG_GENMASK(19, 17) /* tgl+ */
+#define MBUS_DBOX_B2B_TRANSACTIONS_DELAY(x)	REG_FIELD_PREP(MBUS_DBOX_B2B_TRANSACTIONS_DELAY_MASK, x)
+#define MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN	REG_BIT(16) /* tgl+ */
+#define MBUS_DBOX_BW_CREDIT_MASK		REG_GENMASK(15, 14)
+#define MBUS_DBOX_BW_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_BW_CREDIT_MASK, x)
+#define MBUS_DBOX_B_CREDIT_MASK			REG_GENMASK(12, 8)
+#define MBUS_DBOX_B_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_B_CREDIT_MASK, x)
+#define MBUS_DBOX_A_CREDIT_MASK			REG_GENMASK(3, 0)
+#define MBUS_DBOX_A_CREDIT(x)			REG_FIELD_PREP(MBUS_DBOX_A_CREDIT_MASK, x)
 
 #define MBUS_UBOX_CTL			_MMIO(0x4503C)
 #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
-- 
2.35.1

