Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C0376B4CF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 14:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965CD10E402;
	Tue,  1 Aug 2023 12:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD1910E402
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690893188; x=1722429188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kg5flZF2BAuqPbr5IWST2aGMqyK+lQI7c6rUjbhqFSw=;
 b=F8cvkDHJUAs3lBpocjDYjBkcogeS6Ef5z759iFBwdhw5/gRWzamCQbWx
 nbC21I8lo7JdM8WVhmjWRkygmVROBLvw0K4qzvw0+2otUEhbMGS9HP9RG
 yml36a8+DXqjaD299pL/ehl8GvUF6mA9D82doOghnV3WhwQZnmmEhUdFt
 OmLkKoJx0uCe1UlhXdITsyPLkdtuKH6qPZtJsHY1n9hzGPtu4v48xk97B
 dtAaSpxXCbyiR14TGinYgvTn5MeMz1d7CEpU/HNgGGZH+wz7ZrBl6ZxuQ
 BMg2fsLWWGu+by3/TOiT1jT5gSRVnXAK8mvm+dOPGkx3Kty8f/lSRcxUO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="366751110"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="366751110"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="852427319"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="852427319"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:33:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 15:32:50 +0300
Message-Id: <a53fb0fd84c4627398ccd4304b35db05603b89b6.1690886109.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1690886109.git.jani.nikula@intel.com>
References: <cover.1690886109.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 2/2] drm/i915/uncore: fix race around
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only check the conditions for unclaimed reg debug once to avoid locking
problems when i915->params.mmio_debug changes between header and footer.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8749
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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

