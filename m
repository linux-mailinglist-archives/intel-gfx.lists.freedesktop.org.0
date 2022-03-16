Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE114DA788
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 02:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E657E10E4E5;
	Wed, 16 Mar 2022 01:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8752110E4DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647395279; x=1678931279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B2Qd3gNZH5uAIFJZjIMB+K6a/Gfd8Tu7gQ0ycbuhYu4=;
 b=mggaof4TgD9nUyOsPRT3nTO0bdc6/rNYINFphn2hfqQa6C2rNttnMpSn
 QdqFyOBRUtYCxrZxJ/SeYP9U7EuJip4GcHa9H6BFI8dMp1PR2rOGwdZeD
 TiX/yCg7k7RXwVhrvFdwc3a1xeUXEvxBekUVHmamAOhFH+i8K+8STPHX9
 KI1gMHJnFd/gNb9ySUDqxV7IpFXdYZ/MIGGnLL4cfa1dd+Fgc0Gt92Gqm
 fyrOBzq5PnMeUdcK/QD0Bkhh7OQQemkhazqf1fRw0ZM6VgMGUd8kSQoTH
 mO5Q9Br2amrI5ovrbnNoUfaQJ7+ebyvB49TmOfIpr9OzJj4IbTkyGpUP0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255294148"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="255294148"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 18:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="634804817"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Mar 2022 18:47:58 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 18:50:19 -0700
Message-Id: <20220316015025.1664860-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
References: <20220316015025.1664860-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 07/13] drm/i915/guc: Update GuC-log relay
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 35 ++++++++++++----------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index a24dc6441872..0d63c411080f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -12,7 +12,7 @@
 #include "i915_memcpy.h"
 #include "intel_guc_log.h"
 
-static void guc_log_capture_logs(struct intel_guc_log *log);
+static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
 /**
  * DOC: GuC firmware log
@@ -198,7 +198,7 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
 	return 0;
 }
 
-static void guc_read_update_log_buffer(struct intel_guc_log *log)
+static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
 	struct guc_log_buffer_state *log_buf_state, *log_buf_snapshot_state;
@@ -223,7 +223,7 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
 		 * Used rate limited to avoid deluge of messages, logs might be
 		 * getting consumed by User at a slow rate.
 		 */
-		DRM_ERROR_RATELIMITED("no sub-buffer to capture logs\n");
+		DRM_ERROR_RATELIMITED("no sub-buffer to copy general logs\n");
 		log->relay.full_count++;
 
 		goto out_unlock;
@@ -301,15 +301,15 @@ static void guc_read_update_log_buffer(struct intel_guc_log *log)
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
 
@@ -332,7 +332,7 @@ static int guc_log_map(struct intel_guc_log *log)
 	return 0;
 }
 
-static void guc_log_unmap(struct intel_guc_log *log)
+static void guc_log_relay_unmap(struct intel_guc_log *log)
 {
 	lockdep_assert_held(&log->relay.lock);
 
@@ -343,7 +343,7 @@ static void guc_log_unmap(struct intel_guc_log *log)
 void intel_guc_log_init_early(struct intel_guc_log *log)
 {
 	mutex_init(&log->relay.lock);
-	INIT_WORK(&log->relay.flush_work, capture_logs_work);
+	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
 
@@ -358,8 +358,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
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
@@ -394,13 +397,13 @@ static void guc_log_relay_destroy(struct intel_guc_log *log)
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
@@ -566,7 +569,7 @@ int intel_guc_log_relay_open(struct intel_guc_log *log)
 	if (ret)
 		goto out_unlock;
 
-	ret = guc_log_map(log);
+	ret = guc_log_relay_map(log);
 	if (ret)
 		goto out_relay;
 
@@ -616,8 +619,8 @@ void intel_guc_log_relay_flush(struct intel_guc_log *log)
 	with_intel_runtime_pm(guc_to_gt(guc)->uncore->rpm, wakeref)
 		guc_action_flush_log(guc);
 
-	/* GuC would have updated log buffer by now, so capture it */
-	guc_log_capture_logs(log);
+	/* GuC would have updated log buffer by now, so copy it */
+	guc_log_copy_debuglogs_for_relay(log);
 }
 
 /*
@@ -646,7 +649,7 @@ void intel_guc_log_relay_close(struct intel_guc_log *log)
 
 	mutex_lock(&log->relay.lock);
 	GEM_BUG_ON(!intel_guc_log_relay_created(log));
-	guc_log_unmap(log);
+	guc_log_relay_unmap(log);
 	guc_log_relay_destroy(log);
 	mutex_unlock(&log->relay.lock);
 }
-- 
2.25.1

