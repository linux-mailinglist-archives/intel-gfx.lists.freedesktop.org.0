Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDA04F19AD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 20:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07DE10E12A;
	Mon,  4 Apr 2022 18:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FC410E12A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 18:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649096358; x=1680632358;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QKEG3f6ht87fS21DpXRjsLvw6SVJARSxSj0S33XkiFU=;
 b=Du6dx30a0uV71WvV89fbnyPvmPPzFPIyqbCZQOQAIjAN4FnYPAK5AoMs
 NlqCZ6lnIpLgi4tmYKKPikNseZSf/+9ct/keJ3u0lOiQdj0TWBsFS1gP7
 IN/2gA/A/LjRjEjhUOYqg4/IVRh4QAteql3APWgivGQCbPIwUPCfO6p8f
 fTPcQcR4/lTuXUhTNyJD/u8/OYIlIqz7rEyt1DSEvZCVb6R02COsVxpsP
 HSMEvHb5BcvYuSOwJSi4pvIIAmYbL3ItaAZfANJZjQGW5tCOz08PIc4ns
 iNiWFM2a8QuLATVV6XGEbmaQsUrAkZnoV4Paa5DgBR2qqs5LYFUfWWicu A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="347020582"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="347020582"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:19:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="641322298"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:19:01 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 11:18:44 -0700
Message-Id: <20220404181844.2649726-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/uncore: keep track of last mmio
 accesses
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sine gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
This register is in the display engine IP and can only ever detect
unclaimed accesses to registers in this area. However sometimes there
are reports of this triggering for registers in other areas, which
should not be possible.

This keeps track of the last 4 registers which should hopefully be
sufficient to understand where these are coming from. And without
increasing the debug struct too much:

Before:
	struct intel_uncore_mmio_debug {
		spinlock_t                 lock;                 /*     0    64 */
		/* --- cacheline 1 boundary (64 bytes) --- */
		int                        unclaimed_mmio_check; /*    64     4 */
		int                        saved_mmio_check;     /*    68     4 */
		u32                        suspend_count;        /*    72     4 */

		/* size: 80, cachelines: 2, members: 4 */
		/* padding: 4 */
		/* last cacheline: 16 bytes */
	};

After:
	struct intel_uncore_mmio_debug {
		spinlock_t                 lock;                 /*     0    64 */
		/* --- cacheline 1 boundary (64 bytes) --- */
		int                        unclaimed_mmio_check; /*    64     4 */
		int                        saved_mmio_check;     /*    68     4 */
		u32                        last_reg[4];          /*    72    16 */
		u32                        last_reg_pos;         /*    88     4 */
		u32                        suspend_count;        /*    92     4 */

		/* size: 96, cachelines: 2, members: 6 */
		/* last cacheline: 32 bytes */
	};

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 18 +++++++++++++++++-
 drivers/gpu/drm/i915/intel_uncore.h |  4 ++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8b9caaaacc21..31a23b0e2907 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1509,9 +1509,25 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
 		     check_for_unclaimed_mmio(uncore) && !before,
 		     "Unclaimed %s register 0x%x\n",
 		     read ? "read from" : "write to",
-		     i915_mmio_reg_offset(reg)))
+		     i915_mmio_reg_offset(reg))) {
+		unsigned int i;
+
 		/* Only report the first N failures */
 		uncore->i915->params.mmio_debug--;
+
+		drm_dbg(&uncore->i915->drm, "Last register accesses:\n");
+		for (i = uncore->debug->last_reg_pos;
+		     i < uncore->debug->last_reg_pos + INTEL_UNCORE_MMIO_DEBUG_REG_COUNT;
+		     i++)
+			drm_dbg(&uncore->i915->drm, "0x%x\n",
+				uncore->debug->last_reg[i % INTEL_UNCORE_MMIO_DEBUG_REG_COUNT]);
+	}
+
+	if (!before) {
+		uncore->debug->last_reg[uncore->debug->last_reg_pos++] =
+			i915_mmio_reg_offset(reg);
+		uncore->debug->last_reg_pos %= INTEL_UNCORE_MMIO_DEBUG_REG_COUNT;
+	}
 }
 
 static inline void
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 52fe3d89dd2b..5b5d2858ae11 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -38,10 +38,14 @@ struct intel_runtime_pm;
 struct intel_uncore;
 struct intel_gt;
 
+#define INTEL_UNCORE_MMIO_DEBUG_REG_COUNT	4
+
 struct intel_uncore_mmio_debug {
 	spinlock_t lock; /** lock is also taken in irq contexts. */
 	int unclaimed_mmio_check;
 	int saved_mmio_check;
+	u32 last_reg[INTEL_UNCORE_MMIO_DEBUG_REG_COUNT];
+	u32 last_reg_pos;
 	u32 suspend_count;
 };
 
-- 
2.35.1

