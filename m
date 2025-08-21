Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C8BB2ED5B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 07:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639C010E879;
	Thu, 21 Aug 2025 04:59:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5zcYq7z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27B310E876;
 Thu, 21 Aug 2025 04:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755752379; x=1787288379;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NrhI2/EIljfmK99RPbTgJWFucuo5UorBDTQfItKGaDY=;
 b=j5zcYq7zRWI69Klv3Y1WGuIWWpUnHRRkMa8zMn10QsXuVKAq2XUgjxAX
 7VGpnFYPLhDXpa3lFKLOQzfnWrarj6BGD7lUnXJXf/1a0+cF5OfJbt5sg
 iqyIdjqayoOOpd5lWEfHgoM+T1CIyRbfC97ogsSwflCBu2y7JBLSmgp9z
 9sy66pF1FsF+8rs01fHzFa1VYOEKW5azlfjvxXwCQAreISvdZ6nOUZDJD
 BgxRumYe7CLf/tiy58G7XItt2IHf+mJD2u9FpNdyMUPFBe+sgk8f6FU6k
 pW8Em+7z9sIWoBB4oi0/5KHNcviqpcYcyfPOaG6nVVudhxnpoFS5QgLMu Q==;
X-CSE-ConnectionGUID: trlSYKT7RLm5eCcpiZNbLg==
X-CSE-MsgGUID: efe9IBrTTOCQRqeFcjk+JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69473218"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="69473218"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:59:38 -0700
X-CSE-ConnectionGUID: BWZ+aR2GT2mQdW6EWgc7rA==
X-CSE-MsgGUID: 561UZekZTn+lW3qDRL5dAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="173577539"
Received: from abityuts-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.170])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:59:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value on
 PSR dpcd init
Date: Thu, 21 Aug 2025 07:59:17 +0300
Message-ID: <20250821045918.17757-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

Currently we are ignoriong drm_dp_dpcd_read return values when reading PSR
and Panel Replay capability DPCD register. Rework intel_psr_dpcd a bit to
take care of checking the return value.

v2: use drm_dp_dpcd_read_data

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 609df53f1ef1..5addde63168e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -580,6 +580,16 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int ret;
+
+	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
+				    &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
+	if (ret < 0)
+		return;
+
+	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
+	      DP_PANEL_REPLAY_SUPPORT))
+		return;
 
 	if (intel_dp_is_edp(intel_dp)) {
 		if (!intel_alpm_aux_less_wake_supported(intel_dp)) {
@@ -611,6 +621,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int ret;
+
+	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
+				    sizeof(intel_dp->psr_dpcd));
+	if (ret < 0)
+		return;
+
+	if (!intel_dp->psr_dpcd[0])
+		return;
 
 	drm_dbg_kms(display->drm, "eDP panel supports PSR version %x\n",
 		    intel_dp->psr_dpcd[0]);
@@ -656,18 +675,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
-	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
-			 sizeof(intel_dp->psr_dpcd));
-
-	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
-			 &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
-
-	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
-	    DP_PANEL_REPLAY_SUPPORT)
-		_panel_replay_init_dpcd(intel_dp);
+	_psr_init_dpcd(intel_dp);
 
-	if (intel_dp->psr_dpcd[0])
-		_psr_init_dpcd(intel_dp);
+	_panel_replay_init_dpcd(intel_dp);
 
 	if (intel_dp->psr.sink_psr2_support ||
 	    intel_dp->psr.sink_panel_replay_su_support)
-- 
2.43.0

