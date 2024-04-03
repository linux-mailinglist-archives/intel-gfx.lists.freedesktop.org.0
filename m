Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DABB8969D6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA871128E8;
	Wed,  3 Apr 2024 09:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQEF4pyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44A8D1128F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134851; x=1743670851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V9/KaWvYfIQWLPc8QVr1YfUYnGhAJHrDE4AaYIeY9b0=;
 b=IQEF4pyrfLQCX3EQBhkHYNj4LWtgiNUsMwU7UCj0IXiVNnT9223vtPeo
 Fi/3qd/P5raUFsOhuUu0jZ8vE1qq5Ct96/E0ZMkov6u8IP576VuHj0ASA
 nYJHWaSru1qcUp2kDoBCVNpZlWTsyxmbVcG01PgPxOgT49LBl76FnrV5p
 1jzaaG1LJLnNUbJydKHYuv+llo/7MsGl1w6O9VP3Amq89nS5GwrBWAWc4
 JjF3bQKPyc4TkQUYG8qvFBnK3f8h5pbDFI2hmNZM4MLCZoZdOhVXZotVs
 cSf0tX84v8V5e9aZ9gpx0UGhE+rOqJgffO4pTTVksH1ZzOr1IEK7eh/fL g==;
X-CSE-ConnectionGUID: WqSB5B6fRRyYQTiCo88Ksg==
X-CSE-MsgGUID: Eud33+jVQkOm9WfAXhWBpg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472530"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472530"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:47 -0700
X-CSE-ConnectionGUID: Enng2FqkTEKZonD7rhFh7Q==
X-CSE-MsgGUID: gfGMF0ClS9CYgg8vsNfi+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453239"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 15/19] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Wed,  3 Apr 2024 12:00:09 +0300
Message-Id: <20240403090013.54296-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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

v3:
  - do not use PSR2_STATUS for PSR1
v2:
  - use intel_dp_is_edp to differentiate
  - modify debugfs status as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 111eb7d6bc1c..9e6625470ced 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2849,7 +2849,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.sel_update_enabled)
+		if (intel_dp_is_edp(intel_dp) &&
+		    intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2870,7 +2871,8 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (!intel_dp->psr.panel_replay_enabled &&
+	    intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3489,7 +3491,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && intel_dp->psr.sel_update_enabled) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.34.1

