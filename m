Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299B28C5B96
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C7810EB19;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7lmoC8i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942FB10E816
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714064; x=1747250064;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0c6vTfRorONre0kcRbdQLQ/9sDSuNNKItUFlQfbijzs=;
 b=i7lmoC8iiLpPhA7AKhFgHJz5MdSptOXdHNVfOEQqRg/019fpYQEE6yjV
 Bm4nDqoYlFH6nQYglli75jVPCV80OFCKG2RohjjMhxUdO/+ya9PO4RXQh
 MD3pm7B8BAPTNMPc25ajUSKIsP6CU/L2MpJI8Bz9jciRi8SiNFKzz7ACO
 3+xrB0N2pB0rh9klJtIXqaaIeqUtbItn9x1UP5p2+0DMLidLOoFaODnxf
 x1z0MFevF0/yf03lgHjPWfALl5iIqXbngrO6/IxkyRbq+LTl5darQiKOX
 p+IAWyTXlcs35JayJHe7i80Hx7oWbbAejDefPtCwRpXORIoBNSVpaw77+ w==;
X-CSE-ConnectionGUID: Y0yxsEjLR0yUrMKe5jh8ow==
X-CSE-MsgGUID: ThAzbwUpSaCoRBZaJ/S5HQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124990"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124990"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:23 -0700
X-CSE-ConnectionGUID: tysHQ9yATV2bGgFe+xsWrg==
X-CSE-MsgGUID: gAMhqa/hS/iZNN27Lc/YfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724610"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/20] drm/i915/dp: Reduce link params only after retrying
 with unchanged params
Date: Tue, 14 May 2024 22:14:06 +0300
Message-ID: <20240514191418.2863344-9-imre.deak@intel.com>
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

Try to maintain the current link parameters by retrying the link
training with unchanged link parameters before reducing these parameters
(sending an uevent to userspace to retrain the link instead).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h    | 2 ++
 drivers/gpu/drm/i915/display/intel_dp.c               | 4 ++++
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 ++++++++
 3 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da7649e4ba9e..a173b9c105981 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1763,6 +1763,8 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		/* Sequential failures after a passing LT */
+		int seq_failures;
 	} link_train;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ec6e9c34e282..da56a2b7fa0f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2950,6 +2950,7 @@ static void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link_train.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link_train.seq_failures = 0;
 }
 
 /* Enable backlight PWM and backlight PP control. */
@@ -5056,6 +5057,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
+	if (intel_dp->link_train.seq_failures)
+		return true;
+
 	/* Retrain if link not ok */
 	return !intel_dp_link_ok(intel_dp, link_status);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 85074c1c2281d..6b0aab278ae8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1484,10 +1484,13 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
 	if (passed) {
+		intel_dp->link_train.seq_failures = 0;
 		intel_dp_queue_link_check(intel_dp, 2000);
 		return;
 	}
 
+	intel_dp->link_train.seq_failures++;
+
 	/*
 	 * Ignore the link failure in CI
 	 *
@@ -1505,6 +1508,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (intel_dp->link_train.seq_failures < 2) {
+		intel_dp_queue_link_check(intel_dp, 0);
+		return;
+	}
+
 	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
 
-- 
2.43.3

