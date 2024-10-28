Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB2D9B2920
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8C410E203;
	Mon, 28 Oct 2024 07:46:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmQqRwV1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7114010E203;
 Mon, 28 Oct 2024 07:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730101614; x=1761637614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vptQtSfunr36q+KMzlPqhXA27ua03D8ev56sjjRz+OU=;
 b=hmQqRwV1AhmvgxqgxR+5AEMAe0SAeA2g/xmsgcR/haFtxU75/OM44Zka
 fdI0dFYZmZWWGQVqCJyLY9XVEWJQ3/hydQmeGYS9PI5RfOB6whKFtPXbH
 2/D4IYRe9eiZC1WDGEtq1C2ZK1U+EkeBXu4R4mDA6/IrKNTZDlXmKo59b
 b6s5FK4jELAYXVI6cOAJMak8bzY1AqjKlj9uT4bWDMeqPA9TLtl+L5DN8
 IfIIYEQn49r1oF9MERjzNEJzA2UF9oGBw95d0xOtOo/7ndBdBHQNHvULy
 L8kBC4awc4p3UBOpAKnrxe44PCRMEu3ZlrDrxXB6kGpat9kYTdwiZPNSG Q==;
X-CSE-ConnectionGUID: bSYFBhL4TwqgtlzHcLrQTA==
X-CSE-MsgGUID: jDr0fbhhT/KzvGXMA+VZaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40225932"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40225932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:46:54 -0700
X-CSE-ConnectionGUID: lXq0wC0mQZ2G5dNJjeDF2g==
X-CSE-MsgGUID: ilL0Mh6kQWaS4SszpRJarg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81449551"
Received: from johunt-mobl9.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.61])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:46:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: WA for panels stating bad link status after PSR
 is enabled
Date: Mon, 28 Oct 2024 09:46:42 +0200
Message-Id: <20241028074642.804895-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 39 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 4 files changed, 44 insertions(+), 1 deletion(-)

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
index b036c6521659..efaaadfb12ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5007,7 +5007,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 		return true;
 
 	/* Retrain if link not ok */
-	return !intel_dp_link_ok(intel_dp, link_status);
+	return !(intel_dp_link_ok(intel_dp, link_status) ||
+		 intel_psr_link_ok(intel_dp));
 }
 
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 992543f508c1..0cd7388389e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2009,6 +2009,15 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
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
 
@@ -3458,6 +3467,9 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 
 	mutex_lock(&psr->lock);
 
+	/* Let's clear possibly set link_ok flag here */
+	psr->link_ok = false;
+
 	if (!psr->enabled)
 		goto exit;
 
@@ -3517,6 +3529,33 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
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

