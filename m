Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 804798D8330
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E764C10E396;
	Mon,  3 Jun 2024 13:01:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUv7wwfO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3455010E396
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419676; x=1748955676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Sncqy8d9WAB8uDkBso9hrc0aV1DPnvlwoO1c44gUe8=;
 b=lUv7wwfO9Nrp5br/8vX2hVp2XKpXYKSz8/ZdcLVj5sYOH9o7QdLr/VPb
 ld414tqcS9UemalFDGlv+bo5gXlWlyjxqqteCYLPms73QyDopDdIjSxO7
 YAkStXIYekAb5RhlgUYsNbqctkjqs+nFuRwsDIqi9BcBE89zfheW8Qz8o
 uDBjzXRBy1shOaAzvNuapsM4t8NWwtQWR1zUFRNxrrQbTUWudanWohYiz
 7mQanU0zGdajX3j52MvJ/zgDmaWuIYdUwLAysEs+EfDnfkOeiLHGPwcQL
 5KzqYyIc72s6rEpSndybFAYfLJdPv9ihOvsZZ2TwobgM0cTyKUDGaUfnI A==;
X-CSE-ConnectionGUID: iJAU/bZkRM6hc14wUFw1qw==
X-CSE-MsgGUID: YT7L6udTSMe3U72ito+xOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774483"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774483"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:16 -0700
X-CSE-ConnectionGUID: lV3O3HagT/6VTgc0jmC8jg==
X-CSE-MsgGUID: bN3defLxRc6fYUpCbKW0+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291881"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 11/19] drm/i915/psr: Check panel Early Transport capability
 for eDP PR
Date: Mon,  3 Jun 2024 16:00:35 +0300
Message-Id: <20240603130043.2615716-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
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
 drivers/gpu/drm/i915/display/intel_psr.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1c8ee5a4a9b8..25c0b891daec 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -551,11 +551,18 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (intel_dp_is_edp(intel_dp) &&
-	    (!intel_alpm_aux_less_wake_supported(intel_dp))) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
-		return;
+	if (intel_dp_is_edp(intel_dp)) {
+		if (!intel_alpm_aux_less_wake_supported(intel_dp)) {
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

