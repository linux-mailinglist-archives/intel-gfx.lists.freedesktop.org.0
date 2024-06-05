Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283388FCA39
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9831E10E769;
	Wed,  5 Jun 2024 11:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFRolt3A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881D510E769
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586326; x=1749122326;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=glkUi6etFTjc2ZFoWHOjGOCOOwAr62Ve8TulkVleAy0=;
 b=OFRolt3AxwdrPEOYjVuFneoumiAGz6jwr0C+z6UGHYVujgp0I2hXdEAF
 6NsZPCPEGgGTc5tn/89e8vIZM9XQciwDtkPyLt194i/c6YaRIYQm0LR1x
 gHYDYVMtLR+xeB09g2rQ9lRVMolx0Hri1l21UlxxKCumMem9EdxOi7YxS
 S2tDY2fUZctRI+sav5Rqqr7GejCG4dc2bMovq+CesPU8BXJUCXG+K/bqw
 GkJai8Glm+wiiMC4vfeIuBFgP5pz8a0AHoL0MD6WT7wTN2Zz7q7flLUPN
 O+s8uiT3FsEyBBL4mJl1j/efHqd3QLnEv8Z54pMZP4yJnptnqirZj7rfl g==;
X-CSE-ConnectionGUID: 4hcKX7DOTKCdBM2dgQeXcw==
X-CSE-MsgGUID: KDq5tG7nQDuBZdPmFbZZ4g==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920179"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920179"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:46 -0700
X-CSE-ConnectionGUID: o/MqT4DHSZePF8Q6RcjA3Q==
X-CSE-MsgGUID: Q1QQhn4DTIWFjsCSRHw3fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Extend GEN9_PIPE_PLANE_FLIP_DONE() to cover all
 universal planes
Date: Wed,  5 Jun 2024 14:18:29 +0300
Message-ID: <20240605111832.21373-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

GEN9_PIPE_PLANE_FLIP_DONE() only works for planes 1-4. Extend
it handle planes 5-7 as well. Somewhat annoyingly the bits are
spread around into two distinct clumps.

Currently this doesn't achieve anything, but if we ever extend
async flip support to more than just the first plane then we'll
need this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e1053c60284..4d5438ce73a2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2631,6 +2631,9 @@
 #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
 #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
+#define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
+#define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
+#define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
 #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
 #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
 #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
@@ -2645,7 +2648,8 @@
 #define  GEN9_PIPE_PLANE2_FLIP_DONE	REG_BIT(4) /* skl+ */
 #define  GEN8_PIPE_PRIMARY_FLIP_DONE	REG_BIT(4) /* bdw */
 #define  GEN9_PIPE_PLANE1_FLIP_DONE	REG_BIT(3) /* skl+ */
-#define  GEN9_PIPE_PLANE_FLIP_DONE(p)	REG_BIT(3 + (p)) /* skl+ */
+#define  GEN9_PIPE_PLANE_FLIP_DONE(plane_id) \
+	REG_BIT(((plane_id) >= PLANE_5 ? 16 - PLANE_5 : 3 - PLANE_1) + (plane_id)) /* skl+ */
 #define  GEN8_PIPE_SCAN_LINE_EVENT	REG_BIT(2)
 #define  GEN8_PIPE_VSYNC		REG_BIT(1)
 #define  GEN8_PIPE_VBLANK		REG_BIT(0)
-- 
2.44.1

