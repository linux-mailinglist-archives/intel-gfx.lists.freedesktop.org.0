Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE55894F0A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AB010FBCB;
	Tue,  2 Apr 2024 09:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m4ek4zJ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71B910FBCB
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051428; x=1743587428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYFSCakAwHZPUULUyx31afwM5axrWyaujTkRBG8HHUQ=;
 b=m4ek4zJ7c2CzimSKCeeSSsKmBXZsF4F3n8mpXldcyfbumGfvtNDO5sPU
 v2VRsJNJbKZLOzhq6nCR5xSJco/uP1Us5biPFu4WJym93i20YxeWE+cBM
 NfO8EYwKgSRGRMa6D27kV7yAp0e+qqfuMPzlPjidO7OaCw2mUNL0owpQP
 yELAn4ia6FgNctcJC2Hrq8cQW1fFLCTHdw1u551CxXLq54agL0/szKgl4
 IHLn0e8YlnqazxZCFQldrxG3x0EZ7ugxKLxN7HU9nhnKQ7jjg6iJ2Xy1C
 /XV/IXl3ILOyA87tELIe4EguSnzHzQXkpTDA6tP02YAeE98TmkBqMeI6c A==;
X-CSE-ConnectionGUID: ChBPlDZwTqi3f2OyOWlAdQ==
X-CSE-MsgGUID: dAMTk8EpTjyOO8Uu3796nA==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422617"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422617"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693263"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 02/19] drm/i915/psr: Set intel_crtc_state->has_psr on panel
 replay as well
Date: Tue,  2 Apr 2024 12:49:54 +0300
Message-Id: <20240402095011.200558-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 45d13e042ade..10a7795cdb6f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1602,10 +1602,11 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
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
@@ -1632,7 +1633,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		goto unlock;
 
 	if (intel_dp->psr.panel_replay_enabled) {
-		pipe_config->has_panel_replay = true;
+		pipe_config->has_psr = pipe_config->has_panel_replay = true;
 	} else {
 		/*
 		 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
@@ -2651,7 +2652,7 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!(crtc_state->has_psr || crtc_state->has_panel_replay))
+	if (!crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-- 
2.34.1

