Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92EC8CF9F0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0631110EDC6;
	Mon, 27 May 2024 07:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pi50Qwx+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBE810E6ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794579; x=1748330579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTNx8tiab/AOUZzDhwIRrm/3Y4KeoY75g6fyDVkFq2c=;
 b=Pi50Qwx+outq5ijtCwTxqOrO6dCLCk4egnj/br0IZix0EEn5IF72BB7m
 bd7iFOAwv3po/csO3A06KkgnlJYsvURhSmVan36YGOtEqEV1mvvpl4Q++
 6i77KNnpIC1C54+Bk6V5aAfvZv0jgz+kHNHgm7NaoZNhj7cg5dYZ4XSSc
 +j0nTzScno/HMIcv+MIB3D+zHidBqUzWuEGdiugcIJHQKZmvv1r7/hMGK
 xXfpIqbyVKpsMdR8Nklr4zWjOJ8vza7CcuByFCjtHLiAw7S6Ey2xdjyhT
 yJb41bhq2aoKMLLQ7z0x0Ws/kAt0+e7jdeUueAKNuu4rFIuDvFDJpJ8l0 Q==;
X-CSE-ConnectionGUID: xi/8cPqiTTaCGbo6a6icIQ==
X-CSE-MsgGUID: MXYc5FakRaKY+Yb4Zkcf6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930461"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930461"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:58 -0700
X-CSE-ConnectionGUID: jecyYiRRR4i8BLiFHrzIBg==
X-CSE-MsgGUID: ZLML2h4TSoyItoV1oyt7tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753441"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:22:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 12/20] drm/i915/psr: Check panel Early Transport capability
 for eDP PR
Date: Mon, 27 May 2024 10:22:12 +0300
Message-Id: <20240527072220.3294769-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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
index 16e06312a8be..a96e03cd68ea 100644
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

