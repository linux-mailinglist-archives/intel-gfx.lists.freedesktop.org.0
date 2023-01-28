Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B72667FAA4
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Jan 2023 20:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E39010E238;
	Sat, 28 Jan 2023 19:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F46D10E1FD;
 Sat, 28 Jan 2023 19:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674935964; x=1706471964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RITxShuW7UIJnhf+Gu7iotdQC4giWlBms5fbm8yNGpA=;
 b=nDBNJZlWmUpTEYm/WCm+C5KXGh+DzFrxin4MEUG88C4Byqx442LjDJD/
 By/GKx7woE4HRFwv1PkMZBHAr4HLZ8Td4p++2LdcUPYETPlITDl5BABBW
 DBynY+8YG8InmIr7sUveoWDGRUssF4m25RMX4H2vfyHyiCIqf7atu4m0f
 CkTcumxX6IxtyboP2m2IHgqWmNuUfwgXjfjTogSkr4aYuIfZ0H10G1yZA
 CetKVEZeGDB5xsFPH2J1W9Q13JqIRdqlkEoSrQJWxw8owWl7Bs7LPBWZ9
 Q6lFn7Q9NEfxLrKU1YArvRqufH8Nu+Ai7huBVLnPMzhIRIHqxDV7ynGp9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="306978123"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="306978123"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 11:59:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="613567946"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="613567946"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 28 Jan 2023 11:59:22 -0800
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.137.106])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7DEFA333F1;
 Sat, 28 Jan 2023 19:59:21 +0000 (GMT)
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Jan 2023 20:59:05 +0100
Message-Id: <20230128195907.1837-7-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20230128195907.1837-1-michal.wajdeczko@intel.com>
References: <20230128195907.1837-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/8] drm/i915/guc: Update GuC messages in
 intel_guc_log.c
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use new macros to have common prefix that also include GT#.

v2: drop redundant GuC strings, minor improvements
v3: more message improvements

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 38 +++++++++++-----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 68331c538b0a..c3792ddeec80 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -12,6 +12,7 @@
 #include "i915_memcpy.h"
 #include "intel_guc_capture.h"
 #include "intel_guc_log.h"
+#include "intel_guc_print.h"
 
 #if defined(CONFIG_DRM_I915_DEBUG_GUC)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
