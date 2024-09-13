Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913849781A0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 15:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E5810E278;
	Fri, 13 Sep 2024 13:55:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cWMv2E3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFEA210E278
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 13:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726235700; x=1757771700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=STfhJR+r4js0oy+9BZm+bDnzdCQcacfFVkYAeJgQ9XM=;
 b=cWMv2E3XF5Pvc07YYqsqV8rHSDtD0K1GJygsdvZzBTQzEH8Ovd54G59q
 yjjBlSEgNndqEYxkMotnR0OYQyjyimNGZuFRH6YfBW18vt9AnZ9wLVhNU
 I3vL2kHF2uwqx9HFGHnwSTgx3zAtHTZ3mbjvwbsyhYaVelNsYzfpqb+eW
 A1Zj4uBfVbdHi1FX9JoSGXAooJUx4bT4gsf8G7rRvWS8PqmW85UuQOXYl
 oyKckHGjzJEh66f7BBTTlyW9eU9e3IKpGYKCOzn4P6jhSfPTTo1RmFn3H
 q0Y14zzTeTXTSG8YMeI3F6eE+PG2Gu3H38ZtwAvGV5oJXYUMq1w0JGMOJ Q==;
X-CSE-ConnectionGUID: j36P90BnTtWYFvelo2Dk2g==
X-CSE-MsgGUID: DP/fmbOlSh2Y2kleSawk5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="42612229"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="42612229"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:55:00 -0700
X-CSE-ConnectionGUID: qdiKEB1hTEiy6YyFXpIo/Q==
X-CSE-MsgGUID: 4GcuCsMHSa2Hf9d2XUcWtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="72872275"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:54:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/display: move enum i9xx_plane_id to
 intel_display_limits.h
Date: Fri, 13 Sep 2024 16:54:39 +0300
Message-Id: <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726235647.git.jani.nikula@intel.com>
References: <cover.1726235647.git.jani.nikula@intel.com>
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

Move enum i9xx_plane_id from intel_display.h to intel_display_limits.h
to be able to reduce dependencies on intel_display.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h        | 10 ----------
 drivers/gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
 drivers/gpu/drm/i915/gvt/cmd_parser.c               |  1 -
 3 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d10608526eee..4bdb48084cab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -95,16 +95,6 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
 	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
 }
 
-/*
- * Global legacy plane identifier. Valid only for primary/sprite
- * planes on pre-g4x, and only for primary planes on g4x-bdw.
- */
-enum i9xx_plane_id {
-	PLANE_A,
-	PLANE_B,
-	PLANE_C,
-};
-
 #define plane_name(p) ((p) + 'A')
 
 #define for_each_plane_id_on_crtc(__crtc, __p) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
index c4775c99dc83..f0fa27e365ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_limits.h
+++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
@@ -49,6 +49,16 @@ enum transcoder {
 	I915_MAX_TRANSCODERS
 };
 
+/*
+ * Global legacy plane identifier. Valid only for primary/sprite
+ * planes on pre-g4x, and only for primary planes on g4x-bdw.
+ */
+enum i9xx_plane_id {
+	PLANE_A,
+	PLANE_B,
+	PLANE_C,
+};
+
 /*
  * Per-pipe plane identifier.
  * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 2f4c9c66b40b..81d67a46cd9e 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -50,7 +50,6 @@
 #include "trace.h"
 
 #include "display/i9xx_plane_regs.h"
-#include "display/intel_display.h"
 #include "display/intel_sprite_regs.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_pm.h"
-- 
2.39.2

