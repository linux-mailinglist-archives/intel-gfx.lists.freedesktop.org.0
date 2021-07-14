Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6551B3C7CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2166E18F;
	Wed, 14 Jul 2021 03:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26106E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085874"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085874"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031573"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:27 -0700
Message-Id: <20210714031540.3539704-38-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 37/50] drm/i915/dg2: Add dbuf programming
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG2 extends our DDB to four DBuf slices; pipes A+B only have access to
the first two slices, whereas pipes C+D only have access to the second
two.

Confusingly, our bspec decided to switch from 1-based numbering
of dbuf slices (S1, S2) to 0-based numbering (S0, S1, S2, S3) in
Display13.  At the moment we're using the 0-based number scheme for the
DBUF_CTL_S() register addressing, but the 1-based number scheme in the
actual slice assignment tables.  We may want to consider switching the
assignment over to 0-based numbering too at some point...

Bspec: 49255
Bspec: 50057
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_power.h    |   4 +
 drivers/gpu/drm/i915/intel_pm.c               | 120 +++++++++++++++++-
 2 files changed, 123 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 22367b5cba96..ad788bbd727d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -392,6 +392,10 @@ intel_display_power_put_all_in_set(struct drm_i915_private *i915,
 	intel_display_power_put_mask_in_set(i915, power_domain_set, power_domain_set->mask);
 }
 
+/*
+ * FIXME: We should probably switch this to a 0-based scheme to be consistent
+ * with how we now name/number DBUF_CTL instances.
+ */
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0cbb79452fcf..d7c7f061a26e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4584,6 +4584,117 @@ static const struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =
 	{}
 };
 
+static const struct dbuf_slice_conf_entry dg2_allowed_dbufs[] = {
+	{
+		.active_pipes = BIT(PIPE_A),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1),
+			[PIPE_B] = BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_C),
+		.dbuf_mask = {
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_C),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B) | BIT(PIPE_C),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1),
+			[PIPE_B] = BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_D] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_D] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_D] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1),
+			[PIPE_B] = BIT(DBUF_S2),
+			[PIPE_D] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_C] = BIT(DBUF_S3),
+			[PIPE_D] = BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3),
+			[PIPE_D] = BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3),
+			[PIPE_D] = BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1),
+			[PIPE_B] = BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3),
+			[PIPE_D] = BIT(DBUF_S4),
+		},
+	},
+	{}
+};
+
 static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
 	{
 		.active_pipes = BIT(PIPE_A),
@@ -4759,12 +4870,19 @@ static u32 adlp_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
 	return compute_dbuf_slices(pipe, active_pipes, adlp_allowed_dbufs);
 }
 
+static u32 dg2_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
+{
+	return compute_dbuf_slices(pipe, active_pipes, dg2_allowed_dbufs);
+}
+
 static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (IS_DG2(dev_priv))
+		return dg2_compute_dbuf_slices(pipe, active_pipes);
+	else if (IS_ALDERLAKE_P(dev_priv))
 		return adlp_compute_dbuf_slices(pipe, active_pipes);
 	else if (DISPLAY_VER(dev_priv) == 12)
 		return tgl_compute_dbuf_slices(pipe, active_pipes);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
