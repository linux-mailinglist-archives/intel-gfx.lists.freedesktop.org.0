Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD858C2121
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9130E10E849;
	Fri, 10 May 2024 09:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ciItHm3s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCBD10E849
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333936; x=1746869936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XoG14Mi3JXF7ll+iv9H9ZWeiN2/GcepmkCTcwNxTvzk=;
 b=ciItHm3s/IOCH96EEbu34lZANIzyEoQwHUkAVaj3nLA7JIqHc/bvFN+G
 M9HmT0HtECFXimHb4rhQXjkCotbBpPbelRsKfbz1aXZuyNyssCkQ8aZ0Z
 IdSPWRvh6uoPDJ9qYXhPvCfmftXTGhbJePXPNCs5WLC+tPkCvGQkVEhO/
 d0e/SWdkr/0EJ2AwrI80eGVYd0m5uAIIKYDoGOMvE6wKnxeYZBEhBB0g+
 j3X4OOCBeO5RegI3k4DKuzRqGMFHqGrVdStPg2g+lKIxQH9Q1x8n9qUom
 3jKQZ5bMuBN4/bFg2t2iAhTVo3wmCp6Tp73ERQKvUHT9TIE2HWxZettqI Q==;
X-CSE-ConnectionGUID: Jf2Gx4gqS1Satv17LE9zHA==
X-CSE-MsgGUID: fj8W7EKfSEGCMU6wBneceg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684705"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684705"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:56 -0700
X-CSE-ConnectionGUID: 7H4GAtS6Th2JXg3Tk2xD2w==
X-CSE-MsgGUID: AF8yS86jS2+EHXbbm6s4+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075579"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Fri, 10 May 2024 12:38:19 +0300
Message-Id: <20240510093823.3146455-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

DP Panel replay uses SRD_STATUS to track it's status despite selective
update mode.

Bspec: 53370, 68920

v4:
  - use PSR2_STATUS for eDP Panel Replay
  - handle intel_psr_wait_exit_locked as well
v3:
  - do not use PSR2_STATUS for PSR1
v2:
  - use intel_dp_is_edp to differentiate
  - modify debugfs status as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6d1f442f3d14..532a80a3eeea 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2111,7 +2111,8 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 	i915_reg_t psr_status;
 	u32 psr_status_mask;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
+					  intel_dp->psr.panel_replay_enabled)) {
 		psr_status = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -2849,6 +2850,13 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
+static int _panel_replay_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
+{
+	return intel_dp_is_edp(intel_dp) ?
+		_psr2_ready_for_pipe_update_locked(intel_dp) :
+		_psr1_ready_for_pipe_update_locked(intel_dp);
+}
+
 /**
  * intel_psr_wait_for_idle_locked - wait for PSR be ready for a pipe update
  * @new_crtc_state: new CRTC state
@@ -2874,7 +2882,9 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.sel_update_enabled)
+		if (intel_dp->psr.panel_replay_enabled)
+			ret = _panel_replay_ready_for_pipe_update_locked(intel_dp);
+		else if (intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2895,7 +2905,8 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
+					  intel_dp->psr.panel_replay_enabled)) {
 		reg = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3517,7 +3528,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
+					  intel_dp->psr.panel_replay_enabled)) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.34.1

