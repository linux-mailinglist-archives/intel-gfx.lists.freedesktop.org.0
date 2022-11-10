Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F59A624522
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 16:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE21F10E866;
	Thu, 10 Nov 2022 15:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBAF910E863
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668092892; x=1699628892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d8nlbFFDcwOWBjiLKBCrZjjyqvi+eLmpp4ZMbSHVaFM=;
 b=e7GoHAbYiSGwSvMeslOt1LlMQkGoVLCOYiZPrH2cmRBb70j/Q66HmzcQ
 dg8uM+ghJ1RLhdypWWIjdcyHwVi13rvPYXq9svYBynIlw3G3TmzR7sKJ3
 HROOT0lz3XjTRE09RxCGD4OgnLmEWo0Grf6uJ11xWtur4AoklIaAKby2F
 xsRGj0bspPZnfb/i8BhrIJzPRnHzfMOJxw4vQfLH46az1kXyexo6ZgWnv
 swzB+aKgvOBCrgaHa6Mqf+rl2Xrh/yCamC6svYR48XzDOnNHKKK1IZAkU
 g+xiVefKqwisyGdywtOYzLOql6yH64dgdqPwfMRfLkMsPJGCjHiR92ovQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397624625"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397624625"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:08:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668436586"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="668436586"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2022 07:08:10 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 20:33:07 +0530
Message-Id: <20221110150307.3366-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221110150307.3366-1-animesh.manna@intel.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/panelreplay: enable/disable panel
 replay
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

TRANS_DP2_CTL register is programmed to enable panel replay from source
and sink is enabled through panel replay dpcd configuration address.

Note: Currently enabled full-screen live active frame update mode
of panel replay. Panel replay also can be enabled in selective
update mode which will be enabled in a incremental approach.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 30 ++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 50394143c798..b6406c334316 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -395,8 +395,14 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	/* Enable ALPM at sink for psr2 */
+	if (intel_dp->psr.enabled && IS_PANEL_REPLAY(intel_dp)) {
+		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+				   DP_PANEL_REPLAY_ENABLE);
+		return;
+	}
+
 	if (intel_dp->psr.psr2_enabled) {
+		/* Enable ALPM at sink for psr2 */
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
 				   DP_ALPM_ENABLE |
 				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
@@ -526,6 +532,17 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 	return val;
 }
 
+static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+		       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE);
+
+	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1101,8 +1118,10 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.active);
 	lockdep_assert_held(&intel_dp->psr.lock);
 
-	/* psr1 and psr2 are mutually exclusive.*/
-	if (intel_dp->psr.psr2_enabled)
+	/* psr1, psr2 and panel-replay are mutually exclusive.*/
+	if (intel_dp->psr.enabled && IS_PANEL_REPLAY(intel_dp))
+		dg2_activate_panel_replay(intel_dp);
+	else if (intel_dp->psr.psr2_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1300,7 +1319,10 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.enabled && !intel_dp_is_edp(intel_dp)) {
+		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
+			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
+	} else if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 		val = intel_de_read(dev_priv,
 				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
-- 
2.29.0

