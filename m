Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386E12E0C07
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:51:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926686E887;
	Tue, 22 Dec 2020 14:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED986E887
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:50:58 +0000 (UTC)
IronPort-SDR: NNIKV4+J5r0IFZh2+1L5aSudc8DhmR1+em9IBxkZph+zmzDvbaZd4Y8PlaXAO8hWwDgUOKzSiY
 1lro92hHD1Wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155665458"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="155665458"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:58 -0800
IronPort-SDR: BY/O84irS7QQD2LqdxXARMPHu1IQqKkVgssSvVMQw+CShlT7FaLjliAXcxSJb6+xbXo18dbSyA
 vIh3a/gpxOwg==
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; d="scan'208";a="392351837"
Received: from sauterhx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.229])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 06:50:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 16:49:51 +0200
Message-Id: <12b05c736546aa3368b0cd2564e574d677474cda.1608648128.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/pps: add locked
 intel_pps_wait_power_cycle
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer keeping the unlocked variants hidden if possible.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  7 +------
 drivers/gpu/drm/i915/display/intel_pps.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 65406d4ccdbe..bc3a447f5992 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5833,13 +5833,8 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
 {
 	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
-	intel_wakeref_t wakeref;
-
-	if (!intel_dp_is_edp(intel_dp))
-		return;
 
-	with_intel_pps_lock(intel_dp, wakeref)
-		wait_panel_power_cycle(intel_dp);
+	intel_pps_wait_power_cycle(intel_dp);
 }
 
 static enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ceb6de9e7aff..ceb74967f2b4 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -503,7 +503,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
 	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
 }
 
-void wait_panel_power_cycle(struct intel_dp *intel_dp)
+static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	ktime_t panel_power_on_time;
@@ -525,6 +525,17 @@ void wait_panel_power_cycle(struct intel_dp *intel_dp)
 	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
 }
 
+void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		wait_panel_power_cycle(intel_dp);
+}
+
 static void wait_backlight_on(struct intel_dp *intel_dp)
 {
 	wait_remaining_ms_from_jiffies(intel_dp->last_power_on,
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 451d5125b2b7..c8766b777501 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -37,8 +37,7 @@ void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
 bool intel_pps_have_power(struct intel_dp *intel_dp);
-
-void wait_panel_power_cycle(struct intel_dp *intel_dp);
+void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_reinit(struct intel_dp *intel_dp);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
