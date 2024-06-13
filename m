Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8779068D0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000D610E9DD;
	Thu, 13 Jun 2024 09:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwTOYEnl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C73F10E9D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271181; x=1749807181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kr+c8gNFIwXMBAYuHdaCaerNdc5kBiV99Wn7bXZL3Cg=;
 b=bwTOYEnllajj215LUtZQbDUP52WhjduU7VZa0IwbAs4pwXoSUc+jl3Oi
 3RH77Ib2lM8eYw2K3XA+2++Cu2UNpTB1WPAa23FkDLukjl5jw++mQu+2R
 D9VPcwyjxQLKjBC0OVCm2zilcncKT9y3NO0LDtCzOjJIEINxk+uL/e5FL
 C4ZgEvrTwxzl6rzgiC7cswsyV90NgFbht11mn9ZXKkjcYic57INOiQK/+
 V8ya7W1mvz5KWiL456Gs9rdQn5dfGTvzVQYDnWpTfvThw8RpRSaVcsH5g
 4lpPDKxcmjm8ofMn0p45RU3ASvFlK9ir5m7OZl1hBycF9aUpeIB+Ve/U/ g==;
X-CSE-ConnectionGUID: z2gSr6VaT/Sgv661YLdP3w==
X-CSE-MsgGUID: QytRA5m+Q1CK46IwvoJ4/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802488"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802488"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:01 -0700
X-CSE-ConnectionGUID: 6GYhsb+3SSWRi6uw017Zkg==
X-CSE-MsgGUID: Ru4rLhhlQB2MmMfbAAfI2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523379"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 06/20] drm/i915/psr: Disable PSR2 SU Region Early Transport
 if psr_enable is set
Date: Thu, 13 Jun 2024 12:32:25 +0300
Message-Id: <20240613093239.1293629-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

Currently PSR2 SU Region Early Transport is enabled by default on Lunarlake
if panel supports it despite psr_enable value. Prevent SU Region Early
Transport if psr_enable is set to than -1 which is the default.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0df557676e08..27cf330d13e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -235,6 +235,16 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool psr2_su_region_et_global_enabled(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (i915->display.params.enable_psr != -1)
+		return false;
+
+	return true;
+}
+
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
@@ -683,7 +693,8 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 
 	return panel_replay ?
 		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
-		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
+		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
+		psr2_su_region_et_global_enabled(intel_dp);
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
-- 
2.34.1

