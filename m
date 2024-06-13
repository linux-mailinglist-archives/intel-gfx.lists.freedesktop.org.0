Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF369068D9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682CB10E9E6;
	Thu, 13 Jun 2024 09:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pm1BingU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FAB10E9E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271201; x=1749807201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mT5gcl7Y9PDlTjBu3Q7RsYVzqrqhIw5N4u+XQaLWhcU=;
 b=Pm1BingU5FwEqLOIk3Tp7ChbQEG5BBYv5X3nxdDqbZf+YuKcIs3weRBk
 NhnmHfRaq5sFKGVNo962BihzZ8ujzNyFnOXAtZ01WhKNL+EjVuJLgff1T
 xBd0OHUpIEt0BDCN0zae2CPJkEFSbnwEpCBWlwZOLpAe7yVUUZV4Biy5r
 +EVs+2XufSVg/uWfd+h6S2dnEK91cXcOqo8zywitThiK/7jGraMCWdNG7
 bRCLfGr2P6HA9RTe6iONnL2eG01xkYsnNYxB4ttNGDJSqc30Z3Jmuqg9V
 Ys3P3qlNdqktaIKJLhSkVyYfqEg4cQWgdDKqxAu8ev3+HstApsyR36UZf Q==;
X-CSE-ConnectionGUID: q6/Z3mq7SiOZrdoQ0lHbrg==
X-CSE-MsgGUID: UFnbSvPVRlK8SFaaTRmCcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802525"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802525"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:21 -0700
X-CSE-ConnectionGUID: CbbKkvkeSe2Q/GahgtZ7wg==
X-CSE-MsgGUID: jsPlurqJQuKYS6O5SualVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523481"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:20 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 18/20] drm/i915/psr: Perform scanline indication check for
 Panel Replay as well
Date: Thu, 13 Jun 2024 12:32:37 +0300
Message-Id: <20240613093239.1293629-19-jouni.hogander@intel.com>
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

Scanline indication needs to be checked and configure for both PSR2 and
Panel Replay Selective Update. Move this check to
intel_sel_update_config_valid.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 581284b69ef4..73d71c3194d3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1426,12 +1426,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
 	if (!alpm_config_valid(intel_dp, crtc_state, false))
 		return false;
 
@@ -1473,6 +1467,12 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
+	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Selective update not enabled, SDP indication do not fit in hblank\n");
+		goto unsupported;
+	}
+
 	if (crtc_state->has_panel_replay && (DISPLAY_VER(dev_priv) < 14 ||
 					     !intel_dp->psr.sink_panel_replay_su_support))
 		goto unsupported;
-- 
2.34.1

