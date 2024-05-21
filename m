Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF1F8CAA4C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE67A10E761;
	Tue, 21 May 2024 08:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AsD/fSLB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFCB10E777
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281255; x=1747817255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2YnWUfOyBX0LHdnAll4dD4dw6qB78kkBtdWcTx3kAV4=;
 b=AsD/fSLBjfvp1gnbxpLAkpawzm1F05jjntwWvxgR/rHZNqZS/Zv9YzSh
 A2qBtMyiniBUj7U5EQLNA5eUFiapxTz+5c5s7dMtMKAdg9jKxrndNx8To
 aoc7DZeY981z4NLfxmvXHYfO3k0WyxxZ+7N/tq5CGekLEXcguTmGmPBr5
 Rjp0Cws3+j21UNmxjfuJx+JD5e9hGEslH9ZmJWTQNQwa/fh8aFRVJ7h41
 97IOHI7+ONrHfifh3WuD7EZUwJxNJv66Z0n6hegkShp/PSY+ngYcRZNwi
 yAOTxvIsHkMRBZYkjUzfMV9E7M4Z2cqzAMNCo+0OBVqIwyeiZvNAX1sMe g==;
X-CSE-ConnectionGUID: 77nJsUe+RPaIQYCPDyRpzQ==
X-CSE-MsgGUID: n72d3auFTTqekfoO90ybcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297839"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297839"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:30 -0700
X-CSE-ConnectionGUID: sD7Ki3GeQJesK29foQP/Cw==
X-CSE-MsgGUID: E1Do+r/5TLCahj/XDCWvuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272547"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:28 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 12/17] drm/i915/psr: Check panel Early Transport capability
 for eDP PR
Date: Tue, 21 May 2024 11:46:43 +0300
Message-Id: <20240521084648.1987837-13-jouni.hogander@intel.com>
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

Our HW doesn't support panel replay without Early Transport on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 836a9e3b5921..461c3c576ae4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -550,12 +550,19 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, u8 alpm_caps)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (intel_dp_is_edp(intel_dp) &&
-	    (!(alpm_caps & DP_ALPM_CAP) ||
-	     !(alpm_caps & DP_ALPM_AUX_LESS_CAP))) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
-		return;
+	if (intel_dp_is_edp(intel_dp)) {
+		if (!(alpm_caps & DP_ALPM_CAP) ||
+		    !(alpm_caps & DP_ALPM_AUX_LESS_CAP)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+			return;
+		}
+
+		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
+			return;
+		}
 	}
 
 	intel_dp->psr.sink_panel_replay_support = true;
-- 
2.34.1

