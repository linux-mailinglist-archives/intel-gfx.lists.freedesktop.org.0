Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A7F86E363
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377A910F083;
	Fri,  1 Mar 2024 14:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MIVr/hUI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBD010F083
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303786; x=1740839786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hM+lfxwoV41ORPi5O68XfAC5eAaoBZf/n7BpNaNOECw=;
 b=MIVr/hUIHWHBbBn6iwLf1UagwE5E7qqPCjWRb1o54uwdilryAIj01Hjj
 YGDiLae1nMj5p9NjMFeTFQv/J2oCIfmajihVg8+eO2E8ydlPUkxxhPSKi
 OazVGDlVIaqkHrq4g1LipNjA5U4yl856McxU6IJDVkG0PET2A0r0u+VQD
 xE8yOmY9PlVzZZaM7r5SlHmSY+DRyI9cicoIZY5kejrYy/R6ChRG7824d
 fs4FH7CwpF6CWu2iXaPZ+ZmCfUfdpjFECRWk6gxn49tm5T5MS2k3R5Wxj
 g87ZjqQe1PmGYSjtMyA13g5x4TzSkdm2K71tUvSAbc0tetzUyA5hW2qVj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275844"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275844"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771994"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771994"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 7/8] drm/i915: Simplify intel_old_crtc_state_disables()
 calling convention
Date: Fri,  1 Mar 2024 16:35:59 +0200
Message-ID: <20240301143600.1334-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01d7e91cb1bc..1df3923cc30d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6753,11 +6753,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
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
@@ -6776,7 +6776,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 disable_pipes = 0;
 	int i;
@@ -6806,8 +6806,7 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	}
 
 	/* Only disable port sync and MST slaves */
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
 		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
@@ -6821,20 +6820,17 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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

