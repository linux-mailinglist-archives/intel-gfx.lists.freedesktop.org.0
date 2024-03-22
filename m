Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED01886B69
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 12:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D29610F6B6;
	Fri, 22 Mar 2024 11:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NpUTG7mP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D8C10F657
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 11:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711107655; x=1742643655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fIwXMhZmHKfP+KX8LwCOj1r2FugRCJOYZFUZxZrNk5Y=;
 b=NpUTG7mPBtVZTpVU9mNcmLcsjYjrXgwoeETSRKQkIkqvwRavBLpZmJYX
 4/Hi2fN/TA62DlQJ+MP5wzIdebMBwv/1h7qU2Dpik8uGQn5jZNaSeQUCp
 ZYamsqncS4mOXCzT64+Z1cPI731McYu+J2Og6IGqVPPaarkT5M0Msw5Eq
 edCb1YeRYBFle3z9Yaxy1DtE1+PX9DYCCX5j8JpF9kkWCRdwJiFiRegHe
 Wrtq43rvp9maK+ptvvRLjoJona+OZscu3aFK9ukgB36Ne3E5CkTAC98xL
 l+zbjufOpzeb3tCZHAQZL5LFgueplR2JfO7wPAUUGHBvIg6OG09VSwkOS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9939220"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9939220"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 04:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14906490"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa009.fm.intel.com with ESMTP; 22 Mar 2024 04:40:53 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 4/5] drm/i915: Loop over all active pipes in
 intel_mbus_dbox_update
Date: Fri, 22 Mar 2024 13:40:45 +0200
Message-Id: <20240322114046.24930-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
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

We need to loop through all active pipes, not just the ones, that
are in current state, because disabling and enabling even a particular
pipe affects credits in another one.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2b947870527fc..7eb78e0c8c8e3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3696,10 +3696,8 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
-	const struct intel_crtc_state *new_crtc_state;
 	const struct intel_crtc *crtc;
 	u32 val = 0;
-	int i;
 
 	if (DISPLAY_VER(i915) < 11)
 		return;
@@ -3743,12 +3741,9 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
 		u32 pipe_val = val;
 
-		if (!new_crtc_state->hw.active)
-			continue;
-
 		if (DISPLAY_VER(i915) >= 14) {
 			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
 							      new_dbuf_state->active_pipes))
-- 
2.37.3

