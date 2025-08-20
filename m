Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60627B2D943
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 11:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E728510E6C0;
	Wed, 20 Aug 2025 09:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kbXRDGL9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FC310E6C0;
 Wed, 20 Aug 2025 09:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755683625; x=1787219625;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c8fZnW2mUY2xeFPlaeib/S8KNRflmUJTFODXbSGzleA=;
 b=kbXRDGL9jfykMr2gi1DdwFRfi103ih8hq4kmJcphgS6dPTYrAqb9y3Dn
 dNpqs7cRkkIt4CP+rW9d600m42G6z2aBTMFSpkwEVHnZzx4mAskTNOUkp
 SRHGYEvXEoLeniqcBE391Fqt4WmcoZt6nXmV0KJ7qMI7F6Uxc1GdCBgel
 ZwcLVAia45slYQJsBM1m6hB1lSqA8aUiPl+epef41vLV4PGoil4rnkVm9
 qzrchGu4rYt1YtT6jF5PybP099NsGXxKfU9L3lnOoD4vFiMcDxYIHrGt8
 hep0d9a/eQ8eIipodpFn1p23vxcV/2XFvv3CyGPXyYstXfCXLC2r5fF5N A==;
X-CSE-ConnectionGUID: 16bgM+/VTE+PervZrLEewA==
X-CSE-MsgGUID: xFoz2nVGTZygCHnS1aPoTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57896333"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57896333"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:53:44 -0700
X-CSE-ConnectionGUID: aq5UP+H4QMmxgLJH6l0gzw==
X-CSE-MsgGUID: Rm5mF3JzTjW/Q+pq5blTvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168038896"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.252])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 02:53:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Check drm_dp_dpcd_read return value on PSR
 dpcd init
Date: Wed, 20 Aug 2025 12:53:33 +0300
Message-ID: <20250820095334.3849458-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 609df53f1ef1..68eb02127f47 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -580,6 +580,16 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int ret;
+
+	ret = drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
+			       &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
+	if (ret != sizeof(intel_dp->pr_dpcd))
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
+	ret = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
+			       sizeof(intel_dp->psr_dpcd));
+	if (ret != sizeof(intel_dp->psr_dpcd))
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

