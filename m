Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF990766DAF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FCC010E6C3;
	Fri, 28 Jul 2023 12:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B20410E6C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690548996; x=1722084996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XyxM/GxR5U3mg7k7mhyEHa79IYw7xKYQjW0rvr6TD60=;
 b=k+/aauwnNhrszV8qjSSpNS5TRSCc2+u+2Yg22HBevZ8zh3i35tkL5hC1
 NTts/j3nYAG0ZZtXokxoXAOAQpx4wOmqlZmC3IPNaA/kUT/wh3Cguzxk7
 TlECVptO4l4y0W9Ivm7X0Q4DuPyV503P1gL4Lt8p42JTFkeIwYXFR90rH
 kNiougBRm/niDO5s9Isp80A4P3jjiSiJuPYPNNhOW/0LVfzFd1/pdW9UN
 botC3mMBgRlLyxKeku0uCRrvmk6I63/TRPZgYQTWIh8lF0hyltrlj2PfP
 Ox+g2I3uQxqa/GwRcd6fUtTLvu6BN3mpZoLVWrUnOEO94QEdt6H7LrW6m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612317"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612317"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473179"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473179"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:34 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:09 +0530
Message-Id: <20230728124609.2911830-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/panelreplay: enable/disable
 panel replay
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

Bspec: 1407940617

v1: Initial version.
v2:
- Use pr_* flags instead psr_* flags. [Jouni]
- Remove intel_dp_is_edp check as edp1.5 also has panel replay. [Jouni]

v3: cover letter updated and selective fetch condition check is added
before updating its bit in PSR2_MAN_TRK_CTL register. [Jouni]

Note: Initial plan is to enable panel replay in  full-screen live active
frame update mode. In a incremental approach panel replay will be enabled
in selctive update mode if there is any gap in curent implementation.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 32 ++++++++++++++++---
 2 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1ff7e6c03b44..41fbd49393f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1696,6 +1696,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool pr_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f6b00abe92d4..244fb336f6bc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -599,8 +599,14 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	/* Enable ALPM at sink for psr2 */
+	if (intel_dp->psr.pr_enabled) {
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
@@ -750,6 +756,18 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 	return psr2_block_count_lines(intel_dp) / 4;
 }
 
+static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled)
+		intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+			     0, ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE);
+
+	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1361,8 +1379,10 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
-	/* psr1 and psr2 are mutually exclusive.*/
-	if (intel_dp->psr.psr2_enabled)
+	/* psr1, psr2 and panel-replay are mutually exclusive.*/
+	if (intel_dp->psr.pr_enabled)
+		dg2_activate_panel_replay(intel_dp);
+	else if (intel_dp->psr.psr2_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1541,6 +1561,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.pr_enabled = crtc_state->has_pr;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
@@ -1586,7 +1607,10 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.pr_enabled) {
+		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
+			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
+	} else if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
-- 
2.29.0

