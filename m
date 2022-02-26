Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E7F4C5406
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 06:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1688C10ED09;
	Sat, 26 Feb 2022 05:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA7810ECFE
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Feb 2022 05:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645854796; x=1677390796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9A+S7XGA/5R9vVgmR9NG7UuCwrJCNCYsdrqt1LpFAXg=;
 b=WkmBv19ds8yn2tP7CSKnh1eAeM/z9J0x9RHM+BWoZ4a6ChYTHp19tBZP
 YnbSnUmMg4IcUZ7jXP1GljKbjagyV/0+E6jJUox255HSht/+cSF2K/DLu
 FCiDdSqKYH42Q+yLEf0ExkRjnaBrhL/HYLk1g+bRaQ11igI7IDeNbGrvZ
 qf+VQdvuRVqbPmfMnBh/sfmvgYVcvZ4Y84lOurm5E8p4kKH1mOx2jEigU
 lWOS5Ceqwrhahemtn4aGhae6yrSl9S9qm+dlEl76/ZpT0BgcFnLbLlyLj
 ACf2y5hVldEOABxhRUCSoKHJr07Q9IpN/kg5iVGyeCI6Wtk6b+qtAsjIp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="277274589"
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="277274589"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 21:53:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,138,1643702400"; d="scan'208";a="574817081"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga001.jf.intel.com with ESMTP; 25 Feb 2022 21:53:15 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 21:55:20 -0800
Message-Id: <20220226055526.665514-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
References: <20220226055526.665514-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 07/13] drm/i915/guc: Update GuC-log relay
 function names
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the sake of better code readibility, change previous
relay logging function names with "capture_logs" to
"copy_debug_logs" to differentiate from error capture
functions that will use a different region of the same buffer.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 35 ++++++++++++----------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index b53f61f3101f..bf3abb7e69b0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -11,7 +11,7 @@
 #include "i915_memcpy.h"
 #include "intel_guc_log.h"
 
-static void guc_log_capture_logs(struct intel_guc_log *log);
+static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
 /**
  * DOC: GuC firmware log
@@ -197,7 +197,7 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 	return 0;
 }
 
-static void guc_read_update_log_buffer(struct intel_guc_log *log)
+static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
 	struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
@@ -222,7 +222,7 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 		 * Used rate limited to avoid deluge of messages, logs might be
 		 * getting consumed by User at a slow rate.
 		 */
-		DRM_ERROR_RATELIMITED("no sub-buffer to capture logs\n");
+		DRM_ERROR_RATELIMITED("no sub-buffer to copy general logs\n");
 		log->relay.full_count++;
 
 		goto out_unlock;
@@ -300,15 +300,15 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 	mutex_unlock(&log->relay.lock);
 }
 
-static void capture_logs_work(struct work_struct *work)
+static void copy_debug_logs_work(struct work_struct *work)
 {
 	struct intel_guc_log *log =
 		container_of(work, struct intel_guc_log, relay.flush_work);
 
-	guc_log_capture_logs(log);
+	guc_log_copy_debuglogs_for_relay(log);
 }
 
-static int guc_log_map(struct intel_guc_log *log)
+static int guc_log_relay_map(struct intel_guc_log *log)
 {
 	void *vaddr;
 
@@ -331,7 +331,7 @@ static int guc_log_map(struct intel_guc_log *log)
 	return 0;
 }
 
-static void guc_log_unmap(struct intel_guc_log *log)
+static void guc_log_relay_unmap(struct intel_guc_log *log)
 {
 	lockdep_assert_held(&log->relay.lock);
 
@@ -342,7 +342,7 @@ static void guc_log_unmap(struct intel_guc_log *log)
 void intel_guc_log_init_early(struct intel_guc_log *log)
 {
 	mutex_init(&log->relay.lock);
-	INIT_WORK(&log->relay.flush_work, capture_logs_work);
+	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
 
@@ -357,8 +357,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	lockdep_assert_held(&log->relay.lock);
 	GEM_BUG_ON(!log->vma);
 
-	 /* Keep the size of sub buffers same as shared log buffer */
-	subbuf_size = log->vma->size;
+	 /*
+	  * Keep the size of sub buffers same as shared log buffer
+	  * but GuC log-events excludes the error-state-capture logs
+	  */
+	subbuf_size = log->vma->size - CAPTURE_BUFFER_SIZE;
 
 	/*
 	 * Store up to 8 snapshots, which is large enough to buffer sufficient
@@ -393,13 +396,13 @@ static void guc_log_relay_destroy(struct intel_guc_log *log)
 	log->relay.channel = NULL;
 }
 
-static void guc_log_capture_logs(struct intel_guc_log *log)
+static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
 	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
 	intel_wakeref_t wakeref;
 
-	guc_read_update_log_buffer(log);
+	_guc_log_copy_debuglogs_for_relay(log);
 
 	/*
 	 * Generally device is expected to be active only at this
@@ -565,7 +568,7 @@ int intel_guc_log_relay_open(struct intel_guc_log *log)
 	if (ret)
 		goto out_unlock;
 
-	ret = guc_log_map(log);
+	ret = guc_log_relay_map(log);
 	if (ret)
 		goto out_relay;
 
@@ -615,8 +618,8 @@ void intel_guc_log_relay_flush(struct intel_guc_log *log)
 	with_intel_runtime_pm(guc_to_gt(guc)->uncore->rpm, wakeref)
 		guc_action_flush_log(guc);
 
-	/* GuC would have updated log buffer by now, so capture it */
-	guc_log_capture_logs(log);
+	/* GuC would have updated log buffer by now, so copy it */
+	guc_log_copy_debuglogs_for_relay(log);
 }
 
 /*
@@ -645,7 +648,7 @@ void intel_guc_log_relay_close(struct intel_guc_log *log)
 
 	mutex_lock(&log->relay.lock);
 	GEM_BUG_ON(!intel_guc_log_relay_created(log));
-	guc_log_unmap(log);
+	guc_log_relay_unmap(log);
 	guc_log_relay_destroy(log);
 	mutex_unlock(&log->relay.lock);
 }
-- 
2.25.1

