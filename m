Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A2E894F18
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4C910FBDF;
	Tue,  2 Apr 2024 09:50:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iH/5Jz/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CA510FBDE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051450; x=1743587450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HByi5cbtCi8ZLp0IRF8g0pkBIZZhOE9P/knCrcD+xvI=;
 b=iH/5Jz/gEpkYBjXkyHPf2Cb1uy6bUKME+1i/cuCJ69P0afms/rJH07G1
 QUSKYOmPyrZkDfcFTMvCybMfux+uQDzIKPuwk2bq9TvIuWhaUeqYOSjBK
 z9rr0fu8a+iOLE2OR7HElWdcdkINgI/Iu2ichDLPxlQKd0K6cwx5/oIKI
 xZHM5f8IFZHyqj3XM7UEsAryPXIOnRMaClb3GZQB8CZlPBHv97XottcqV
 DicRnCm+Q6qjyzAd+untzvNzswDh1XKXNqKeQ80yNeWyLLK4E2P9rYofI
 cC5t1UOIw1Rqr3d+K4+nFXmaDqokX/3i5O/FWlrp+guO5OwWh9x99eN9S A==;
X-CSE-ConnectionGUID: IF0icSx3SvuMuTbT7bZO1w==
X-CSE-MsgGUID: qmwRXjCYTXekHgqynHBNbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422671"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422671"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693396"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 15/19] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Tue,  2 Apr 2024 12:50:07 +0300
Message-Id: <20240402095011.200558-16-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

v2:
  - use intel_dp_is_edp to differentiate
  - modify debugfs status as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 111eb7d6bc1c..bba1063ccd2e 100644
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
+	if (intel_dp_is_edp(intel_dp)) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.34.1

