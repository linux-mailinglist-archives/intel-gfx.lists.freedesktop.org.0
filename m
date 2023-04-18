Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DDD6E6B90
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 068D810E842;
	Tue, 18 Apr 2023 17:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD82310E813
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840585; x=1713376585;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yajWs9CptDOoiLUH/Q6+x4YVAzCIxsrFwHYoePEnNTA=;
 b=Sp3yja0cjhB8uug2lZxxhKz7+JWPhFVs1koCG2nf2jIGGff0/uc6GJAA
 CpmmJamEek7ARFc0I9LbaxvJAEm2Cpv9++f/2CmcE8LtD94B4Wllb/JNc
 6gQNdWx2PV49E7y7/PaMZH31NytSPMPQO55p1HnTDusZgiLcc/ijiGFbX
 38tKnC3pKs+cH9sqc3f5ArTcx/Mqlavv5qt/DHMAwKq5p6dOsRncudK5E
 uNPZjfxOcBYBiMyVefnXGuWDhqgAALKcPDXq3Mja2ugVg89AzIhcaD6p7
 HCL9mhZ/rylme4OfBJlVipOEiLRA6Sd7jxQoHSWSOKxE6AQhR23Ec9xPt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002273"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002273"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302685"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302685"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:56:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:56:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:27 +0300
Message-Id: <20230418175528.13117-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: Use REG_BIT() & co. for pipe
 scaler registers
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

Pimp the skl+ scaler register bits with REG_BIT()/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 98 ++++++++++++++++++---------------
 1 file changed, 53 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 68581864fb44..9a6343d2e0fa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4049,52 +4049,58 @@
 #define _PS_1B_CTRL      0x68980
 #define _PS_2B_CTRL      0x68A80
 #define _PS_1C_CTRL      0x69180
