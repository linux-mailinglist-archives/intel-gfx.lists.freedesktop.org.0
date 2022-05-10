Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C7F521273
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F3310F5E4;
	Tue, 10 May 2022 10:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689C710F5E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179393; x=1683715393;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JqpiFI3ficW6p9PX17jGKgdLRdm3diLB7YGNWXR+hrw=;
 b=OLn8ReLi1+6G1QcmDwCadvizqaKbE/7TZj2IunbEmcUDjOjJZei5EvSu
 FTy6Anna/ogN7zHlnUgUgUdr8aDI+bVCqjh486+xyK1O5rBk7mzVDfbfE
 cwh/v81zCSDGzw9JZhNzANYaI8EKcVgH67ca5I9nBoispxqdqLh6iB8vX
 Nf1O0w93W06R0OHPkhw8bKNBOY0jZxtVknIrmvpL+MOF/Ougr7+xf+Yxy
 99FbcIU/DysxXtnO7cHl9hlTPY8vL4JMGkB4PVy4jvy8OOXMiVo2v1b/u
 wsftLpZGa4KGyQln5A+4zrepzPwBCbdr7EmgD/DYpB+5WbAhWoGJK8C0V A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249236150"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="249236150"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="602404635"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 10 May 2022 03:43:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:36 +0300
Message-Id: <20220510104242.6099-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/15] drm/i915/pps: Keep VDD enabled during eDP
 probe
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

Disable the delayed VDD off work during the eDP probe.
If we never turn off the VDD then we can't violate the
panel's power sequencing delays despite not having read
them out yet from the VBT.

This is mostly a belt+suspenders type of thing since the
the timeout we'd use for the delayed work should be long
enough that this won't normally happen. But I don't really
like relying on timeouts for correctless so might as well
make sure.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c           | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0c13208c952d..052ab0a4b329 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1474,6 +1474,7 @@ struct intel_pps {
 	int backlight_off_delay;
 	struct delayed_work panel_vdd_work;
 	bool want_panel_vdd;
+	bool initializing;
 	unsigned long last_power_on;
 	unsigned long last_backlight_off;
 	ktime_t panel_power_off_time;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9ce09d85e0ab..04e60ddbcbea 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -722,6 +722,13 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 {
 	unsigned long delay;
 
+	/*
+	 * We may not yet know the real power sequencing delays,
+	 * so keep VDD enabled until we're done with init.
+	 */
+	if (intel_dp->pps.initializing)
+		return;
+
 	/*
 	 * Queue the timer to fire a long time from now (relative to the power
 	 * down delay) to keep the panel power up across a sequence of
@@ -1419,6 +1426,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
 
+	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
 	pps_init_timestamps(intel_dp);
@@ -1443,6 +1451,8 @@ void intel_pps_init_late(struct intel_dp *intel_dp)
 		pps_init_delays(intel_dp);
 		pps_init_registers(intel_dp, false);
 
+		intel_dp->pps.initializing = false;
+
 		if (edp_have_panel_vdd(intel_dp))
 			edp_panel_vdd_schedule_off(intel_dp);
 	}
-- 
2.35.1

