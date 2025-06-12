Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72847AD6FD2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C9D10E7F2;
	Thu, 12 Jun 2025 12:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTstjpw5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB9E10E7E5;
 Thu, 12 Jun 2025 12:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730352; x=1781266352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zMKSpOzB8CgqC2/+SKXnzDw/RP8av8MmU43MuUcrhjc=;
 b=XTstjpw5vY0FTEN6vzY13FbeYuKiXfZ67JWDKhC0aVNFW5lg0Nh+5IP1
 16+GFkXj4CM5Mhk8Sshr5tz7BOzWl00cnuSej/cj0kLJrL70aMqRj296N
 JZVJK9jkxhn5dCwVd+2PnszXgfxOnn4LsHJzW2MWXkexpUHqdPI2OtAfr
 OsPnZgzqTT3Qchh8ixmyU+J1YsW8IQx7jMeE9FZ+Hh+Z/DwLmopp4XoR2
 1yUPGBOmHm1JA8s9AkVJoH/TlVhkQyzagrsgWmUQaqyeirgiv8qZ2SMTx
 W0nK0zhsWDqOe0cehXon1U8nSso9K+n4SmAFXrnz8m4Z2LiQKMcpnHh5u w==;
X-CSE-ConnectionGUID: l1F1/K3uQyygtzIOKW9VQQ==
X-CSE-MsgGUID: a9XfmZtYRbiXMwkaRg84dQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="63314820"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="63314820"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:32 -0700
X-CSE-ConnectionGUID: TMUUTJSKR8WqCD/3yzUI4A==
X-CSE-MsgGUID: wnypdiSKStujJVWP9jicVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="178476870"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/16] drm/i915/wm: make struct intel_dbuf_state opaque type
Date: Thu, 12 Jun 2025 15:11:58 +0300
Message-Id: <40118aa7521135e0b7580fb60bb0af464287649b.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

With all the code touching struct intel_dbuf_state moved inside
skl_watermark.c, we move the struct definition there too, and make the
type opaque. This nicely reduces includes from skl_watermark.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h | 19 +++----------------
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f35f2603d543..34726895075b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -38,6 +38,18 @@
  */
 #define DSB_EXE_TIME 100
 
+struct intel_dbuf_state {
+	struct intel_global_state base;
+
+	struct skl_ddb_entry ddb[I915_MAX_PIPES];
+	unsigned int weight[I915_MAX_PIPES];
+	u8 slices[I915_MAX_PIPES];
+	u8 enabled_slices;
+	u8 active_pipes;
+	u8 mdclk_cdclk_ratio;
+	bool joined_mbus;
+};
+
 #define to_intel_dbuf_state(global_state) \
 	container_of_const((global_state), struct intel_dbuf_state, base)
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index a1993ded034a..87d052b640b3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -8,17 +8,16 @@
 
 #include <linux/types.h>
 
-#include "intel_display_limits.h"
-#include "intel_global_state.h"
-#include "intel_wm_types.h"
-
+enum plane_id;
 struct intel_atomic_state;
 struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dbuf_state;
 struct intel_display;
 struct intel_plane;
 struct intel_plane_state;
+struct skl_ddb_entry;
 struct skl_pipe_wm;
 struct skl_wm_level;
 
@@ -63,18 +62,6 @@ unsigned int skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_st
 					  struct intel_plane *plane, int width,
 					  int height, int cpp);
 
-struct intel_dbuf_state {
-	struct intel_global_state base;
-
-	struct skl_ddb_entry ddb[I915_MAX_PIPES];
-	unsigned int weight[I915_MAX_PIPES];
-	u8 slices[I915_MAX_PIPES];
-	u8 enabled_slices;
-	u8 active_pipes;
-	u8 mdclk_cdclk_ratio;
-	bool joined_mbus;
-};
-
 struct intel_dbuf_state *
 intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 
-- 
2.39.5