@@ -39,7 +40,6 @@ struct guc_log_section {
 static void _guc_log_init_sizes(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
-	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	static const struct guc_log_section sections[GUC_LOG_SECTIONS_LIMIT] = {
 		{
 			GUC_LOG_CRASH_MASK >> GUC_LOG_CRASH_SHIFT,
@@ -82,12 +82,12 @@ static void _guc_log_init_sizes(struct intel_guc_log *log)
 		}
 
 		if (!IS_ALIGNED(log->sizes[i].bytes, log->sizes[i].units))
-			drm_err(&i915->drm, "Mis-aligned GuC log %s size: 0x%X vs 0x%X!",
+			guc_err(guc, "Mis-aligned log %s size: 0x%X vs 0x%X!\n",
 				sections[i].name, log->sizes[i].bytes, log->sizes[i].units);
 		log->sizes[i].count = log->sizes[i].bytes / log->sizes[i].units;
 
 		if (!log->sizes[i].count) {
-			drm_err(&i915->drm, "Zero GuC log %s size!", sections[i].name);
+			guc_err(guc, "Zero log %s size!\n", sections[i].name);
 		} else {
 			/* Size is +1 unit */
 			log->sizes[i].count--;
@@ -95,14 +95,14 @@ static void _guc_log_init_sizes(struct intel_guc_log *log)
 
 		/* Clip to field size */
 		if (log->sizes[i].count > sections[i].max) {
-			drm_err(&i915->drm, "GuC log %s size too large: %d vs %d!",
+			guc_err(guc, "log %s size too large: %d vs %d!\n",
 				sections[i].name, log->sizes[i].count + 1, sections[i].max + 1);
 			log->sizes[i].count = sections[i].max;
 		}
 	}
 
 	if (log->sizes[GUC_LOG_SECTIONS_CRASH].units != log->sizes[GUC_LOG_SECTIONS_DEBUG].units) {
-		drm_err(&i915->drm, "Unit mis-match for GuC log crash and debug sections: %d vs %d!",
+		guc_err(guc, "Unit mismatch for crash and debug sections: %d vs %d!\n",
 			log->sizes[GUC_LOG_SECTIONS_CRASH].units,
 			log->sizes[GUC_LOG_SECTIONS_DEBUG].units);
 		log->sizes[GUC_LOG_SECTIONS_CRASH].units = log->sizes[GUC_LOG_SECTIONS_DEBUG].units;
@@ -374,6 +374,7 @@ size_t intel_guc_get_log_buffer_offset(struct intel_guc_log *log,
 
 static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
+	struct intel_guc *guc = log_to_guc(log);
 	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
 	struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
 	struct guc_log_buffer_state log_buf_state_local;
@@ -383,7 +384,7 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 
 	mutex_lock(&log->relay.lock);
 
-	if (WARN_ON(!intel_guc_log_relay_created(log)))
+	if (guc_WARN_ON(guc, !intel_guc_log_relay_created(log)))
 		goto out_unlock;
 
 	/* Get the pointer to shared GuC log buffer */
@@ -398,7 +399,7 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 		 * Used rate limited to avoid deluge of messages, logs might be
 		 * getting consumed by User at a slow rate.
 		 */
-		DRM_ERROR_RATELIMITED("no sub-buffer to copy general logs\n");
+		guc_err_ratelimited(guc, "no sub-buffer to copy general logs\n");
 		log->relay.full_count++;
 
 		goto out_unlock;
@@ -451,7 +452,7 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 			write_offset = buffer_size;
 		} else if (unlikely((read_offset > buffer_size) ||
 				    (write_offset > buffer_size))) {
-			DRM_ERROR("invalid log buffer state\n");
+			guc_err(guc, "invalid log buffer state\n");
 			/* copy whole buffer as offsets are unreliable */
 			read_offset = 0;
 			write_offset = buffer_size;
@@ -547,7 +548,7 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 					subbuf_size, n_subbufs,
 					&relay_callbacks, dev_priv);
 	if (!guc_log_relay_chan) {
-		DRM_ERROR("Couldn't create relay chan for GuC logging\n");
+		guc_err(guc, "Couldn't create relay channel for logging\n");
 
 		ret = -ENOMEM;
 		return ret;
@@ -596,9 +597,8 @@ static u32 __get_default_log_level(struct intel_guc_log *log)
 	}
 
 	if (i915->params.guc_log_level > GUC_LOG_LEVEL_MAX) {
-		DRM_WARN("Incompatible option detected: %s=%d, %s!\n",
-			 "guc_log_level", i915->params.guc_log_level,
-			 "verbosity too high");
+		guc_warn(guc, "Log verbosity param out of range: %d > %d!\n",
+			 i915->params.guc_log_level, GUC_LOG_LEVEL_MAX);
 		return (IS_ENABLED(CONFIG_DRM_I915_DEBUG) ||
 			IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) ?
 			GUC_LOG_LEVEL_MAX : GUC_LOG_LEVEL_DISABLED;
@@ -641,15 +641,15 @@ int intel_guc_log_create(struct intel_guc_log *log)
 	log->buf_addr = vaddr;
 
 	log->level = __get_default_log_level(log);
-	DRM_DEBUG_DRIVER("guc_log_level=%d (%s, verbose:%s, verbosity:%d)\n",
-			 log->level, str_enabled_disabled(log->level),
-			 str_yes_no(GUC_LOG_LEVEL_IS_VERBOSE(log->level)),
-			 GUC_LOG_LEVEL_TO_VERBOSITY(log->level));
+	guc_dbg(guc, "guc_log_level=%d (%s, verbose:%s, verbosity:%d)\n",
+		log->level, str_enabled_disabled(log->level),
+		str_yes_no(GUC_LOG_LEVEL_IS_VERBOSE(log->level)),
+		GUC_LOG_LEVEL_TO_VERBOSITY(log->level));
 
 	return 0;
 
 err:
-	DRM_ERROR("Failed to allocate or map GuC log buffer. %d\n", ret);
+	guc_err(guc, "Failed to allocate or map log buffer %pe\n", ERR_PTR(ret));
 	return ret;
 }
 
@@ -687,7 +687,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 					     GUC_LOG_LEVEL_IS_ENABLED(level),
 					     GUC_LOG_LEVEL_TO_VERBOSITY(level));
 	if (ret) {
-		DRM_DEBUG_DRIVER("guc_log_control action failed %d\n", ret);
+		guc_dbg(guc, "guc_log_control action failed %pe\n", ERR_PTR(ret));
 		goto out_unlock;
 	}
 
@@ -905,7 +905,7 @@ int intel_guc_log_dump(struct intel_guc_log *log, struct drm_printer *p,
 
 	map = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(map)) {
-		DRM_DEBUG("Failed to pin object\n");
+		guc_dbg(guc, "Failed to pin log object: %pe\n", map);
 		drm_puts(p, "(log data unaccessible)\n");
 		free_page((unsigned long)page);
 		return PTR_ERR(map);
-- 
2.25.1

