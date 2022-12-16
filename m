Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BB164E545
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E1210E5A6;
	Fri, 16 Dec 2022 00:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34AB710E5A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151097; x=1702687097;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LMx+KGgLskJhVw+zQNVEhOE9JFm2/tHogE+Ob/+MwRw=;
 b=D6TAq4IbbAmYDD2I/Ot62vBS8DRl0smWaz5wVp0/rNxah/EmabDn9JEa
 Au1PlMnsJrEH0dDOcb1cKEF3TH3EAEzt6ucaL1Pt327kSdXLz3baPOU78
 B8D9z2dc3OIvWfCQwzYzF0YTfssaKUK6azALAVGol7ZWXUnPUSR2c8zlt
 y6PglaRAZqMbZ7R4hlGf6FH5WtIpcKiCALjR69CJNn0e8QjriD1jkIuZP
 89B0OxdZt0q2RrqOHqd7yJj+KG4Y9goDx/D4PSexzapqZtRqGdfZ8FEdp
 wJMSH3Icf24qDrxw7lfZ2zSzdHAUGchPwLUY9v8oismA8liHJbJ+b6iQ7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103801"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103801"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100165"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:37:58 +0200
Message-Id: <20221216003810.13338-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Stop with the RMW
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't want to keep random bits set in DSB_CTRL. Stop the
harmful RMW.

Also flip the reverse & around to appease my ocd.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 22 +++++++---------------
 drivers/gpu/drm/i915/i915_reg.h          |  2 +-
 2 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 3d63c1bf1e4f..ebebaf802dee 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -73,42 +73,34 @@ struct intel_dsb {
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 			enum dsb_id id)
 {
-	return DSB_STATUS & intel_de_read(i915, DSB_CTRL(pipe, id));
+	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
 }
 
 static bool intel_dsb_enable_engine(struct drm_i915_private *i915,
 				    enum pipe pipe, enum dsb_id id)
 {
-	u32 dsb_ctrl;
-
-	dsb_ctrl = intel_de_read(i915, DSB_CTRL(pipe, id));
-	if (DSB_STATUS & dsb_ctrl) {
+	if (is_dsb_busy(i915, pipe, id)) {
 		drm_dbg_kms(&i915->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
-	dsb_ctrl |= DSB_ENABLE;
-	intel_de_write(i915, DSB_CTRL(pipe, id), dsb_ctrl);
-
+	intel_de_write(i915, DSB_CTRL(pipe, id), DSB_ENABLE);
 	intel_de_posting_read(i915, DSB_CTRL(pipe, id));
+
 	return true;
 }
 
 static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
 				     enum pipe pipe, enum dsb_id id)
 {
-	u32 dsb_ctrl;
-
-	dsb_ctrl = intel_de_read(i915, DSB_CTRL(pipe, id));
-	if (DSB_STATUS & dsb_ctrl) {
+	if (is_dsb_busy(i915, pipe, id)) {
 		drm_dbg_kms(&i915->drm, "DSB engine is busy.\n");
 		return false;
 	}
 
-	dsb_ctrl &= ~DSB_ENABLE;
-	intel_de_write(i915, DSB_CTRL(pipe, id), dsb_ctrl);
-
+	intel_de_write(i915, DSB_CTRL(pipe, id), 0);
 	intel_de_posting_read(i915, DSB_CTRL(pipe, id));
+
 	return true;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cef9418beec0..ed989e749635 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8104,7 +8104,7 @@ enum skl_power_gate {
 #define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x4)
 #define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x8)
 #define   DSB_ENABLE			(1 << 31)
-#define   DSB_STATUS			(1 << 0)
+#define   DSB_STATUS_BUSY		(1 << 0)
 
 #define CLKREQ_POLICY			_MMIO(0x101038)
 #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
-- 
2.37.4

