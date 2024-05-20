Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDD88CA271
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7668B10E8EC;
	Mon, 20 May 2024 18:59:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="erOlFv14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC9F10E572
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231515; x=1747767515;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Kld5cQz/Tz1ZdJ1mijOtI3vNE0gsreq/zl0gsSM2mA8=;
 b=erOlFv14om7EeZzRiXNBpus7wN3vH3NW5suSmrh5tfhX8bFFrnyEJnsX
 KI69NqU8+uf7DCSZ9VHxFsReam1Vx++mEaKbFjYXe4c7Lrnfx4FgzbLKj
 WmPkck5t5Ft5XC+jJrljmkIvAZBt2uEIpqFZe56hxso/U7p4E5ZfvBtAc
 EfA6g6y7yBz2f1Mddt1zqLKcfmVIBD1YSfWIb2nLlwN+A3Gb3G9y7wTd1
 9Q25t6fTwLrzWnEaqfVyfCTuXEbY2xfGK0LOk7JyEeF7dP+2VSY6CZCx5
 /p8iPz58ziGv+JpeWm3EgF0WRZQFSn8mUgykRJffkmdMzshw2er4unx37 A==;
X-CSE-ConnectionGUID: C922/W8fRTipPCRldk2qKw==
X-CSE-MsgGUID: okw0oHVRTqOq9RkbORMC/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218551"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218551"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:34 -0700
X-CSE-ConnectionGUID: o5rRKvUiTXeqGYfpdcCztg==
X-CSE-MsgGUID: rX1Q2mGMRUqM9y0b3NwREw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213886"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 16/21] drm/i915/dp_mst: Enable link training fallback for
 MST
Date: Mon, 20 May 2024 21:58:14 +0300
Message-ID: <20240520185822.3725844-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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
index 34d64fe3302ef..c8d940a2ef7af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5844,11 +5844,7 @@ intel_dp_detect(struct drm_connector *connector,
 
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
index 375f59afd4dec..9a59a28ca36d2 100644
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
 
@@ -1142,15 +1146,6 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
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