-#define PS_SCALER_EN        (1 << 31)
-#define SKL_PS_SCALER_MODE_MASK (3 << 28)
-#define SKL_PS_SCALER_MODE_DYN  (0 << 28)
-#define SKL_PS_SCALER_MODE_HQ  (1 << 28)
-#define SKL_PS_SCALER_MODE_NV12 (2 << 28)
-#define PS_SCALER_MODE_PLANAR (1 << 29)
-#define PS_SCALER_MODE_NORMAL (0 << 29)
-#define PS_BINDING_MASK (7 << 25)
-#define PS_BINDING_PIPE (0 << 25)
-#define PS_BINDING_PLANE(plane_id) (((plane_id) + 1) << 25)
-#define PS_FILTER_MASK         (3 << 23)
-#define PS_FILTER_MEDIUM       (0 << 23)
-#define PS_FILTER_PROGRAMMED   (1 << 23)
-#define PS_FILTER_EDGE_ENHANCE (2 << 23)
-#define PS_FILTER_BILINEAR     (3 << 23)
-#define PS_VERT3TAP            (1 << 21)
-#define PS_VERT_INT_INVERT_FIELD1 (0 << 20)
-#define PS_VERT_INT_INVERT_FIELD0 (1 << 20)
-#define PS_PWRUP_PROGRESS         (1 << 17)
-#define PS_V_FILTER_BYPASS        (1 << 8)
-#define PS_VADAPT_EN              (1 << 7)
-#define PS_VADAPT_MODE_MASK        (3 << 5)
-#define PS_VADAPT_MODE_LEAST_ADAPT (0 << 5)
-#define PS_VADAPT_MODE_MOD_ADAPT   (1 << 5)
-#define PS_VADAPT_MODE_MOST_ADAPT  (3 << 5)
-#define PS_BINDING_Y_MASK  (7 << 5)
-#define PS_BINDING_Y_PLANE(plane_id) (((plane_id) + 1) << 5)
-#define PS_Y_VERT_FILTER_SELECT(set)   ((set) << 4)
-#define PS_Y_HORZ_FILTER_SELECT(set)   ((set) << 3)
-#define PS_UV_VERT_FILTER_SELECT(set)  ((set) << 2)
-#define PS_UV_HORZ_FILTER_SELECT(set)  ((set) << 1)
+#define   PS_SCALER_EN				REG_BIT(31)
+#define   SKL_PS_SCALER_MODE_MASK		REG_GENMASK(29, 28) /* skl/bxt */
+#define   SKL_PS_SCALER_MODE_DYN		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 0)
+#define   SKL_PS_SCALER_MODE_HQ			REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 1)
+#define   SKL_PS_SCALER_MODE_NV12		REG_FIELD_PREP(SKL_PS_SCALER_MODE_MASK, 2)
+#define   PS_SCALER_MODE_MASK			REG_BIT(29) /* glk-tgl */
+#define   PS_SCALER_MODE_NORMAL			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 0)
+#define   PS_SCALER_MODE_PLANAR			REG_FIELD_PREP(PS_SCALER_MODE_MASK, 1)
+#define   PS_BINDING_MASK			REG_GENMASK(27, 25)
+#define   PS_BINDING_PIPE			REG_FIELD_PREP(PS_BINDING_MASK, 0)
+#define   PS_BINDING_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_MASK, (plane_id) + 1)
+#define   PS_FILTER_MASK			REG_GENMASK(24, 23)
+#define   PS_FILTER_MEDIUM			REG_FIELD_PREP(PS_FILTER_MASK, 0)
+#define   PS_FILTER_PROGRAMMED			REG_FIELD_PREP(PS_FILTER_MASK, 1)
+#define   PS_FILTER_EDGE_ENHANCE		REG_FIELD_PREP(PS_FILTER_MASK, 2)
+#define   PS_FILTER_BILINEAR			REG_FIELD_PREP(PS_FILTER_MASK, 3)
+#define   PS_VERT3TAP				REG_BIT(21) /* skl/bxt */
+#define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
+#define   PS_PWRUP_PROGRESS			REG_BIT(17)
+#define   PS_V_FILTER_BYPASS			REG_BIT(8)
+#define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt */
+#define   PS_VADAPT_MODE_MASK			REG_GENMASK(6, 5) /* skl/bxt */
+#define   PS_VADAPT_MODE_LEAST_ADAPT		REG_FIELD_PREP(PS_VADAPT_MODE_MASK, 0)
+#define   PS_VADAPT_MODE_MOD_ADAPT		REG_FIELD_PREP(PS_VADAPT_MODE_MASK, 1)
+#define   PS_VADAPT_MODE_MOST_ADAPT		REG_FIELD_PREP(PS_VADAPT_MODE_MASK, 3)
+#define   PS_BINDING_Y_MASK			REG_GENMASK(7, 5) /* icl-tgl */
+#define   PS_BINDING_Y_PLANE(plane_id)		REG_FIELD_PREP(PS_BINDING_Y_MASK, (plane_id) + 1)
+#define   PS_Y_VERT_FILTER_SELECT_MASK		REG_BIT(4) /* glk+ */
+#define   PS_Y_VERT_FILTER_SELECT(set)		REG_FIELD_PREP(PS_Y_VERT_FILTER_SELECT_MASK, (set))
+#define   PS_Y_HORZ_FILTER_SELECT_MASK		REG_BIT(3) /* glk+ */
+#define   PS_Y_HORZ_FILTER_SELECT(set)		REG_FIELD_PREP(PS_Y_HORZ_FILTER_SELECT_MASK, (set))
+#define   PS_UV_VERT_FILTER_SELECT_MASK		REG_BIT(2) /* glk+ */
+#define   PS_UV_VERT_FILTER_SELECT(set)		REG_FIELD_PREP(PS_UV_VERT_FILTER_SELECT_MASK, (set))
+#define   PS_UV_HORZ_FILTER_SELECT_MASK		REG_BIT(1) /* glk+ */
+#define   PS_UV_HORZ_FILTER_SELECT(set)		REG_FIELD_PREP(PS_UV_HORZ_FILTER_SELECT_MASK, (set))
 
 #define _PS_PWR_GATE_1A     0x68160
 #define _PS_PWR_GATE_2A     0x68260
 #define _PS_PWR_GATE_1B     0x68960
 #define _PS_PWR_GATE_2B     0x68A60
 #define _PS_PWR_GATE_1C     0x69160
