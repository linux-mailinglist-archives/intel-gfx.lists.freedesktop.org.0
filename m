Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2E2871889
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CB5112956;
	Tue,  5 Mar 2024 08:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OREW7a44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C6B112956
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628463; x=1741164463;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B5l09z5H05ckx7dDOS5rS5uqDwtJ9KO4sFXHzCFu5OE=;
 b=OREW7a44SkcilTmsFYK6WxbRuugLrceTqw6UCd5MBnm2vjucwmCueCxI
 BfSo6KfeN7Q+XUeOIvrnWe7Apr+hLEuv2r8NAgFmicPxOpeSqqQkoVxWB
 5ZuIPrJ2An6OpIki1MaQPYozHnd81ruZDGBk/Xt9Ycj6bxShfe5irBote
 bGO4UiYiz7elpvqpM6925loluyhTsC5mcogE3YAkoXAsucEij8UdH441X
 zqtT49Q882XgjD2nhXN+nPidDI3r41amv5FsgFwz5AawnGRHBRtPHTQ02
 75Wn4l5hiDifin+3xfal/6fGD5eQR9R7ZwvKkMxMcotT9SKm+/7nqtcHv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7112474"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7112474"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773665"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773665"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 00:47:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 10:47:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Simplify intel_old_crtc_state_disables()
 calling convention
Date: Tue,  5 Mar 2024 10:47:30 +0200
Message-ID: <20240305084730.19182-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
References: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Stop passing in so much redundant stuff to
intel_old_crtc_state_disables(). Top level atomic state + crtc
is all we need.

And while at it constify the states to make it clear they should
not be mutated.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d1902976084e..86f4229120c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6746,11 +6746,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
-					  struct intel_crtc_state *old_crtc_state,
-					  struct intel_crtc_state *new_crtc_state,
 					  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
@@ -6769,7 +6769,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 disable_pipes = 0;
 	int i;
@@ -6799,8 +6799,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	}
 
 	/* Only disable port sync and MST slaves */
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
@@ -6814,20 +6813,17 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
 			continue;
 
-		intel_old_crtc_state_disables(state, old_crtc_state,
-					      new_crtc_state, crtc);
+		intel_old_crtc_state_disables(state, crtc);
 
 		disable_pipes &= ~BIT(crtc->pipe);
 	}
 
 	/* Disable everything else left on */
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
-		intel_old_crtc_state_disables(state, old_crtc_state,
-					      new_crtc_state, crtc);
+		intel_old_crtc_state_disables(state, crtc);
 
 		disable_pipes &= ~BIT(crtc->pipe);
 	}
-- 
2.43.0

