Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69448C5B9C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E409E10EB32;
	Tue, 14 May 2024 19:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTzRxLgj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE71810EB2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714072; x=1747250072;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2MI0m7SBV/n6V276+2v99WG2wc5OP25jPNAPL2FWMJM=;
 b=fTzRxLgjTgCRd+yB4B09ruHutyduQMxnRHNI5i5QK2ysKtfhK1E/DN6n
 8jV+SZ+Kr+6fmNVja9mU5Dp5GoCVZ/MN/szhR44jyKD/zGNLWJu2poymd
 MOHxKXCPjivHkfXdqKLf4lGzqEDiNGfm+wlArzk8b0S5uiCLRguYYRfuw
 bEN23sWnLEu5JCCOu1Tpm6UZGpzPV5hN3IgW6gQiU35MouCe4m3KigzzK
 WCXLDaiGfzwekFKX5+8bDsWuozxeJXSkI3tJYgYJZgj7xYo1vZKxMR7Kh
 BzruK6FjS34E6ZDf4EZT+rYJV3b8vpOeBZ57KyGgN0CeMJyx1i98CHMtD w==;
X-CSE-ConnectionGUID: mhBSsE3jSOuvRGpAuQ3eKg==
X-CSE-MsgGUID: HtxiHHFPR9O0tdRrQYTiuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23125000"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23125000"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:31 -0700
X-CSE-ConnectionGUID: ZH4vwyR6TmKtcnmUMuXeMw==
X-CSE-MsgGUID: 4ENuiIKfSOyx7BSemaJaiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724634"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 16/20] drm/i915/dp_mst: Enable link training fallback for MST
Date: Tue, 14 May 2024 22:14:14 +0300
Message-ID: <20240514191418.2863344-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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
index fedc0afaf99d5..5eafda7175e2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5861,11 +5861,7 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_mst_configure(intel_dp);
 
-	/*
-	 * TODO: Reset link params when switching to MST mode, until MST
-	 * supports link training fallback params.
-	 */
-	if (intel_dp->reset_link_params || intel_dp->is_mst) {
+	if (intel_dp->reset_link_params) {
 		intel_dp_reset_link_train_params(intel_dp);
 		intel_dp->reset_link_params = false;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index bc3a653e4ce4a..b80fb25b9204d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1123,6 +1123,10 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
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
-		drm_err(&i915->drm, "Link Training Unsuccessful\n");
-		return -1;
-	}
-
 	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
 		drm_dbg_kms(&i915->drm,
 			    "Retrying Link training for eDP with max parameters\n");
-- 
2.43.3

