Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C165C902713
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A952E10E4E5;
	Mon, 10 Jun 2024 16:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFp0cBDk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426A610E377
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038177; x=1749574177;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OHJVSsjGF0mTojRyCVj96DsZD8hHglRhkUTbg57ioFo=;
 b=nFp0cBDkJdV11BYjysGw0K5ee+5jQngUvMc0ux+p++KeTHaKWZjsO3e0
 ODKDn1Lw5Ij5vA36pj0vL+TEVxc5E2bzs3Rv48PjxZ+BtUXEtISxsvlLm
 VdNonabY85GPDnpW4l5vecL7o1tVh6trGZZX3Q5u1KzFMMzitz5f6qxyb
 Q9oT5QYOpQgSh/C/qu2GJzUkZRUcLLjZiQ6QXAKABAC+quqGdx87jrAQZ
 VJIwuf+sGhLWVBs0DLkFq9DKzVRmZqPilGQnoAtlae/dmHTzW1ehfKBDG
 oIoWQlvqQL7F89i84HsNqIXgfkBItKjK9I3zFbhUzYUgYcA7vTdknl+PO Q==;
X-CSE-ConnectionGUID: efPqaPqFQYicXLwKDqWbiw==
X-CSE-MsgGUID: rPEd0+SGRKCpws0naxox5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493990"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493990"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:37 -0700
X-CSE-ConnectionGUID: Z6biZbWWTkOPvHZZUZ04ug==
X-CSE-MsgGUID: +sWRILHPQbWJW4Sbb7LXAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060591"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 08/21] drm/i915/dp: Reduce link params only after retrying
 with unchanged params
Date: Mon, 10 Jun 2024 19:49:20 +0300
Message-ID: <20240610164933.2947366-9-imre.deak@intel.com>
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
index 00ba671c9d86d..d8e00cbfa8246 100644
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
index 9f5624c4f3586..1e8de50fa918c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2953,6 +2953,7 @@ static void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp->link.seq_train_failures = 0;
 }
 
 /* Enable backlight PWM and backlight PP control. */
@@ -5060,6 +5061,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
+	if (intel_dp->link.seq_train_failures)
+		return true;
+
 	/* Retrain if link not ok */
 	return !intel_dp_link_ok(intel_dp, link_status);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1164255cf5f2d..8caf740e642f2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1487,10 +1487,13 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
 	if (passed) {
+		intel_dp->link.seq_train_failures = 0;
 		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
+	intel_dp->link.seq_train_failures++;
+
 	/*
 	 * Ignore the link failure in CI
 	 *
@@ -1508,6 +1511,11 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
+	if (intel_dp->link.seq_train_failures < 2) {
+		intel_encoder_link_check_queue_work(encoder, 0);
+		return;
+	}
+
 	intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
 }
 
-- 
2.43.3

