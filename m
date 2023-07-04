Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE42746DF6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745E210E2C7;
	Tue,  4 Jul 2023 09:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E4110E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464138; x=1720000138;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iBj/I/DntlUeyWNHSRC571YVXT4xUaWub9je/wwwdZQ=;
 b=h6j3Ljxf8yLtrYA1tFCJ2FUiEfMaiGSgp+LwoBgZT0Y/mslY3PcxNx/I
 9SjwqWOxrHrSrH7e6o3uRCBNTkuoWyTLxT6GRlsp3dByy+PFjfYcocyXO
 xRwavZbEgLtn9yDW62TFm/KRRsTO20almnGDMK4Fa2S3qZZkICjAFb9im
 kQvm0k0IUU2pWzLBJEXpUSe2dntnMCO+wvd/ASFKUIwLswpZUvGNCCtq8
 xUo3OR4BHvud8qd5Mx48DIStuTQbOfrXpZ42OYWfPikW4AfY/bavazwlj
 n2saKNZsa35V24uDGHth0QWMg6crxzQU+/AdDQpnlsJOY4SxNZ7laB4TG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="426766617"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="426766617"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="965463989"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="965463989"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:48:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 12:48:47 +0300
Message-Id: <2abb4ff40e939d2a8e2bf0f2837fc6769614e50b.1688463863.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1688463863.git.jani.nikula@intel.com>
References: <cover.1688463863.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/uncore: split
 unclaimed_reg_debug() to header and footer
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it easier to have different logic for the two for follow-up.

Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 37 +++++++++++++++++------------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 796ebfe6c550..a88aa342b623 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1926,10 +1926,8 @@ __unclaimed_previous_reg_debug(struct intel_uncore *uncore,
 }
 
 static inline void
-unclaimed_reg_debug(struct intel_uncore *uncore,
-		    const i915_reg_t reg,
-		    const bool read,
-		    const bool before)
+unclaimed_reg_debug_header(struct intel_uncore *uncore,
+			   const i915_reg_t reg, const bool read)
 {
 	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
 		return;
@@ -1937,13 +1935,22 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
 	lockdep_assert_held(&uncore->lock);
 
-	if (before) {
-		spin_lock(&uncore->debug->lock);
-		__unclaimed_previous_reg_debug(uncore, reg, read);
-	} else {
-		__unclaimed_reg_debug(uncore, reg, read);
-		spin_unlock(&uncore->debug->lock);
-	}
+	spin_lock(&uncore->debug->lock);
+	__unclaimed_previous_reg_debug(uncore, reg, read);
+}
+
+static inline void
+unclaimed_reg_debug_footer(struct intel_uncore *uncore,
+			   const i915_reg_t reg, const bool read)
+{
+	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
+		return;
+
+	/* interrupts are disabled and re-enabled around uncore->lock usage */
+	lockdep_assert_held(&uncore->lock);
+
+	__unclaimed_reg_debug(uncore, reg, read);
+	spin_unlock(&uncore->debug->lock);
 }
 
 #define __vgpu_read(x) \
@@ -2004,10 +2011,10 @@ __gen2_read(64)
 	u##x val = 0; \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
-	unclaimed_reg_debug(uncore, reg, true, true)
+	unclaimed_reg_debug_header(uncore, reg, true)
 
 #define GEN6_READ_FOOTER \
-	unclaimed_reg_debug(uncore, reg, true, false); \
+	unclaimed_reg_debug_footer(uncore, reg, true); \
 	spin_unlock_irqrestore(&uncore->lock, irqflags); \
 	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
 	return val
@@ -2108,10 +2115,10 @@ __gen2_write(32)
 	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
-	unclaimed_reg_debug(uncore, reg, false, true)
+	unclaimed_reg_debug_header(uncore, reg, false)
 
 #define GEN6_WRITE_FOOTER \
-	unclaimed_reg_debug(uncore, reg, false, false); \
+	unclaimed_reg_debug_footer(uncore, reg, false); \
 	spin_unlock_irqrestore(&uncore->lock, irqflags)
 
 #define __gen6_write(x) \
-- 
2.39.2

