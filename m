Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 157C976B4CE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 14:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789F510E3FE;
	Tue,  1 Aug 2023 12:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D638E10E3FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 12:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690893184; x=1722429184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TrMiLP2CPCzlDgFafeUA4QeFt1lQe1CEHDA4tjoN2CA=;
 b=gc0Jy2nWoZtsdDUzV0RMJMx8uFhlpQpNjtWkrdHfEcH4x97fKfoelP9Z
 h74JoTm96kiRvXZp9BxUMTHOOyqcShSDP+kj5kH3q3FJYgWpDUqCRWbKp
 qjZ3FjFulpOVtHZdN93CPPdGW5xmgJzbm9LDDrYujIffJYR2CTv51bhaL
 es1sYL1XGMYJQBrCpwXK0JWwhDcEBApx13+Z7Wwp4F7JlYyLPMDF37GxT
 t4BimPswwArbuJaySK5sgdCawATkuHgBI1CPvlrAar2MuwUsLnQgVvBPv
 wG/wWt/LDe5kzkJ7nmgKHpBfSxXNU4ggALhCHpio+uy34xTYWNgFeTeoi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="366751105"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="366751105"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="852427289"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="852427289"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:33:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 15:32:49 +0300
Message-Id: <8a0a93f08314f8d7e222a907d9aa5e0b89cb969e.1690886109.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1690886109.git.jani.nikula@intel.com>
References: <cover.1690886109.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 1/2] drm/i915/uncore: split
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it easier to have different logic for the two for follow-up.

Cc: Lee Shawn C <shawn.c.lee@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

