Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3804F9392CA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAF510E206;
	Mon, 22 Jul 2024 16:55:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tl/im3ME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6010810E1EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667297; x=1753203297;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WDhRqAA1BLJ+qqOGHe/pej/QgVbmRx+DcrgvjNzglvo=;
 b=Tl/im3MEYF667N0lCBSGQtjvLgK8EP4UbZ0VWy3cuViwYrMdfW4BjBHO
 lVoaTkOXA2ReLPCxr+yJ1JPtyCpMVFESu3fxExJqqtbSCi82MqV2LxzqM
 X6NY40MdxEBBCqpwHEG6nu4PlLOpDzqdA9NoWuhbMta7DGFFPS+8+CAIF
 ND1Ouee+jaM0btb6Ew7EA0OSkkXfCofO2XqmMUwrKBLR358k9oQND6h6V
 0RBlyU3ALks5PN3MhL5RQ02rJx7DjEeXsHqs+dRdqgzKFW0Z/5mTpNky8
 FpSvyh9AIfR/hn/neiMLvF6UfMX/Kf5Iti8kGsFhGV0YgtgtAEoVJKDTm Q==;
X-CSE-ConnectionGUID: 2IJCQYP6TIGNmp/VBQfQ6g==
X-CSE-MsgGUID: lK4oabm3SdyZfIzotsDYQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117312"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117312"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:57 -0700
X-CSE-ConnectionGUID: /zwjYVaZSW6OFf1uY9iI3Q==
X-CSE-MsgGUID: gXXObsVuQEeTmHaRByvTOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056222"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry uevent
 for a commit
Date: Mon, 22 Jul 2024 19:54:55 +0300
Message-ID: <20240722165503.2084999-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
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

There are multiple failure cases a modeset-retry uevent can be sent for
a link (TBT tunnel BW allocation failure, unrecoverable link training
failure), a follow-up patch adding the handling for a new case where the
DP MST payload allocation fails. The uevent is the same in all cases,
sent to all the connectors on the link, so in case of multiple failures
there is no point in sending a separate uevent for each failure; prevent
this, sending only a single modeset-retry uevent for a commit.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a9d2acdc51a4a..3501125c55158 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1754,6 +1754,7 @@ struct intel_dp {
 	u8 lane_count;
 	u8 sink_count;
 	bool link_trained;
+	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 421e970b3c180..0882dddd97206 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2876,6 +2876,11 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	int i;
 
+	if (intel_dp->needs_modeset_retry)
+		return;
+
+	intel_dp->needs_modeset_retry = true;
+
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_dp_queue_modeset_retry_work(intel_dp->attached_connector);
 
@@ -3009,6 +3014,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 {
 	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
 	intel_dp->link_trained = false;
+	intel_dp->needs_modeset_retry = false;
 	intel_dp->link_rate = link_rate;
 	intel_dp->lane_count = lane_count;
 }
-- 
2.44.2

