Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82ED996B81B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 12:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192C510E716;
	Wed,  4 Sep 2024 10:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C8WykYNp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7334810E716
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 10:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725445134; x=1756981134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7h/der6GCNBEDWfDcwIANYb8QdW6ZtSTH4vSqVFaq2E=;
 b=C8WykYNpQu9CRvRsnKqFvJKUK6CUhy33hE9LMKm9Skovn4GWQo7TZeoh
 7cNpk+gNEeR4bAaSCanGFkOwSqsgC8nopwRzmSYhVmAO6lU8FStEEucUX
 +xxzOQMG1/CpGzQUV9/F8FxgYtAm8Larb6TcGUJVp3oBWJYHG4b8Zc4Vn
 zNArRMcr+fccvYYeaU+M6JsM82bvCi6/lW3SfmtbKBKFQLJoG0FlxsK+a
 T4h7Le/LXhKbhAwNEXzpQqBABYeOdsJJ7os+js6Rqa6joPqgT19DLi+H+
 OU8rPXS5Lu3UWd39xK2kNn5VQx1Z2SPwm+EvUE0wLTiIO/tfaWIh34RbF g==;
X-CSE-ConnectionGUID: 8IWi3LRrTL2HmiLZD5j4lA==
X-CSE-MsgGUID: rBwxxJAVSnKV8RBnfU2xXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27982987"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27982987"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:54 -0700
X-CSE-ConnectionGUID: vNtHTLJYSCuE1k5XgrVwuA==
X-CSE-MsgGUID: SC71cB4tTQe33Bt4tsTuuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="69857818"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.79])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 03:18:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/3] drm/i915/psr: Do not wait for PSR being idle on on Panel
 Replay
Date: Wed,  4 Sep 2024 13:18:34 +0300
Message-Id: <20240904101834.2415385-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904101834.2415385-1-jouni.hogander@intel.com>
References: <20240904101834.2415385-1-jouni.hogander@intel.com>
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
index 26af8bea05d32..5f669654ca427 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2752,13 +2752,6 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
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
@@ -2781,12 +2774,10 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 
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

