Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D346E52B3BC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 09:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5216810E775;
	Wed, 18 May 2022 07:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF1E810E713
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 07:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652859981; x=1684395981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tOVlCNQRZNuOHgfu/F0cOp7y3cnvPO1mq1l64iSZ8CU=;
 b=InkqePl7qqgxULlZ4uwNbvbitY3rbazY9GTkNS56d2n7LszXNvtu6Ytj
 3RL9R72q3XTAzj0KwaZ7WM5c38fwSg16tpBZhAzTAuuz5tEX7aCbbvWJh
 it4Mk+EwmPQmOS98z8FMmg5xtI8nN2BkknWtZ5iJM6KEzQs6IJHybcyJh
 sxndANOkxBwZDyff4RDJjq2RDDp/s+fNkaKBDbS5J73C4tEll2bvI7M6M
 VftPz3EjndFrBhH6FQOb+wpu9+Y9HFpL1ScMQpIKlZPPbfZMigB1iNQQv
 AJhaUrjF2TGryLX4NQr5vWA/d9WYnjT63pIJAdvYI2x+k8+OYNCtmo1Qm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="270362268"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="270362268"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 00:46:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="569324374"
Received: from slupux-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.37.36])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 00:46:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 10:45:40 +0300
Message-Id: <20220518074540.36398-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Debugfs statistics interface for
 psr
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
Cc: Nischal Varide <nischal.varide@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently there is no mean to get understanding how psr is utilized.
E.g. How much psr is actually enabled or how often driver falls back
to full update.

This patch addresses this by adding new debugfs interface
i915_edp_psr_stats. Statistics gathering is started by writing 1/y/Y and
stopped by writing 0/n/N into this new interface.

Following fields are provided for reading by this new interface:

"PSR disabled vblank count"

Over how many vblank periods  PSR was disabled after statistics
gathering got started. I.e. How many normal updates were sent to panel.

"Total vblank count"

Total vblank count after statistics gathering got started.

"Selective update count"

How many selective updates (PSR2) were done after statistics gathering
got started.

"Full update count"

How many times driver decided to fall back to full update when trying to
perform selective update.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 100 ++++++++++++
 .../drm/i915/display/intel_display_types.h    |  16 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 144 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr.h      |   2 +
 4 files changed, 236 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 452d773fd4e3..c29f151062e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_debugfs.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
@@ -1868,6 +1869,95 @@ i915_fifo_underrun_reset_write(struct file *filp,
 	return cnt;
 }
 
+static int intel_psr_stats(struct seq_file *m, struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = (m->private);
+	struct intel_psr *psr = &intel_dp->psr;
+	struct drm_crtc *crtc = &intel_crtc_for_pipe(dev_priv, psr->pipe)->base;
+	u64 total_vblank_count = psr->stats.total_vblank_count,
+		non_psr_vblank_count = psr->stats.non_psr_vblank_count;
+	ktime_t vblanktime;
+
+	if (!psr->active)
+		non_psr_vblank_count += drm_crtc_vblank_count_and_time(crtc, &vblanktime) -
+			psr->stats.psr_disable_vblank;
+
+	seq_printf(m, "PSR disabled vblank count : %llu\n", non_psr_vblank_count);
+
+	if (psr->stats.enable)
+		total_vblank_count += drm_crtc_vblank_count_and_time(crtc, &vblanktime) -
+			psr->stats.start_vblank;
+
+	seq_printf(m, "Total vblank count : %llu\n", total_vblank_count);
+	seq_printf(m, "Selective update count : %llu\n", psr->stats.selective_update_count);
+	seq_printf(m, "Full update count : %llu\n", psr->stats.full_update_count);
+
+	return 0;
+}
+
+static int i915_edp_psr_stats_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = (m->private);
+	struct intel_dp *intel_dp = NULL;
+	struct intel_encoder *encoder;
+
+	if (!HAS_PSR(dev_priv))
+		return -ENODEV;
+
+	/* Find the first EDP which supports PSR */
+	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		intel_dp = enc_to_intel_dp(encoder);
+		break;
+	}
+
+	if (!intel_dp)
+		return -ENODEV;
+
+	return intel_psr_stats(m, intel_dp);
+}
+
+static ssize_t
+i915_edp_psr_stats_write(struct file *filp, const char __user *ubuf,
+			 size_t cnt, loff_t *ppos)
+{
+	struct seq_file *m = filp->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	struct intel_dp *intel_dp = NULL;
+	struct intel_encoder *encoder;
+	int ret;
+	bool enable_stats;
+
+	ret = kstrtobool_from_user(ubuf, cnt, &enable_stats);
+	if (ret)
+		return ret;
+
+	if (!HAS_PSR(dev_priv))
+		return -ENODEV;
+
+	/* Find the first EDP which supports PSR */
+	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+		intel_dp = enc_to_intel_dp(encoder);
+		break;
+	}
+
+	if (!intel_dp)
+		return -ENODEV;
+
+	if (enable_stats)
+		intel_psr_stats_enable_stats(intel_dp);
+	else
+		intel_psr_stats_disable_stats(intel_dp);
+
+	return cnt;
+}
+
+static int i915_edp_psr_stats_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *dev_priv = inode->i_private;
+
+	return single_open(file, i915_edp_psr_stats_show, dev_priv);
+}
+
 static const struct file_operations i915_fifo_underrun_reset_ops = {
 	.owner = THIS_MODULE,
 	.open = simple_open,
@@ -1875,6 +1965,15 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
 	.llseek = default_llseek,
 };
 
+static const struct file_operations i915_edp_psr_stats_ops = {
+	.owner = THIS_MODULE,
+	.open = i915_edp_psr_stats_open,
+	.read = seq_read,
+	.write = i915_edp_psr_stats_write,
+	.llseek = default_llseek,
+	.release = single_release,
+};
+
 static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
 	{"i915_ips_status", i915_ips_status, 0},
