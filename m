Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0AFB00CE4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6854310E235;
	Thu, 10 Jul 2025 20:17:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PBV7wGm9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435E610E235;
 Thu, 10 Jul 2025 20:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178655; x=1783714655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Yut5B+qPEKc7d23j1SFQjy9I+eu2w6Vi+XLgPpK030=;
 b=PBV7wGm9U60mVn28tGgM8LWC56qbxvPoHbB1M2ckJ6G/PRBQbf5ckbco
 /ppu4Kxk2RuVP2ARIvEtFVILLCcHXJsqYoyYvLBTAj4C+vzh2uhR4Q0yU
 AdrwafK4L5u0J4pppZWv2q4EsbJUWd03VJEtjJLLbag5WcbywerlFVVe9
 0bb6GVukkmJ8H/3cvzEWKYpqpmtNwLOSQj1QQHCK4f/BRu8sy33LrxkV9
 CQYRKCB/992HWgZC9rdJKFg+x0OdMhjPdQkq3SOf1TKVc/adbHFoq94TJ
 efhShEK1EQYM3g5kXcJQdRV8UprN8mXs0O7ArTbGyFybrk01UNuEo2tUr A==;
X-CSE-ConnectionGUID: av85f91pRLu6n/ktV3CQYA==
X-CSE-MsgGUID: ZE9Zc9mATgiPdjK0k6gn8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444572"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444572"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:35 -0700
X-CSE-ConnectionGUID: RBccDrKwShyxdsTWyGg+fQ==
X-CSE-MsgGUID: sAaHQc77RPGbSQSHSYVxNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877579"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 4/7] drm/i915/dp: Have intel_dp_get_adjust_train() tell us if
 anything changed
Date: Thu, 10 Jul 2025 23:17:15 +0300
Message-ID: <20250710201718.25310-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
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

In order to implement the POST_LT_ADJ_REQ sequence we need to
know whether the sink actually requested a changed to the
vswing/pre-emph values.

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c  | 18 +++++++++++++-----
 .../drm/i915/display/intel_dp_link_training.h  |  2 +-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 322a26c1910c..57b9dc52a98d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -478,12 +478,13 @@ static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
 	_TRAIN_REQ_TX_FFE_ARGS(link_status, 2), \
 	_TRAIN_REQ_TX_FFE_ARGS(link_status, 3)
 
-void
+bool
 intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state,
 			  enum drm_dp_phy dp_phy,
 			  const u8 link_status[DP_LINK_STATUS_SIZE])
 {
+	bool changed = false;
 	int lane;
 
 	if (intel_dp_is_uhbr(crtc_state)) {
@@ -502,10 +503,17 @@ intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 		       TRAIN_REQ_PREEMPH_ARGS(link_status));
 	}
 
-	for (lane = 0; lane < 4; lane++)
-		intel_dp->train_set[lane] =
-			intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
-						       dp_phy, link_status, lane);
+	for (lane = 0; lane < 4; lane++) {
+		u8 new = intel_dp_get_lane_adjust_train(intel_dp, crtc_state,
+							dp_phy, link_status, lane);
+		if (intel_dp->train_set[lane] == new)
+			continue;
+
+		intel_dp->train_set[lane] = new;
+		changed = true;
+	}
+
+	return changed;
 }
 
 static int intel_dp_training_pattern_set_reg(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 46614124569f..1ba22ed6db08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -23,7 +23,7 @@ void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 				   int link_bw, int rate_select, int lane_count,
 				   bool enhanced_framing);
 
-void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
+bool intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state,
 			       enum drm_dp_phy dp_phy,
 			       const u8 link_status[DP_LINK_STATUS_SIZE]);
-- 
2.49.0

