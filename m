Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3856AD6FD6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:12:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC9110E800;
	Thu, 12 Jun 2025 12:12:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTTrpCGj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B55E10E800;
 Thu, 12 Jun 2025 12:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730370; x=1781266370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1XP4/RSzz7RAjySTVY5aVZnVvb3GPQvXu1/mCkXWbmc=;
 b=YTTrpCGjBWUOm4LSXRwPp60PwMPwsBt9HbPIbbYneIA0DsJfitwGWQF0
 rKcb+IB/rktym2+OELuPwNBsTs5o2XKHu6emE3ZsQW9mEn7vpZNLxNoZQ
 efrimaaJVuQaIwH0148WBkgG/ICR/7F61pSowtIJXOn9vvokmxj/eL84A
 luXDJmMmrKADkr02b2g7/W320VmORL0fP7sgA3ft0UJkAiH5AmFyWCklR
 oLBP9sv9jAn9/Sqkp9wcS6+Nok0w7DGFNMMa4oAPjF3nAH47fSlwzJOLf
 yPa84FSnuwQdSR6iicE7mXtyAl5UXFs/Zu0Llgrv0WPQ5wc7WzvXxi5zD g==;
X-CSE-ConnectionGUID: AGbPZo06SgCHnftzKmqoTw==
X-CSE-MsgGUID: uuQxdJmHSYmbvc0k+zVQjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438533"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438533"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:49 -0700
X-CSE-ConnectionGUID: /WuP94ttQset4z0E0g+OPg==
X-CSE-MsgGUID: 6wv/xgBXRsO2n0yCZHJ3Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493818"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:12:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/16] drm/i915/bw: abstract intel_bw_qgv_point_peakbw()
Date: Thu, 12 Jun 2025 15:12:02 +0300
Message-Id: <877874ea45c8a018f5852ef69adb1c4d2f149883.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Add intel_bw_qgv_point_peakbw() helper to avoid looking at struct
intel_bw_state internals outside of intel_bw.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       | 5 +++++
 drivers/gpu/drm/i915/display/intel_bw.h       | 1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 2 +-
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 05cb1bd65ee0..65718e6b5333 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1732,3 +1732,8 @@ bool intel_bw_can_enable_sagv(struct intel_display *display,
 
 	return bw_state->pipe_sagv_reject == 0;
 }
+
+int intel_bw_qgv_point_peakbw(const struct intel_bw_state *bw_state)
+{
+	return bw_state->qgv_point_peakbw;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 68b95c2a0cb9..7728dc86a31a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -79,5 +79,6 @@ bool intel_bw_can_enable_sagv(struct intel_display *display,
 			      const struct intel_bw_state *bw_state);
 void icl_sagv_pre_plane_update(struct intel_atomic_state *state);
 void icl_sagv_post_plane_update(struct intel_atomic_state *state);
+int intel_bw_qgv_point_peakbw(const struct intel_bw_state *bw_state);
 
 #endif /* __INTEL_BW_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 8334744a2e23..a4d53fd94489 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -346,7 +346,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 
 	/* firmware will calculate the qclk_gv_index, requirement is set to 0 */
 	new_pmdemand_state->params.qclk_gv_index = 0;
-	new_pmdemand_state->params.qclk_gv_bw = new_bw_state->qgv_point_peakbw;
+	new_pmdemand_state->params.qclk_gv_bw = intel_bw_qgv_point_peakbw(new_bw_state);
 
 	new_dbuf_state = intel_atomic_get_dbuf_state(state);
 	if (IS_ERR(new_dbuf_state))
-- 
2.39.5

