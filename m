Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67988CAA43
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1068410E73D;
	Tue, 21 May 2024 08:47:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ThWTLn6k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78DB10E727
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281229; x=1747817229;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HjZGCSyCi9tg8sq07vDs1DxVXgWMivlwQdOe6sj+QGs=;
 b=ThWTLn6kPcc0VvlECViHpGUjpzkL4LGVGc1CqZFukeHPe6x56TWdIFEL
 XUr1AGp1SLdvG3IMqzojKtOI0ZCr5Jc9imzo2xd1HCTRlmsqjZ4FcW+Tb
 j4d+v/+XTAH7YmEHuyAX3i8eGbuSpKB6krup2xjw26xvrdsdOIgpzDkFl
 gh4kcdCYMVqv2yvODwBWgZr4/dixi0zRIlAqktaL1V3Uc7rpOzhKHXGz+
 CYWaCIknkjBvXW4/RLvI4g0x11bMIMRNp5kMrQwg4hgGO9wI61JwdeG8U
 qk/X3ipeTu6CNYEjDOHzBeH04pRfrBEuu5O/YTqicH7Hlos4mR/pf2B0K A==;
X-CSE-ConnectionGUID: vIfswfu2R8aEFm+ynHYBHA==
X-CSE-MsgGUID: DF6wBDFyQMKabjFEDHRzYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297796"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297796"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:09 -0700
X-CSE-ConnectionGUID: Gkh4msI1RZKubxbGzp9C6g==
X-CSE-MsgGUID: szD9cpUIRuGWY3XBKr3OSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272475"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Date: Tue, 21 May 2024 11:46:32 +0300
Message-Id: <20240521084648.1987837-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

We need pr_dpcd contents for early transport validity check on eDP Panel
Replay and in debugfs interface to dump out panel early transport
capability.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 19 ++++++-------------
 2 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6..6fbfe8a18f45 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1743,6 +1743,7 @@ struct intel_dp {
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
+	u8 pr_dpcd;
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d18baeb971bb..ba92f71b82d9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -559,20 +559,10 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 pr_dpcd = 0;
-
-	intel_dp->psr.sink_panel_replay_support = false;
-	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP, &pr_dpcd);
-
-	if (!(pr_dpcd & DP_PANEL_REPLAY_SUPPORT)) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel replay is not supported by panel\n");
-		return;
-	}
 
 	intel_dp->psr.sink_panel_replay_support = true;
 
-	if (pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
 	drm_dbg_kms(&i915->drm,
@@ -630,10 +620,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
-	_panel_replay_init_dpcd(intel_dp);
-
 	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
 			 sizeof(intel_dp->psr_dpcd));
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
+			  &intel_dp->pr_dpcd);
+
+	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SUPPORT)
+		_panel_replay_init_dpcd(intel_dp);
 
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
-- 
2.34.1

