Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76422376EAC
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A726E848;
	Sat,  8 May 2021 02:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1926E82B
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:31 +0000 (UTC)
IronPort-SDR: Dl/E1BLgBxmTOUNH6tB9sQtN3ni3jRTV5blm6tNA0RRdycHqf/C8NvJSu2JeJiMllqwYAUtK/F
 1Co7hLA0a+cA==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="284317015"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="284317015"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:30 -0700
IronPort-SDR: EXkVBqcWIiqk4tGSsrX8Ao3FDeakeOGWwE9mW1Uk3IsgRbBNzm07n1g6Prs8Csq2mzhYS7yI0T
 /xUDLPf9Q6Bw==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910113"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:27:58 -0700
Message-Id: <20210508022820.780227-27-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 26/48] drm/i915/adl_p: Add ddb allocation
 support
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
---
 drivers/gpu/drm/i915/i915_reg.h |  22 ++++--
 drivers/gpu/drm/i915/intel_pm.c | 121 +++++++++++++++++++++++++++++++-
 2 files changed, 138 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 93405171c7b9..d3a1801a3228 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7305,7 +7305,7 @@ enum {
 
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
-#define  DDB_ENTRY_MASK				0x7FF /* skl+: 10 bits, icl+ 11 bits */
+#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
 #define  DDB_ENTRY_END_SHIFT			16
 #define _PLANE_BUF_CFG_1(pipe)	\
 	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
@@ -8142,9 +8142,23 @@ enum {
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
index cac073f6f024..934bd08a9a1f 100644
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
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
