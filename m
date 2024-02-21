Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C6285D1D5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 08:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C2510E632;
	Wed, 21 Feb 2024 07:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYZVzsaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BE410E62C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708502033; x=1740038033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n2KH4XI6HC0Fqj8LyKE66uMOmKAIUa3MSBklb1NQ/ZY=;
 b=YYZVzsaDgW7alXH2NZpK36szPs8TlZdKPa0PNceSpc7aQZUS+I/tM4kf
 LUuqyRqNfVlbd9hqAuDNUur8q5pepk9+wVedRFJsMWkdVv1NADzfh30L5
 hrFXCu6Fh4uh4PPPOjEw607/MBhbA1obtUEhdcmR9EvGVxhhlZy6+bSdY
 lUSmkgjlMvZJnESUF/8fgP5RsCeh+JsE1XB+cI5xrYc3a1gRcnzrIFg2S
 kDmDWt53u3rnz15OPCkpEJjKTwxF4I8jYjfX4japouz1r4HrwDtpIoKzx
 o1RS+d4O2eG7bK9OJl2u1gTKJ+3S60KeyMzdkE+WVLZPMxV0vlgHZIQIm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20082045"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="20082045"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="827302731"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="827302731"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.221.77])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 23:53:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines calculation
Date: Wed, 21 Feb 2024 09:53:21 +0200
Message-Id: <20240221075322.2764209-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240221075322.2764209-1-jouni.hogander@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Current fast and IO wake lines calculation is assuming fast wake sync
length is 18 pulses. Let's improve this by checking the actual length.

Also 10 us IO buffer wake time is currently assumed. This is not the case
with LunarLake and beyond. Fix this by adding getter for IO wake time and
return values there according to Bspec.

Bspec: 65450

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 +++++++++++++++++++-----
 1 file changed, 33 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72cadad09db5..4a1e07411716 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1150,6 +1150,28 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	return true;
 }
 
+/*
+ * From Bspec:
+ *
+ * For Xe2 and beyond
+ * RBR 15us, HBR1 11us, higher rates 10us
+ *
+ * For pre-Xe2
+ * 10 us
+ */
+static int get_io_wake_time(struct intel_dp *intel_dp,
+			struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
+		return 10;
+	else if (crtc_state->port_clock > 162000)
+		return 11;
+	else
+		return 15;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1157,13 +1179,17 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
 	u8 max_wake_lines;
 
-	if (DISPLAY_VER(i915) >= 12) {
-		io_wake_time = 42;
-		/*
-		 * According to Bspec it's 42us, but based on testing
-		 * it is not enough -> use 45 us.
-		 */
-		fast_wake_time = 45;
+	if (intel_dp->get_aux_fw_sync_len) {
+		int io_wake_time = get_io_wake_time(intel_dp, crtc_state);
+		int tfw_exit_latency = 20; /* eDP spec */
+		int phy_wake = 4;	   /* eDP spec */
+		int preamble = 8;	   /* eDP spec */
+		int precharge = intel_dp->get_aux_fw_sync_len() - preamble;
+
+		io_wake_time = max(precharge, io_wake_time) + preamble +
+			phy_wake + tfw_exit_latency;
+		fast_wake_time = precharge + preamble + phy_wake +
+			tfw_exit_latency;
 
 		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
-- 
2.34.1

