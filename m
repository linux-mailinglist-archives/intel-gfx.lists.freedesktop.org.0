Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8587484714
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA4810E13D;
	Tue,  4 Jan 2022 17:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540DF10E13D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318019; x=1672854019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a50dLsjkYIVHe7NIss9N3x+7AXPG8/zaY69i34YIqfs=;
 b=XLrhmvsKTUnQcu3ntfxAYkRkdWeJYBBEzXqvzJK+eaxj8ljqMctWNt5K
 dsj09Z1y2J7NQKKkoYbVWYAT5/L4Xb2rh57c3IBwxrAxVEx8ZB7qrkaDu
 rvLC5Efm4Cf7bfzZZfCLF8jBJljv6CHTtVxvYHrEjFrpruTMPi3hfggmb
 s3N4MPvV5XipAnYeWVVybQ0FJ59zcKZKAljBTMKW4r8/tkjdjIxk0dlMa
 U3NHAHxrZJT3D+RQ13lk0FgNuS+kQeL50OQJxRlJmxzBJ7b3zCKPH9Vx+
 Zq+GYwEfpdv2wTdckQ9fQC4NLCrevEPVEGh/o5gVI7Ejv291wWECLKJHX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="229083872"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="229083872"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="488266004"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:48 +0200
Message-Id: <b71ce9442afdb775d3fe0744bf522a5a4571f90a.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/mst: abstract handling of link
 status in DP MST
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll want to expand on this, so abstract it to a separate function
first. Improve debug logging while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 065c4607e21f..b8ca8cfca2b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3638,6 +3638,21 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
 	}
 }
 
+static bool intel_dp_mst_link_status(struct intel_dp *intel_dp, u8 *esi)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] channel EQ not ok, retraining\n",
+			    encoder->base.base.id, encoder->base.name);
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -3685,11 +3700,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
 
 		/* check link status - esi[10] = 0x200c */
-		if (intel_dp->active_mst_links > 0 && link_ok &&
-		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "channel EQ not ok, retraining\n");
-			link_ok = false;
+		if (intel_dp->active_mst_links > 0 && link_ok) {
+			if (!intel_dp_mst_link_status(intel_dp, esi))
+				link_ok = false;
 		}
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
-- 
2.30.2

