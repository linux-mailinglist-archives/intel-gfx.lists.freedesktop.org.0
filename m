Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404E08BA723
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22E711283B;
	Fri,  3 May 2024 06:34:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOQpDku1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 631CE11283A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714718077; x=1746254077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cNTEblp6lDudpDkFKEpsyE3v1LS9WTH4Sbo6yYtYqKU=;
 b=IOQpDku1F+y7VPgh+0Ut8ZvgGqhHPDKaLi2aPKUz8MB6QKmCg8rwsamQ
 rbtQv4M8SDbIIymTVSK6h81WcRBRvjDY3HAZoMgh6SZB5dMY844pWHrKt
 Nqt4oEA9hIZlTuKg4nS4yDc+C1V1E8ahSuk9REzL/CrTmtGucPsCJHQqZ
 TwrR2upT9tbJ/BfZgkg03YcuUVF8tfQYQ4fQ6Jf1U/v5n8z+LEwX8B+uW
 VcS893YKaGajV97aQjsZDb5sTd1waX8o00EFgMpBsNXEfWWKgWaUJuvvD
 8guu0/2UMTsue0z2b+2VfYK7Hs/ilN7xinp7iS2vhKrkuCaAS/SfEZaCx Q==;
X-CSE-ConnectionGUID: NCB/3WZ1SY6q6r1LJtwl/g==
X-CSE-MsgGUID: viyVI2fsQ6uDxWCAk1BmWQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14302317"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14302317"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:36 -0700
X-CSE-ConnectionGUID: 9hkie/lRTbOeM6/a0sD4fA==
X-CSE-MsgGUID: Euygj68NS6OxPKaoLZNH/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="50558724"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:34:35 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to track
 it's status
Date: Fri,  3 May 2024 09:34:09 +0300
Message-Id: <20240503063413.1008135-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503063413.1008135-1-jouni.hogander@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
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
index 5e5ef432b931..8f23df5cd5a8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2860,7 +2860,8 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.sel_update_enabled)
+		if (intel_dp_is_edp(intel_dp) &&
+		    intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2881,7 +2882,8 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (!intel_dp->psr.panel_replay_enabled &&
+	    intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3500,7 +3502,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.sel_update_enabled) {
+	if (intel_dp_is_edp(intel_dp) && intel_dp->psr.sel_update_enabled) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
-- 
2.34.1

