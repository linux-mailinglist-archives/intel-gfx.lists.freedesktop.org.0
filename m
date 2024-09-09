Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F7197191B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C575510E4EC;
	Mon,  9 Sep 2024 12:16:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQj+aXe4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6561310E4B2;
 Mon,  9 Sep 2024 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884185; x=1757420185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YdXEn9DEtbBTIISR3SJsZDp/BPWLCN4ZWX+GK/WLABU=;
 b=VQj+aXe40YMH3lxGj/UJOIx+TDVNk7LHY6Mc1/v6lkQQkT+Sd2GfJx/O
 ovMIK4+bFcoOGV8mhswmgJfh7bBPjuNZRBzj39uBiwg4vnYK4bL4ZoGC0
 M8NJ8ByAfia77M9Hl9Yftv6I5q6ikSopfSsbgFPkuyQaWGIRA7lZ9YzYJ
 iL4kAWFkNoU0XzYERNZzeDyb4xlryF9YsVsHHo7x05ldaEpsCCHYSvvw1
 legMVVJzIbGVq7gMZ3mt6q+xncLS6NZi3ToaLfvaTR697sWmDh/zH/htK
 EGorpibprdFQnRDA3hFnocygncZ7a5yAc+UU8KISgS7H6RZVnCgAd2aun g==;
X-CSE-ConnectionGUID: JG/GFKeSQimnlw28w1gm+A==
X-CSE-MsgGUID: F3hZmGLxRAGI153EkZhpPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35719391"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35719391"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:25 -0700
X-CSE-ConnectionGUID: TB4mVxr1Ql+nxW4MDuUd7A==
X-CSE-MsgGUID: XDfJsWeSSzmwoFgH/n5gYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="89942938"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 7/8] drm/i915/pps: add vlv_pps_backlight_initial_pipe()
Date: Mon,  9 Sep 2024 15:15:42 +0300
Message-Id: <0bccf9b5062e42834d5ba1d0efcd34d711d8f7c7.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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

Add vlv_pps_backlight_initial_pipe() and move the VLV/CHV initial
backlight pipe logic there, hiding the PPS pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 16 ++--------------
 drivers/gpu/drm/i915/display/intel_pps.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0866ddc707e..e0f093ebcb3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6605,20 +6605,8 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum pipe pipe = INVALID_PIPE;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		/*
-		 * Figure out the current pipe for the initial backlight setup.
-		 * If the current pipe isn't valid, try the PPS pipe, and if that
-		 * fails just assume pipe A.
-		 */
-		pipe = vlv_active_pipe(intel_dp);
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = intel_dp->pps.vlv_pps_pipe;
-
-		if (pipe != PIPE_A && pipe != PIPE_B)
-			pipe = PIPE_A;
-	}
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		pipe = vlv_pps_backlight_initial_pipe(intel_dp);
 
 	intel_backlight_setup(connector, pipe);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index c91d14face20..2fe23238c8a3 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1227,6 +1227,26 @@ void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
+enum pipe vlv_pps_backlight_initial_pipe(struct intel_dp *intel_dp)
+{
+	enum pipe pipe;
+
+	/*
+	 * Figure out the current pipe for the initial backlight setup. If the
+	 * current pipe isn't valid, try the PPS pipe, and if that fails just
+	 * assume pipe A.
+	 */
+	pipe = vlv_active_pipe(intel_dp);
+
+	if (pipe != PIPE_A && pipe != PIPE_B)
+		pipe = intel_dp->pps.vlv_pps_pipe;
+
+	if (pipe != PIPE_A && pipe != PIPE_B)
+		pipe = PIPE_A;
+
+	return pipe;
+}
+
 /* Call on all DP, not just eDP */
 void vlv_pps_port_enable(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index b57a0c448e6c..24fc47ff9951 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -48,6 +48,7 @@ void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
+enum pipe vlv_pps_backlight_initial_pipe(struct intel_dp *intel_dp);
 void vlv_pps_port_enable(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state);
 void vlv_pps_port_disable(struct intel_encoder *encoder,
-- 
2.39.2

