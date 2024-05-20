Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75088CA25E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1724310E6D5;
	Mon, 20 May 2024 18:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JI9t9fIz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2845710E5CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231507; x=1747767507;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x0ZeAVyhLbo0sZnsC3WaCsTnrh2+139qI+X4iydrNis=;
 b=JI9t9fIzobtNRyzgGVXPgdUBS/V3rrq7eIy0X5thP2ga4S9BntZUR3EB
 d/pWM1XiSVdkgop6FH+wFfe9uXcyszvQLzKSxijAZbUY0WWGndg+Y+lmy
 nd1Ag6BK16MRD5RXefpkbxEpf22PLbEdb99bpLxyLwK5O+Brbun/+8cGd
 U35uvJve3tVJ7E5A7PNUS3p781rHeYfP0/OuRWR0x64M6vTBVBY1XtdJW
 Cet75dLqOAK8AXPHpEhwDflaBe8Dd6GPIpmBW4OKaeg65LzEl6gD0Lh2Q
 a/hD70ZzBrHvWXGLLu+xzTD+LWw2DNl1OvdGXDhz8Z01SV4q92dAGOa9b Q==;
X-CSE-ConnectionGUID: pXwDqgZWQo27B9BBWAnGDA==
X-CSE-MsgGUID: URnT01QERrCwsgp+PGuIsw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218528"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218528"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:27 -0700
X-CSE-ConnectionGUID: cZ/RINmrTO2/lOOfF6C/zA==
X-CSE-MsgGUID: q0NldzE8T0ye+6UcRPKpVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213851"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 08/21] drm/i915/dp: Reduce link params only after retrying
 with unchanged params
Date: Mon, 20 May 2024 21:58:06 +0300
Message-ID: <20240520185822.3725844-9-imre.deak@intel.com>
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
index 9317c1ae04efe..bde518c843468 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1765,6 +1765,8 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		/* Sequential link training failures after a passing LT */
+		int seq_train_failures;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8da277f0c2735..7c824c5a13346 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2950,6 +2950,7 @@ static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link.seq_train_failures = 0;
 }
 
 /* Enable backlight PWM and backlight PP control. */
@@ -5056,6 +5057,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
+	if (intel_dp->link.seq_train_failures)
+		return true;
+
 	/* Retrain if link not ok */
 	return !intel_dp_link_ok(intel_dp, link_status);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ad1fbb150ff90..e804f0b801c02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1486,10 +1486,13 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
 	if (passed) {
+		intel_dp->link.seq_train_failures = 0;
 		intel_ddi_queue_link_check(dig_port, 2000);
 		return;
 	}
 
+	intel_dp->link.seq_train_failures++;
+
 	/*
 	 * Ignore the link failure in CI
 	 *
@@ -1507,6 +1510,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (intel_dp->link.seq_train_failures < 2) {
+		intel_ddi_queue_link_check(dig_port, 0);
+		return;
+	}
+
 	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
 
-- 
2.43.3

