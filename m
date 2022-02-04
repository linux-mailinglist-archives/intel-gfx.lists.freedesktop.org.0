Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE3F4A9AD5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 15:18:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F5610E8DC;
	Fri,  4 Feb 2022 14:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7182C10E8DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 14:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643984311; x=1675520311;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SDsxXd4E06O8Zcm81lOpba0B+HuOi0Ihk3sPiWJenB8=;
 b=NDJGmg5U4l0DvIGnPuwpHoIKtwftAD3+/mFPjT7t1icPQpmX4w57itbt
 LYw/PcXv54C2KmPBrLKCKWobQ8hc4fEQtrxbwBLQE/t7pgoiEo9bzrUv9
 /i1oFNCxkeXllkF/G3lk2SqLTEnsBMCp6ba+sqkBHFhLHDXp6PuvrkTo7
 rfKjzbSVJqgeifmWhzjl+66w6n6hgLDZlDIN0BY4HconcbnrTWuUzCwVS
 7o1a5lzbFPPk8fk1hm8wym9yHTj9H9WNoaB585Prt0D5vr/T7GFThIe27
 DI8v7zz7qxQNRwPXCn0eBuZ9h2rIrU5smLsuePOP+reDWRU5PAUiDj4Kk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228345228"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="228345228"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 06:18:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="677109385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 04 Feb 2022 06:18:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 16:18:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 16:18:16 +0200
Message-Id: <20220204141818.1900-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Allow !join_mbus cases for adlp+
 dbuf configuration
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

Reintroduce the !join_mbus single pipe cases for adlp+.

Due to the mbus relative dbuf offsets in PLANE_BUF_CFG we
need to know the actual slices used by the pipe when doing
readout, even when mbus joining isn't enabled. Accurate
readout will be needed to properly sanitize invalid BIOS
dbuf configurations.

This will also make it much easier to play around with the
!join_mbus configs for testin/workaround purposes

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 66 +++++++++++++++++++++++----------
 1 file changed, 46 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 859be750fb22..2eb70ec38f6e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4695,6 +4695,10 @@ static const struct dbuf_slice_conf_entry dg2_allowed_dbufs[] = {
 };
 
 static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
+	/*
+	 * Keep the join_mbus cases first so check_mbus_joined()
+	 * will prefer them over the !join_mbus cases.
+	 */
 	{
 		.active_pipes = BIT(PIPE_A),
 		.dbuf_mask = {
@@ -4709,6 +4713,20 @@ static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
 		},
 		.join_mbus = true,
 	},
+	{
+		.active_pipes = BIT(PIPE_A),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+		.join_mbus = false,
+	},
+	{
+		.active_pipes = BIT(PIPE_B),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+		.join_mbus = false,
+	},
 	{
 		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B),
 		.dbuf_mask = {
@@ -4825,13 +4843,14 @@ static bool adlp_check_mbus_joined(u8 active_pipes)
 	return check_mbus_joined(active_pipes, adlp_allowed_dbufs);
 }
 
-static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
+static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus,
 			      const struct dbuf_slice_conf_entry *dbuf_slices)
 {
 	int i;
 
 	for (i = 0; i < dbuf_slices[i].active_pipes; i++) {
-		if (dbuf_slices[i].active_pipes == active_pipes)
+		if (dbuf_slices[i].active_pipes == active_pipes &&
+		    dbuf_slices[i].join_mbus == join_mbus)
 			return dbuf_slices[i].dbuf_mask[pipe];
 	}
 	return 0;
@@ -4842,7 +4861,7 @@ static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
  * returns correspondent DBuf slice mask as stated in BSpec for particular
  * platform.
  */
-static u8 icl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes)
+static u8 icl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus)
 {
 	/*
 	 * FIXME: For ICL this is still a bit unclear as prev BSpec revision
@@ -4856,37 +4875,41 @@ static u8 icl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes)
 	 * still here - we will need it once those additional constraints
 	 * pop up.
 	 */
-	return compute_dbuf_slices(pipe, active_pipes, icl_allowed_dbufs);
+	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
+				   icl_allowed_dbufs);
 }
 
-static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes)
+static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus)
 {
-	return compute_dbuf_slices(pipe, active_pipes, tgl_allowed_dbufs);
+	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
+				   tgl_allowed_dbufs);
 }
 
-static u32 adlp_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
+static u8 adlp_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus)
 {
-	return compute_dbuf_slices(pipe, active_pipes, adlp_allowed_dbufs);
+	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
+				   adlp_allowed_dbufs);
 }
 
-static u32 dg2_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
+static u8 dg2_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join_mbus)
 {
-	return compute_dbuf_slices(pipe, active_pipes, dg2_allowed_dbufs);
+	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
+				   dg2_allowed_dbufs);
 }
 
-static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
+static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes, bool join_mbus)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	if (IS_DG2(dev_priv))
-		return dg2_compute_dbuf_slices(pipe, active_pipes);
+		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	else if (IS_ALDERLAKE_P(dev_priv))
-		return adlp_compute_dbuf_slices(pipe, active_pipes);
+		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	else if (DISPLAY_VER(dev_priv) == 12)
-		return tgl_compute_dbuf_slices(pipe, active_pipes);
+		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	else if (DISPLAY_VER(dev_priv) == 11)
-		return icl_compute_dbuf_slices(pipe, active_pipes);
+		return icl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
 	/*
 	 * For anything else just return one slice yet.
 	 * Should be extended for other platforms.
@@ -6139,11 +6162,16 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	if (IS_ALDERLAKE_P(dev_priv))
+		new_dbuf_state->joined_mbus =
+			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
+
 	for_each_intel_crtc(&dev_priv->drm, crtc) {
 		enum pipe pipe = crtc->pipe;
 
 		new_dbuf_state->slices[pipe] =
-			skl_compute_dbuf_slices(crtc, new_dbuf_state->active_pipes);
+			skl_compute_dbuf_slices(crtc, new_dbuf_state->active_pipes,
+						new_dbuf_state->joined_mbus);
 
 		if (old_dbuf_state->slices[pipe] == new_dbuf_state->slices[pipe])
 			continue;
@@ -6155,9 +6183,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 	new_dbuf_state->enabled_slices = intel_dbuf_enabled_slices(new_dbuf_state);
 
-	if (IS_ALDERLAKE_P(dev_priv))
-		new_dbuf_state->joined_mbus = adlp_check_mbus_joined(new_dbuf_state->active_pipes);
-
 	if (old_dbuf_state->enabled_slices != new_dbuf_state->enabled_slices ||
 	    old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 		ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
@@ -6658,7 +6683,8 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		}
 
 		dbuf_state->slices[pipe] =
-			skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes);
+			skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
+						dbuf_state->joined_mbus);
 
 		dbuf_state->weight[pipe] = intel_crtc_ddb_weight(crtc_state);
 
-- 
2.34.1