@@ -1908,6 +2007,7 @@ static const struct {
 	{"i915_ipc_status", &i915_ipc_status_fops},
 	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
 	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
+	{"i915_edp_psr_stats", &i915_edp_psr_stats_ops},
 };
 
 void intel_display_debugfs_register(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 408152f9f46a..07fa820187ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1498,6 +1498,21 @@ struct intel_pps {
 	struct edp_power_seq pps_delays;
 };
 
+struct intel_psr_stats {
+	/* vblank counts used to calculate psr usage */
+	u64 start_vblank;
+	u64 psr_disable_vblank;
+
+	u64 non_psr_vblank_count;
+	u64 total_vblank_count;
+
+	/* psr statistics */
+	u64 selective_update_count;
+	u64 full_update_count;
+
+	bool enable;
+};
+
 struct intel_psr {
 	/* Mutex for PSR state of the transcoder */
 	struct mutex lock;
@@ -1537,6 +1552,7 @@ struct intel_psr {
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
+	struct intel_psr_stats stats;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 36356893c7ca..fe493ff53e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1048,6 +1048,118 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
+static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
+}
+
+static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
+	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
+}
+
+static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
+	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
+}
+
+static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+		ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
+		PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
+}
+
+static void intel_psr_stats_update(struct intel_dp *intel_dp, u32 psr2_man_track_ctl)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+
+	if (!psr->enabled || !psr->stats.enable)
+		return;
+
+	if (psr->psr2_sel_fetch_cff_enabled ||
+	    psr2_man_track_ctl & (man_trk_ctl_single_full_frame_bit_get(dev_priv) |
+				man_trk_ctl_single_full_frame_bit_get(dev_priv)))
+		psr->stats.full_update_count += 1;
+	else if (psr2_man_track_ctl & man_trk_ctl_partial_frame_bit_get(dev_priv))
+		psr->stats.selective_update_count += 1;
+}
+
+static void intel_psr_stats_enable_psr(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	ktime_t vblanktime;
+
+	if (psr->stats.enable)
+		psr->stats.non_psr_vblank_count +=
+			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
+									    psr->pipe)->base,
+						       &vblanktime) -
+			psr->stats.psr_disable_vblank;
+}
+
+static void intel_psr_stats_disable_psr(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	ktime_t vblanktime;
+
+	if (psr->stats.enable)
+		psr->stats.psr_disable_vblank =
+			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
+									    psr->pipe)->base,
+						       &vblanktime);
+}
+
+void intel_psr_stats_enable_stats(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	ktime_t vblanktime;
+
+	mutex_lock(&intel_dp->psr.lock);
+	memset(&psr->stats, 0, sizeof(psr->stats));
+	psr->stats.start_vblank =
+		drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
+								    psr->pipe)->base,
+					       &vblanktime);
+	if (!psr->active)
+		psr->stats.psr_disable_vblank = psr->stats.start_vblank;
+	psr->stats.enable = true;
+	mutex_unlock(&psr->lock);
+}
+
+void intel_psr_stats_disable_stats(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	ktime_t vblanktime;
+
+	if (!psr->stats.enable)
+		return;
+
+	mutex_lock(&psr->lock);
+	psr->stats.enable = false;
+	psr->stats.total_vblank_count =
+		drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
+								    psr->pipe)->base,
+					       &vblanktime) -
+		psr->stats.start_vblank;
+	if (!psr->active)
+		psr->stats.non_psr_vblank_count +=
+			drm_crtc_vblank_count_and_time(&intel_crtc_for_pipe(dev_priv,
+									    psr->pipe)->base,
+						       &vblanktime) -
+			psr->stats.psr_disable_vblank;
+	mutex_unlock(&psr->lock);
+}
+
 static void intel_psr_activate(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1069,6 +1181,8 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 		hsw_activate_psr1(intel_dp);
 
 	intel_dp->psr.active = true;
+
+	intel_psr_stats_enable_psr(intel_dp);
 }
 
 static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
@@ -1280,6 +1394,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 			       EDP_PSR_CTL(intel_dp->psr.transcoder), val);
 	}
 	intel_dp->psr.active = false;
+
+	intel_psr_stats_disable_psr(intel_dp);
 }
 
 static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
@@ -1444,32 +1560,6 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 }
 
-static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
-{
-	return IS_ALDERLAKE_P(dev_priv) ? 0 : PSR2_MAN_TRK_CTL_ENABLE;
-}
-
-static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
-{
-	return IS_ALDERLAKE_P(dev_priv) ?
-	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
-	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
-}
-
-static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
-{
-	return IS_ALDERLAKE_P(dev_priv) ?
-	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
-	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
-}
-
-static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
-{
-	return IS_ALDERLAKE_P(dev_priv) ?
-	       ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME :
-	       PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
-}
-
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1911,6 +2001,8 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 
 		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
 
+		intel_psr_stats_update(intel_dp, crtc_state->psr2_man_track_ctl);
+
 		/* Only enable if there is active planes */
 		if (!psr->enabled && crtc_state->active_planes)
 			intel_psr_enable_locked(intel_dp, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 2ac3a46cccc5..cda50e423ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -58,4 +58,6 @@ void intel_psr_resume(struct intel_dp *intel_dp);
 void intel_psr_lock(const struct intel_crtc_state *crtc_state);
 void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
 
+void intel_psr_stats_enable_stats(struct intel_dp *intel_dp);
+void intel_psr_stats_disable_stats(struct intel_dp *intel_dp);
 #endif /* __INTEL_PSR_H__ */
-- 
2.25.1

