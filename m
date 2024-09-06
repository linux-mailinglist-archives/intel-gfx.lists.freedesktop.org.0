Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D416996EB5A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEC110E806;
	Fri,  6 Sep 2024 07:00:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jem1Gz1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72B6610E806
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 07:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725606051; x=1757142051;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z/EBtKgep5pavTTb1v1kbnE2O/HcJjr8GyZ6vGCgk9Y=;
 b=jem1Gz1Yibvj/cADVP0z0x+DD62N9PrgX5eAlRNuPbqwLuWGuhrVcPOm
 3JW34ZWR1ux34l9m9N4ga4Qh7MYNwJkCOE8UyL9QczJRyY0KuyJ/zV5Jm
 lu+yXxyfK09hkgvhsQBg4MNhYYS+qC2Y0t2U/NcE0gkHv7FU7KxXwyDqr
 ic7WQ3KISjzqm1dcO6a3F0qZfVpEO0WvE5cBdaYbOVibVRlANbY9CvcCs
 ivskJLNh+iTM71lmUfwZPJxHzy9reFfrktQzGEJwlAdnxPb60/WKKLYKG
 3+AKBLAGjjErrAUUnRFtsEvNbXBawZt1WwH5GucJQOCx8jWoBDqqhAkaG A==;
X-CSE-ConnectionGUID: sLIgd7zjSgiVAowYVhTLpQ==
X-CSE-MsgGUID: T+YFIj2ySNqeBBlTEENmyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28103040"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="28103040"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:51 -0700
X-CSE-ConnectionGUID: dfGro8rtSbq57VwAcITNFg==
X-CSE-MsgGUID: JUbA5qTKRQeT+wkgGKYWrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70292513"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.244.116])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/4] drm/i915/display: Use intel_attached_dp instead of
 local implementation
Date: Fri,  6 Sep 2024 10:00:31 +0300
Message-Id: <20240906070033.289015-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240906070033.289015-1-jouni.hogander@intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
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

Link training code contains local "connector to intel_dp"
implementation. This was added due to missing MST handling in
intel_attached_dp. Missing MST support is now fixed in
intel_attached_dp. We can now change link training code to use that instead
of local intel_connector_to_intel_dp.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 30 +++++++------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f45797c1a2051..28f6b7bb816e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1679,19 +1679,11 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
 
-static struct intel_dp *intel_connector_to_intel_dp(struct intel_connector *connector)
-{
-	if (connector->mst_port)
-		return connector->mst_port;
-	else
-		return enc_to_intel_dp(intel_attached_encoder(connector));
-}
-
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int current_rate = -1;
 	int force_rate;
 	int err;
@@ -1762,7 +1754,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int rate;
 	int err;
 
@@ -1789,7 +1781,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int current_lane_count = -1;
 	int force_lane_count;
 	int err;
@@ -1864,7 +1856,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int lane_count;
 	int err;
 
@@ -1891,7 +1883,7 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -1910,7 +1902,7 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -1929,7 +1921,7 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -1947,7 +1939,7 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	if (val > 2)
@@ -1971,7 +1963,7 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -1989,7 +1981,7 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2012,7 +2004,7 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-- 
2.34.1

