Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22BE83276E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B32B10E9B4;
	Fri, 19 Jan 2024 10:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B77E10E9BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659052; x=1737195052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UmDhAJiFbAoX+ESwsbxaLgk0VzrSe8UWzFPwQedx9vk=;
 b=OiLWccmuck3DrxMB0B9zmKBUK8TSmk+K9DiMDmxB86lOibAS5gfPHXXK
 4OeF9dAPrkpQZ3w3B1gqkuRfQ4fQUKb7A/SkSB/eitJuiIqYERYk1FCGu
 9y7omNJasRJsVMu3mYAdTk2r8qdqdUMFP5UXHfxa4ZDrS9TI3YghSAZ+c
 dFGtZTZLhqja4oJO0GQLr9o1O9RrdZfHz25zdJsSYTsOgm2x8NizJ+E6h
 1gcgBoc+Qr++/eF396wuMUTwEi3U2UvsKEk+sZBUgaGv21tXuhBj1zbxK
 v+DTW9Z0zaOa2AkLDVLm/Tus5ULlRi/YXTqWAeyTRaZymGEcgIZkuGHge Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070726"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070726"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563197"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:50 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 02/21] drm/i915/psr: Set intel_crtc_state->has_psr on panel
 replay as well
Date: Fri, 19 Jan 2024 12:10:05 +0200
Message-Id: <20240119101024.1060812-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Current code is setting only intel_crtc_state->has_panel_replay in panel
replay case. There are lots of stuff behind intel_crtc_state->has_psr that
is needed for panel replay as well. Instead of converting each check to
has_psr || has_panel_replay set has_psr in case of panel replay as
well. Code can then differentiate between psr and panel replay by using
intel_crtc_state->has_panel_replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b9d2f6ceb568..d69fefc2a94d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1409,10 +1409,11 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	if (CAN_PANEL_REPLAY(intel_dp))
 		crtc_state->has_panel_replay = true;
-	else
-		crtc_state->has_psr = _psr_compute_config(intel_dp, crtc_state);
 
-	if (!(crtc_state->has_panel_replay || crtc_state->has_psr))
+	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
+		_psr_compute_config(intel_dp, crtc_state);
+
+	if (!crtc_state->has_psr)
 		return;
 
 	crtc_state->has_psr2 = intel_psr2_config_valid(intel_dp, crtc_state);
@@ -1439,7 +1440,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		goto unlock;
 
 	if (intel_dp->psr.panel_replay_enabled) {
-		pipe_config->has_panel_replay = true;
+		pipe_config->has_psr = pipe_config->has_panel_replay = true;
 	} else {
 		/*
 		 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
@@ -2352,7 +2353,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!(crtc_state->has_psr || crtc_state->has_panel_replay))
+	if (!crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-- 
2.34.1

