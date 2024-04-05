Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC10B899BF3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433AB113B45;
	Fri,  5 Apr 2024 11:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nd200ioX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F393113B45
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317003; x=1743853003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYFSCakAwHZPUULUyx31afwM5axrWyaujTkRBG8HHUQ=;
 b=nd200ioXQX3+I90WOO6jOuB7+fbN1Ta/fIAHNRfHztfPkE9V+D2fMW7I
 /EW2iqmB2yPSTKnPrvgikCOrCGVdF+P1Bhyd8t9AXvfPgK8MIE4GbuMLJ
 kIOkm0DWbMrGwTzi8aO4chlT7PQPNR/NYh9sYpKa754tg5l9B5pM0sSx9
 cpwq2cX3YuprpujyvfEZLU93/KGnFd3CeeedZspTUkXScnW+RvUEa0jgm
 c5TJZfi8xoQPARABBJecceIJSeNMh3CRg6aVyzf3IROEQ1fZXrVocb1fw
 bZwqgUUqeZmUUTlAmxHuSru9W8cVYVRmKXis7qqvTgeuqUg2DRIxxMhRb Q==;
X-CSE-ConnectionGUID: jqrRNcipRDCIr/r+OlTmjw==
X-CSE-MsgGUID: t6ZP1X/oQwWjQojws3ucvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116535"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116535"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:43 -0700
X-CSE-ConnectionGUID: MQ2cyu+qTmCZRZEgfSA9QQ==
X-CSE-MsgGUID: uwI08rrkSvqEBqqbkvTRRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858745"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/8] drm/i915/psr: Set intel_crtc_state->has_psr on panel
 replay as well
Date: Fri,  5 Apr 2024 14:35:56 +0300
Message-Id: <20240405113602.992714-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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

