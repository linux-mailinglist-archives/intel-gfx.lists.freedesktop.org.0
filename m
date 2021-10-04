Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE12420A04
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 13:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8CF6E9D3;
	Mon,  4 Oct 2021 11:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8453A6E9D2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 11:23:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10126"; a="225705412"
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="225705412"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2021 04:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,345,1624345200"; d="scan'208";a="558376182"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 04 Oct 2021 04:23:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Oct 2021 14:23:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Oct 2021 14:23:06 +0300
Message-Id: <20211004112306.28544-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
References: <20211004112306.28544-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Call intel_dp_dump_link_status()
 for CR failures
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I suppose intel_dp_dump_link_status() might be useful for diagnosing
link training failures. Hoever we only call from the channel EQ phase
currently. Let's call it from the CR phase as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 18f4b469766e..c92044710012 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -649,6 +649,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u8 old_link_status[DP_LINK_STATUS_SIZE] = {};
 	int voltage_tries, cr_tries, max_cr_tries;
+	u8 link_status[DP_LINK_STATUS_SIZE];
 	bool max_vswing_reached = false;
 	char phy_name[10];
 
@@ -678,8 +679,6 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 
 	voltage_tries = 1;
 	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
-		u8 link_status[DP_LINK_STATUS_SIZE];
-
 		intel_dp_link_training_clock_recovery_delay(intel_dp, dp_phy);
 
 		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
@@ -697,6 +696,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 		}
 
 		if (voltage_tries == 5) {
+			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
 				    encoder->base.base.id, encoder->base.name, phy_name);
@@ -704,6 +704,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 		}
 
 		if (max_vswing_reached) {
+			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 			drm_dbg_kms(&i915->drm,
 				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
 				    encoder->base.base.id, encoder->base.name, phy_name);
@@ -732,6 +733,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 			max_vswing_reached = true;
 	}
 
+	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
 	drm_err(&i915->drm,
 		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
 		encoder->base.base.id, encoder->base.name, phy_name, max_cr_tries);
-- 
2.32.0

