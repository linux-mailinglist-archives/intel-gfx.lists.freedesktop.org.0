Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933FD48C2C0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B30113E8E;
	Wed, 12 Jan 2022 11:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F295113E96
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985409; x=1673521409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9cOivLFhkacsdIApJeYf/WsCT0hGUmemzmSyvwpNrvw=;
 b=j1HA1GHfI0qatFNKii2Vz7jZv8dYvuc4jT76cNweGQ7hwaPEZjVgmHI9
 2llQXgQHY52o6rhpjEOfo0N8z/NFmAGJi1y5FtP5Vv3QhLCkDg82jrk1X
 1nKhJlRzdqMxNVCQKDNty9SawvK4FmLzhvQBWr/KERzbe2wVyi1tu1Mqg
 9osZdEm+kGNkAsUkq47bwjT4oqUSNqEWJZQXkMGPF4VrKQiVIJXTjUMXp
 +hTepxZ4pk6pxptN1dKrV5vwoAIvTGnJ7dkE3AYOuIP/o9DH4EtRPoLrQ
 84vXEmdwK/D2hcrkR/Z+Nf4Itc7Q5wY3wfone8qSb+e8e016DmKyhLu2C A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243506849"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243506849"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="472793775"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:03:14 +0200
Message-Id: <20220112110319.1172110-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Smaller functions make the thing easier to read. Debug log failures to
ack.

Note: Looks like we have the retry loop simply because of hysterical
raisins, dating back to the original DP MST enabling. Keep it, though I
have no idea why we have it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e789ecbc69f3..a301220ce2ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2821,6 +2821,19 @@ intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *sink_irq_vector)
 		DP_DPRX_ESI_LEN;
 }
 
+static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
+{
+	int retry;
+
+	for (retry = 0; retry < 3; retry++) {
+		if (drm_dp_dpcd_write(&intel_dp->aux, DP_SINK_COUNT_ESI + 1,
+				      &esi[1], 3) == 3)
+			return true;
+	}
+
+	return false;
+}
+
 bool
 intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 		       const struct drm_connector_state *conn_state)
@@ -3661,7 +3674,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		 */
 		u8 esi[DP_DPRX_ESI_LEN+2] = {};
 		bool handled;
-		int retry;
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(&i915->drm,
@@ -3686,15 +3698,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!handled)
 			break;
 
-		for (retry = 0; retry < 3; retry++) {
-			int wret;
-
-			wret = drm_dp_dpcd_write(&intel_dp->aux,
-						 DP_SINK_COUNT_ESI+1,
-						 &esi[1], 3);
-			if (wret == 3)
-				break;
-		}
+		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
+			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
 	}
 
 	return link_ok;
-- 
2.30.2

