Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85596EB5E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B850010E816;
	Fri,  6 Sep 2024 07:00:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R3bBQlW9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B926710E816
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725606054; x=1757142054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IDcq4wlscYdL9z9vMeXIpRX5v5qRtnAIAJvXRmHdOBI=;
 b=R3bBQlW9WGYpLb87oshrQNlcXBsKYb4T/9zmJ+Vk5qxprMM2eWRUjx0M
 iEAAlElwZmH7EJXJIfkjPeuB+HkKIlvDbdHr+pS0r+rIBzDLsOJ63b3af
 KptsRBxK2qIShovugTQi2PSmbMjdgx2BenFMBu6WdPBWCoVgFUjOksrPK
 jgp47cmjVYzYckAfBtLiOVWXoGeUex5awEHAYRc3Vx89k5YMtibYY6QIs
 DKhSLnQjsaTQr8QA8mCe7n3cCQa9aAHPxeBOaMLp8YiONhsrFiLfaO8Q7
 JMC+Y7tlrfpqGnN3gCGT2oJ8BISnGLSyDQxG5/dFBQJKwwFWBP5hRC4R7 g==;
X-CSE-ConnectionGUID: Y6ZvMgGlT8uCzuW1cKmMFw==
X-CSE-MsgGUID: dmgpiUGYRayUtVFlnzfAtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28103043"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="28103043"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:54 -0700
X-CSE-ConnectionGUID: 1Szyd7MSSfmK2dafy905zA==
X-CSE-MsgGUID: FFdcppSoTIKSFt2lTp6kdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70292523"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.244.116])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/4] drm/i915/psr: Do not wait for PSR being idle on on
 Panel Replay
Date: Fri,  6 Sep 2024 10:00:33 +0300
Message-Id: <20240906070033.289015-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240906070033.289015-1-jouni.hogander@intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
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

We do not have ALPM on DP Panel Replay. Due to this SRD_STATUS[SRD State]
doesn't change from SRDENT_ON after Panel Replay is enabled until it gets
disabled.

On eDP Panel Replay DEEP_SLEEP is not reached.
_psr2_ready_for_pipe_update_locked is waiting DEEP_SLEEP bit getting reset.

Take these into account in Panel Replay code by not waiting PSR getting
idle after enabling VBI.

Fixes: 29fb595d4875 ("drm/i915/psr: Panel replay uses SRD_STATUS to track it's status")
Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 581c409ce7309..1a4ef231a53ca 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2786,13 +2786,6 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
-static int _panel_replay_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
-{
-	return intel_dp_is_edp(intel_dp) ?
-		_psr2_ready_for_pipe_update_locked(intel_dp) :
-		_psr1_ready_for_pipe_update_locked(intel_dp);
-}
-
 /**
  * intel_psr_wait_for_idle_locked - wait for PSR be ready for a pipe update
  * @new_crtc_state: new CRTC state
@@ -2815,12 +2808,10 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 
 		lockdep_assert_held(&intel_dp->psr.lock);
 
-		if (!intel_dp->psr.enabled)
+		if (!intel_dp->psr.enabled || intel_dp->psr.panel_replay_enabled)
 			continue;
 
-		if (intel_dp->psr.panel_replay_enabled)
-			ret = _panel_replay_ready_for_pipe_update_locked(intel_dp);
-		else if (intel_dp->psr.sel_update_enabled)
+		if (intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
-- 
2.34.1

