Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2B98AA86
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB1D10E55A;
	Mon, 30 Sep 2024 17:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUpIbeWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBE910E55A;
 Mon, 30 Sep 2024 17:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715865; x=1759251865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8QXTs0RD5FTwqTgbSsRFRXU0T/yYlTEY/mEOe6IVB50=;
 b=hUpIbeWD68+MDQJhRR3DOH415PDg9cF+f5YUsV2ZEvZRDVQpRfXJ8liD
 7/54qGC/frVzcwbqyjEvrCiZrSqqdzO70Ms3hNeq5pyhp1FYPZlviUTP/
 X7px+VYgCNOJ0nd4PZl3XTX4q99/R3FhH8LrwcsrHYsv/kQhetAd0V9EA
 JjEdov1Pb5KhzwtZpvcbr+g8agl/dFrJ7y+2iDspZtViwrNYETA2h7rwB
 4ynvSC+XkSbXCdH2lvTXevHann5rxB+/krmMYqE9RTnZrlMga0b58Gg8+
 cs+Hn9pcxpH4W9yQmzEgfc3W969Rat5Fx05BbKSmWEsSiPrkUC8E0FBNi A==;
X-CSE-ConnectionGUID: nqszJ6+DQmaaxRWciAgJoQ==
X-CSE-MsgGUID: eiKll/u8QfG5s5evPJrXQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44276944"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44276944"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:25 -0700
X-CSE-ConnectionGUID: Atg+kQrOSdyFCxQ5UCrVvw==
X-CSE-MsgGUID: cdLZWLvASa+Z87BDQV9zqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490913"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 02/13] drm/i915: Prepare clear color before
 wait_for_dependencies()
Date: Mon, 30 Sep 2024 20:04:04 +0300
Message-ID: <20240930170415.23841-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Read out the clear color as soon as fences and the transient
data flush have finished. There is no need to wait for
all the display specific operations that might still be
going on. This could parallelize things a bit more effectively.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f7667931f9d9..283e0214c4a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7385,6 +7385,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_td_flush(dev_priv);
 
+	intel_atomic_prepare_plane_clear_colors(state);
+
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 	intel_atomic_global_state_wait_for_dependencies(state);
@@ -7418,8 +7420,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
 
-	intel_atomic_prepare_plane_clear_colors(state);
-
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
-- 
2.45.2