-#define PS_PWR_GATE_DIS_OVERRIDE       (1 << 31)
-#define PS_PWR_GATE_SETTLING_TIME_32   (0 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_64   (1 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_96   (2 << 3)
-#define PS_PWR_GATE_SETTLING_TIME_128  (3 << 3)
-#define PS_PWR_GATE_SLPEN_8             0
-#define PS_PWR_GATE_SLPEN_16            1
-#define PS_PWR_GATE_SLPEN_24            2
-#define PS_PWR_GATE_SLPEN_32            3
+#define   PS_PWR_GATE_DIS_OVERRIDE		REG_BIT(31)
+#define   PS_PWR_GATE_SETTLING_TIME_MASK	REG_GENMASK(4, 3)
+#define   PS_PWR_GATE_SETTLING_TIME_32		REG_FIELD_PREP(PS_PWR_GATE_SETTLING_TIME_MASK, 0)
+#define   PS_PWR_GATE_SETTLING_TIME_64		REG_FIELD_PREP(PS_PWR_GATE_SETTLING_TIME_MASK, 1)
+#define   PS_PWR_GATE_SETTLING_TIME_96		REG_FIELD_PREP(PS_PWR_GATE_SETTLING_TIME_MASK, 2)
+#define   PS_PWR_GATE_SETTLING_TIME_128		REG_FIELD_PREP(PS_PWR_GATE_SETTLING_TIME_MASK, 3)
+#define   PS_PWR_GATE_SLPEN_MASK		REG_GENMASK(1, 0)
+#define   PS_PWR_GATE_SLPEN_8			REG_FIELD_PREP(PS_PWR_GATE_SLPEN_MASK, 0)
+#define   PS_PWR_GATE_SLPEN_16			REG_FIELD_PREP(PS_PWR_GATE_SLPEN_MASK, 1)
+#define   PS_PWR_GATE_SLPEN_24			REG_FIELD_PREP(PS_PWR_GATE_SLPEN_MASK, 2)
+#define   PS_PWR_GATE_SLPEN_32			REG_FIELD_PREP(PS_PWR_GATE_SLPEN_MASK, 3)
 
 #define _PS_WIN_POS_1A      0x68170
 #define _PS_WIN_POS_2A      0x68270
@@ -4133,10 +4139,12 @@
 #define _PS_VPHASE_1B       0x68988
 #define _PS_VPHASE_2B       0x68A88
 #define _PS_VPHASE_1C       0x69188
-#define  PS_Y_PHASE(x)		((x) << 16)
-#define  PS_UV_RGB_PHASE(x)	((x) << 0)
-#define   PS_PHASE_MASK	(0x7fff << 1) /* u2.13 */
-#define   PS_PHASE_TRIP	(1 << 0)
+#define   PS_Y_PHASE_MASK			REG_GENMASK(31, 16)
+#define   PS_Y_PHASE(x)				REG_FIELD_PREP(PS_Y_PHASE_MASK, (x))
+#define   PS_UV_RGB_PHASE_MASK			REG_GENMASK(15, 0)
+#define   PS_UV_RGB_PHASE(x)			REG_FIELD_PREP(PS_UV_RGB_PHASE_MASK, (x))
+#define   PS_PHASE_MASK				(0x7fff << 1) /* u2.13 */
+#define   PS_PHASE_TRIP				(1 << 0)
 
 #define _PS_HPHASE_1A       0x68194
 #define _PS_HPHASE_2A       0x68294
@@ -4154,7 +4162,7 @@
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
 #define _PS_COEF_SET0_INDEX_1B	   0x68998
 #define _PS_COEF_SET0_INDEX_2B	   0x68A98
-#define PS_COEF_INDEX_AUTO_INC	   (1 << 10)
+#define   PS_COEF_INDEX_AUTO_INC		REG_BIT(10)
 
 #define _PS_COEF_SET0_DATA_1A	   0x6819C
 #define _PS_COEF_SET0_DATA_2A	   0x6829C
-- 
2.39.2

