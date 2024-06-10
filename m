Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A36F902717
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0B310E4D5;
	Mon, 10 Jun 2024 16:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KRvpFmLk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C5910E4EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038186; x=1749574186;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ja+phZaLsU3r3p4SBX0B0LcD2p6+SjAv8o0SvxDADD4=;
 b=KRvpFmLk3f23NbyMxu5ZP1UMegS2rX+X3JVLcSB263Hs8VgrHu9O7U1x
 FfpgW9O4tHOvT7x1WlK42UGO8DtGEQKP5ILwO495XIm9m9nAeWCIkrkr+
 rL++3hUOIDlvijf5KZ0aBz4tBVQJffpwfRiZ5svBLipwh4LOmC+xaWROs
 90HvhenwkoCOcBAMLXE0Ggs/K6vseBd9djPnKHDWQabuNdTMqIOWL5dyY
 Bwq7T4EJVf0AgAppZHUMCkbrfXZrHihHjZNi82fKuXg8p1wA5e5V1Iww1
 vYrMdBeCThN073PXJVknFJJYDA0feN57e4/VoAIYeSRoT7/UI5CXIbFVw g==;
X-CSE-ConnectionGUID: Z547vLcgQharhDbhbW8qxA==
X-CSE-MsgGUID: aTz8mJuhTj6KQ7iPZGpyhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494014"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494014"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:46 -0700
X-CSE-ConnectionGUID: NAn5VPpxS6yInhwafNDpPg==
X-CSE-MsgGUID: kETXgKjuR/2kXSt2u8EWtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060603"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 16/21] drm/i915/dp_mst: Enable link training fallback for
 MST
Date: Mon, 10 Jun 2024 19:49:28 +0300
Message-ID: <20240610164933.2947366-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Reduce the link parameters after a link training failure for MST
outputs, similarly to how this is done for SST.

For now allow the reduction only by staying in the 8b/10b vs. 128b/132b
mode. Enabling the mode switch is left for a follow-up patchset, after
taking measures ensuring that the mode switch happens properly. In
particular a rediscovery of the whole MST topology may be required for
such a switch, see the References below.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10970
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c             |  6 +-----
 .../gpu/drm/i915/display/intel_dp_link_training.c   | 13 ++++---------
 2 files changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f4fadb8ebf0d1..6b46832e17a2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5872,11 +5872,7 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_mst_configure(intel_dp);
 
-	/*
-	 * TODO: Reset link params when switching to MST mode, until MST
-	 * supports link training fallback params.
-	 */
-	if (intel_dp->reset_link_params || intel_dp->is_mst) {
+	if (intel_dp->reset_link_params) {
 		intel_dp_reset_link_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e106a9e6ea3bf..af65369365502 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1124,6 +1124,10 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
 
+	/* TODO: Make switching from UHBR to non-UHBR rates work. */
+	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
+		return -1;
+
 	return new_rate;
 }
 
@@ -1141,15 +1145,6 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	int new_link_rate;
 	int new_lane_count;
 
-	/*
-	 * TODO: Enable fallback on MST links once MST link compute can handle
-	 * the fallback params.
-	 */
-	if (intel_dp->is_mst) {
-		lt_err(intel_dp, DP_PHY_DPRX, "Link Training Unsuccessful\n");
-		return -1;
-	}
-
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
 		       "Retrying Link training for eDP with max parameters\n");
-- 
2.43.3

