Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12CD746DF7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E7310E2C8;
	Tue,  4 Jul 2023 09:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0BA10E2C8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464142; x=1720000142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FnebASjezDAB6h4f7lYg3iBmTzwEPSPhesVrBLA/qTc=;
 b=NL3ShET6kaVqFkkB9V1dvRq8r8hv9PWmixZ34w5JHyrYrIHiUCfoqtQU
 rX+cZ6ktQzWjqKNbOudZW+/bzsX/gyxW8/AAyuS9hiaJslDK9ilNQ+S4X
 5Za9eX0AKBWMSt95HSswp2pcSlIlUexJr5r5kvSfmwscYWtrS594gxxOq
 rnWJ3fDrQSkdNn7iuroj6+ppNY3HxqOQJVS4EPata4C1F7mUl8i0URCQf
 rfhnb8pEzWwMkrj5G7nbqpN8e463miimGSipu0etrgvyobUCqfLb6AfeX
 NOX4lSAi48LXq+LOJyC41zx0ODFaAB8Aejmz8K53OTul8NVu0rukDghEP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="393829746"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="393829746"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:49:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="788804452"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="788804452"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:49:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 12:48:48 +0300
Message-Id: <eb314ccd1fc96aa729667fc18322cc4cbb3d79cf.1688463863.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1688463863.git.jani.nikula@intel.com>
References: <cover.1688463863.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/uncore: fix race around
 i915->params.mmio_debug
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

Only check the conditions for unclaimed reg debug once to avoid locking
problems when i915->params.mmio_debug changes between header and footer.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8749
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index a88aa342b623..dfefad5a5fec 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1925,27 +1925,26 @@ __unclaimed_previous_reg_debug(struct intel_uncore *uncore,
 			i915_mmio_reg_offset(reg));
 }
 
-static inline void
+static inline bool __must_check
 unclaimed_reg_debug_header(struct intel_uncore *uncore,
 			   const i915_reg_t reg, const bool read)
 {
 	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
-		return;
+		return false;
 
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
 	lockdep_assert_held(&uncore->lock);
 
 	spin_lock(&uncore->debug->lock);
 	__unclaimed_previous_reg_debug(uncore, reg, read);
+
+	return true;
 }
 
 static inline void
 unclaimed_reg_debug_footer(struct intel_uncore *uncore,
 			   const i915_reg_t reg, const bool read)
 {
-	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
-		return;
-
 	/* interrupts are disabled and re-enabled around uncore->lock usage */
 	lockdep_assert_held(&uncore->lock);
 
@@ -2008,13 +2007,15 @@ __gen2_read(64)
 #define GEN6_READ_HEADER(x) \
 	u32 offset = i915_mmio_reg_offset(reg); \
 	unsigned long irqflags; \
+	bool unclaimed_reg_debug; \
 	u##x val = 0; \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
-	unclaimed_reg_debug_header(uncore, reg, true)
+	unclaimed_reg_debug = unclaimed_reg_debug_header(uncore, reg, true)
 
 #define GEN6_READ_FOOTER \
-	unclaimed_reg_debug_footer(uncore, reg, true); \
+	if (unclaimed_reg_debug) \
+		unclaimed_reg_debug_footer(uncore, reg, true);	\
 	spin_unlock_irqrestore(&uncore->lock, irqflags); \
 	trace_i915_reg_rw(false, reg, val, sizeof(val), trace); \
 	return val
@@ -2112,13 +2113,15 @@ __gen2_write(32)
 #define GEN6_WRITE_HEADER \
 	u32 offset = i915_mmio_reg_offset(reg); \
 	unsigned long irqflags; \
+	bool unclaimed_reg_debug; \
 	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
 	assert_rpm_wakelock_held(uncore->rpm); \
 	spin_lock_irqsave(&uncore->lock, irqflags); \
-	unclaimed_reg_debug_header(uncore, reg, false)
+	unclaimed_reg_debug = unclaimed_reg_debug_header(uncore, reg, false)
 
 #define GEN6_WRITE_FOOTER \
-	unclaimed_reg_debug_footer(uncore, reg, false); \
+	if (unclaimed_reg_debug) \
+		unclaimed_reg_debug_footer(uncore, reg, false); \
 	spin_unlock_irqrestore(&uncore->lock, irqflags)
 
 #define __gen6_write(x) \
-- 
2.39.2

