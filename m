Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD779B4996
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 13:24:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D4E10E63D;
	Tue, 29 Oct 2024 12:24:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hOLeD4as";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351ED10E63D;
 Tue, 29 Oct 2024 12:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730204684; x=1761740684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aYqOVH8ve4ljtZZSOyTogmTIdbBCxHCZc8fNHMrJHGE=;
 b=hOLeD4asOaEPRoEI0XG9BzHTJkuMabFpVxEDpPms2fWPK9+5i9wLuKNc
 GSESwFF0p3Kv9SdrOkVN0S29IpeVY1IUWqWzK/ORTecykKay0w6zem17K
 gL+UYrLsnlp15ISdd0mOIFrgG3i1wAoQnH5aT0vXiw6MVrGFqtOTPHUNE
 v49nQu67mFjRCSQn1tSUuQlDcu1WHjClzq0Id5x0YJPjHfSIMHrt3BKK/
 wKGh34PZr6cFfoWP41vc2iWlI9DoMP0Sb1Q2sGH/d/qU2BDAQPfq5u2DQ
 zfPJ8Lw+ze9MqjMH9JcAsonbTbueIhIh16VdTvz6zCPWr2WxDLS3HZXwU w==;
X-CSE-ConnectionGUID: BU2PNmjxRzG2AMwFRXXOGA==
X-CSE-MsgGUID: 8rQaQc+JQtS+yxLfd9Lv3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52400435"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52400435"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 05:24:44 -0700
X-CSE-ConnectionGUID: i6Q5W/AjRUm1jl7ALSK/aQ==
X-CSE-MsgGUID: D1oi3SvaSwGU/QhdQKE5Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86504740"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.244.100])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 05:24:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2] drm/i915/psr: WA for panels stating bad link status after
 PSR is enabled
Date: Tue, 29 Oct 2024 14:24:15 +0200
Message-Id: <20241029122415.1789528-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

We are currently seeing unexpected link trainings with several different
eDP panels. These are caused by these panels stating bad link status in
their dpcd registers. This can be observed by doing following test:

1. Boot up without Xe module loaded

2. Load Xe module with PSR disabled:
    $ modprobe xe  enable_psr=0

3. Read panel link status register
    $ dpcd_reg read --offset 0x200e --count=1
    0x200e:  00

4. Enable PSR, sleep for 2 seconds and disable PSR again:

    $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
    $ echo "-1" > /sys/kernel/debug/dri/0000:00:02.0/xe_params/enable_psr
    $ echo 0x0 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
    $ sleep 2
    $ cat /sys/kernel/debug/dri/0/i915_edp_psr_status | grep status
    $ echo 0x1 > /sys/kernel/debug/dri/0/i915_edp_psr_debug
    Source PSR/PanelReplay status: DEEP_SLEEP [0x80310030]

5. Now read panel link status registers again:
    $ dpcd_reg read --offset 0x200e --count=1
    0x200e:  80

Workaround this by not trusting link status registers after PSR is enabled
until first short pulse interrupt is received.

v2:
  - clear link_ok flag on pipe disable
  - remove useless comment
  - modify intel_dp_needs_link_retrain return statement

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 4 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..f0b7d7262961 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1618,6 +1618,8 @@ struct intel_psr {
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
+
+	bool link_ok;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9dd4610c749a..2212a9d97121 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5011,7 +5011,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 		return true;
 
 	/* Retrain if link not ok */
-	return !intel_dp_link_ok(intel_dp, link_status);
+	return !intel_dp_link_ok(intel_dp, link_status) &&
+		!intel_psr_link_ok(intel_dp);
 }
 
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 880ea845207f..7695225b3745 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2013,6 +2013,15 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.enabled = true;
 	intel_dp->psr.paused = false;
 
+	/*
+	 * Link_ok is sticky and set here on PSR enable. We can assume link
+	 * training is complete as we never continue to PSR enable with
+	 * untrained link. Link_ok is kept as set until first short pulse
+	 * interrupt. This is targeted to workaround panels stating bad link
+	 * after PSR is enabled.
+	 */
+	intel_dp->psr.link_ok = true;
+
 	intel_psr_activate(intel_dp);
 }
 
@@ -2172,6 +2181,8 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	intel_psr_disable_locked(intel_dp);
 
+	intel_dp->psr.link_ok = false;
+
 	mutex_unlock(&intel_dp->psr.lock);
 	cancel_work_sync(&intel_dp->psr.work);
 	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
@@ -3462,6 +3473,8 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 
 	mutex_lock(&psr->lock);
 
+	psr->link_ok = false;
+
 	if (!psr->enabled)
 		goto exit;
 
@@ -3521,6 +3534,33 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
 	return ret;
 }
 
+/**
+ * intel_psr_link_ok - return psr->link_ok
+ * @intel_dp: struct intel_dp
+ *
+ * We are seeing unexpected link re-trainings with some panels. This is caused
+ * by panel stating bad link status after PSR is enabled. Code checking link
+ * status can call this to ensure it can ignore bad link status stated by the
+ * panel I.e. if panel is stating bad link and intel_psr_link_ok is stating link
+ * is ok caller should rely on latter.
+ *
+ * Return value of link_ok
+ */
+bool intel_psr_link_ok(struct intel_dp *intel_dp)
+{
+	bool ret;
+
+	if ((!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp)) ||
+	    !intel_dp_is_edp(intel_dp))
+		return false;
+
+	mutex_lock(&intel_dp->psr.lock);
+	ret = intel_dp->psr.link_ok;
+	mutex_unlock(&intel_dp->psr.lock);
+
+	return ret;
+}
+
 /**
  * intel_psr_lock - grab PSR lock
  * @crtc_state: the crtc state
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 5f26f61f82aa..956be263c09e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -59,6 +59,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 bool intel_psr_needs_block_dc_vblank(const struct intel_crtc_state *crtc_state);
+bool intel_psr_link_ok(struct intel_dp *intel_dp);
 
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
-- 
2.34.1

