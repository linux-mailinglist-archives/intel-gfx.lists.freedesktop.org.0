Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0253541EE16
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 15:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF806E497;
	Fri,  1 Oct 2021 13:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B90426E497
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 13:02:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247985907"
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="247985907"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 06:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,339,1624345200"; d="scan'208";a="521031327"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Oct 2021 06:01:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Oct 2021 16:01:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Fri,  1 Oct 2021 16:01:04 +0300
Message-Id: <20211001130107.1746-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
References: <20211001130107.1746-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/10] drm/i915: Nuke
 intel_ddi_hdmi_num_entries()
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

Since intel_ddi_level() now looks that buf_trans table there's
no point in having intel_ddi_hdmi_num_entries() around. Just
roll the necessary bits of locic into
intel_ddi_hdmi_level()/intel_ddi_level().

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 17 +++++-----------
 .../drm/i915/display/intel_ddi_buf_trans.c    | 20 -------------------
 .../drm/i915/display/intel_ddi_buf_trans.h    |  4 ----
 3 files changed, 5 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2b192694f484..4e9a6f30f524 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -74,20 +74,13 @@ static const u8 index_to_dp_signal_levels[] = {
 };
 
 static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+				const struct intel_ddi_buf_trans *trans)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int n_entries, level, default_entry;
+	int level;
 
-	n_entries = intel_ddi_hdmi_num_entries(encoder, crtc_state, &default_entry);
-	if (n_entries == 0)
-		return 0;
 	level = intel_bios_hdmi_level_shift(encoder);
 	if (level < 0)
-		level = default_entry;
-
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, level >= n_entries))
-		level = n_entries - 1;
+		level = trans->hdmi_default_entry;
 
 	return level;
 }
@@ -142,7 +135,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int level = intel_ddi_hdmi_level(encoder, crtc_state);
+	int level = intel_ddi_level(encoder, crtc_state);
 	u32 iboost_bit = 0;
 	int n_entries;
 	enum port port = encoder->port;
@@ -1366,7 +1359,7 @@ int intel_ddi_level(struct intel_encoder *encoder,
 		return 0;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		level = intel_ddi_hdmi_level(encoder, crtc_state);
+		level = intel_ddi_hdmi_level(encoder, trans);
 	else
 		level = intel_ddi_dp_level(enc_to_intel_dp(encoder));
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 449daba7afb3..a2d39131ea53 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1617,26 +1617,6 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
-int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
-			       const struct intel_crtc_state *crtc_state,
-			       int *default_entry)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	const struct intel_ddi_buf_trans *trans;
-	int n_entries;
-
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
-
-	if (drm_WARN_ON(&dev_priv->drm, !trans)) {
-		*default_entry = 0;
-		return 0;
-	}
-
-	*default_entry = trans->hdmi_default_entry;
-
-	return n_entries;
-}
-
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 94d338287f61..6cdb8e9073c7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -68,10 +68,6 @@ struct intel_ddi_buf_trans {
 
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
-int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
-			       const struct intel_crtc_state *crtc_state,
-			       int *default_entry);
-
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
 
 #endif
-- 
2.32.0

