Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7597CAA6D36
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E337D10E8D1;
	Fri,  2 May 2025 08:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKjxcaps";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC0A10E8CF;
 Fri,  2 May 2025 08:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176372; x=1777712372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9cSThyB/tXqzMmOS8MRZyrYVSQNySbZOzXHofSS6WQ=;
 b=jKjxcaps+XMs7I3vZUzr6Dph7IsgCSgrPntVNgJDDr4i5yskKqu+3GYa
 wHsKv6lbYc+EZq2EyiHk/T2c3h439p+TUzs32dsd0u2ZbY5McsGbky2rc
 tQvU46afHaWjvp7lAPcF7gSAqAxhsYRt2DDZEzpxEaE0IpIcbSMZsUc4a
 KRKNaQzx32aH9DAnbjNBDg6ZsUp5oG8tdWYz0gu4TyUPozFg8egl4MS4y
 G7vVEeRybdhU9u/IFxIeeldi/jex9tAqet/K1CxsDVKGGcfMB9gREIOXQ
 OGUkfjXzxb6B3dLypovVoZS+68Htq79MgngRCL3n69/tRNnBI3IF5m3NI Q==;
X-CSE-ConnectionGUID: XbnZlCXBTkmcS+uLZPapjw==
X-CSE-MsgGUID: nRYdy/B6SxGHrCTL7WOmDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943196"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943196"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:32 -0700
X-CSE-ConnectionGUID: Xyq255gCTf6fKdKKLQzoWQ==
X-CSE-MsgGUID: 9H9FH5oyRRuy2brppXf/hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346729"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 06/11] drm/i915/alpm: Add new interface to check if AUXLess
 ALPM is used
Date: Fri,  2 May 2025 11:58:57 +0300
Message-ID: <20250502085902.154740-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
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

we need to know if AUXLess ALPM is used when preparing for link
training. Add new interface for this and use it in existing code where
possible.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 18 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5e5bc91ca7b76..4a8d4b34fa89e 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -26,6 +26,21 @@ bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
 
+/**
+ * intel_alpm_is_alpm_aux_less - Check if AUXLess ALPM is used
+ * @intel_dp: Intel DP
+ * @crtc_state: CRTC status
+ *
+ * Check if AUXLess ALPM is used by LOBF (Link Off Between Frames) or by PSR
+ * (Panel Self Refresh)
+ */
+bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state)
+{
+	return intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) ||
+		(crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp));
+}
+
 void intel_alpm_init(struct intel_dp *intel_dp)
 {
 	u8 dpcd;
@@ -341,8 +356,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	 * Panel Replay on eDP is always using ALPM aux less. I.e. no need to
 	 * check panel support at this point.
 	 */
-	if ((crtc_state->has_panel_replay && intel_dp_is_edp(intel_dp)) ||
-	    (crtc_state->has_lobf && intel_alpm_aux_less_wake_supported(intel_dp))) {
+	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state)) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index d7126d65b60fb..83bbe0b7ff100 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -30,6 +30,8 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
 bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
+bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
+				 const struct intel_crtc_state *crtc_state);
 void intel_alpm_disable(struct intel_dp *intel_dp);
 bool intel_alpm_get_error(struct intel_dp *intel_dp);
 #endif
-- 
2.43.0

