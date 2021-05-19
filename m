Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD55388376
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6812D6E134;
	Wed, 19 May 2021 00:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B041E6E111
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:53 +0000 (UTC)
IronPort-SDR: EWYL7Qi0ozszA/ZHX17ofj9pFcl76OitKl2dKdULbcUC1kMpCIvDF4Rb/gUkQfDUbkxLW16e0m
 JK4e8QCAqL0A==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768408"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768408"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
IronPort-SDR: vJRjsBp1WSYmCZnGVvL1jewe0Mkj/VRTpbvZNvx6ffa7ZpHVW7YHs6hBRg8OPT+QxIHPI+wduD
 clqGauKvhOEw==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214763"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:15 -0700
Message-Id: <20210519000625.3184321-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 07/17] drm/i915/adl_p: Add ddb allocation support
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

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

On adlp the two mbuses have two display pipes and
two DBUFS, Pipe A and D on Mbus1 and Pipe B and C on
Mbus2. The Mbus can be joined and all the DBUFS can be
used on Pipe A or B.

Bspec: 49255
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h |  22 ++++--
 drivers/gpu/drm/i915/intel_pm.c | 121 +++++++++++++++++++++++++++++++-
 2 files changed, 138 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8bd6c36837aa..5cf5e5d7deee 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7299,7 +7299,7 @@ enum {
 
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
-#define  DDB_ENTRY_MASK				0x7FF /* skl+: 10 bits, icl+ 11 bits */
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
 #define  DDB_ENTRY_END_SHIFT			16
 #define _PLANE_BUF_CFG_1(pipe)	\
 	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
@@ -8134,9 +8134,23 @@ enum {
 #define  DISP_DATA_PARTITION_5_6	(1 << 6)
 #define  DISP_IPC_ENABLE		(1 << 3)
 
-#define _DBUF_CTL_S1				0x45008
-#define _DBUF_CTL_S2				0x44FE8
-#define DBUF_CTL_S(slice)			_MMIO(_PICK_EVEN(slice, _DBUF_CTL_S1, _DBUF_CTL_S2))
+/*
+ * The below are numbered starting from "S1" on gen11/gen12, but starting
+ * with gen13 display, the bspec switches to a 0-based numbering scheme
+ * (although the addresses stay the same so new S0 = old S1, new S1 = old S2).
+ * We'll just use the 0-based numbering here for all platforms since it's the
+ * way things will be named by the hardware team going forward, plus it's more
+ * consistent with how most of the rest of our registers are named.
+ */
+#define _DBUF_CTL_S0				0x45008
+#define _DBUF_CTL_S1				0x44FE8
+#define _DBUF_CTL_S2				0x44300
+#define _DBUF_CTL_S3				0x44304
+#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
+							    _DBUF_CTL_S0, \
+							    _DBUF_CTL_S1, \
+							    _DBUF_CTL_S2, \
+							    _DBUF_CTL_S3))
 #define  DBUF_POWER_REQUEST			REG_BIT(31)
 #define  DBUF_POWER_STATE			REG_BIT(30)
 #define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 95fda20d5547..411ec468d02a 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4558,6 +4558,118 @@ static const struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =
 	{}
 };
 
+static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] = {
+	{
+		.active_pipes = BIT(PIPE_A),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
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
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{
+		.active_pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+		.dbuf_mask = {
+			[PIPE_A] = BIT(DBUF_S1) | BIT(DBUF_S2),
+			[PIPE_B] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_C] = BIT(DBUF_S3) | BIT(DBUF_S4),
+			[PIPE_D] = BIT(DBUF_S1) | BIT(DBUF_S2),
+		},
+	},
+	{}
+
+};
+
 static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes,
 			      const struct dbuf_slice_conf_entry *dbuf_slices)
 {
@@ -4597,12 +4709,19 @@ static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes)
 	return compute_dbuf_slices(pipe, active_pipes, tgl_allowed_dbufs);
 }
 
+static u32 adlp_compute_dbuf_slices(enum pipe pipe, u32 active_pipes)
+{
+	return compute_dbuf_slices(pipe, active_pipes, adlp_allowed_dbufs);
+}
+
 static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (IS_ALDERLAKE_P(dev_priv))
+		return adlp_compute_dbuf_slices(pipe, active_pipes);
+	else if (DISPLAY_VER(dev_priv) == 12)
 		return tgl_compute_dbuf_slices(pipe, active_pipes);
 	else if (DISPLAY_VER(dev_priv) == 11)
 		return icl_compute_dbuf_slices(pipe, active_pipes);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
