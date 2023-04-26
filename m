Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CBA6EF5D3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A2010E9AE;
	Wed, 26 Apr 2023 13:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1481F10E9A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682517040; x=1714053040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oXQPeB7CNa1eidOp3x/OHrwYekQNLVoRy00TIFZ1KwY=;
 b=IEfbGt6RZC+fCI9IrJ0UHtcCauMWCiXQnsl+Ixfc01s9vswfiEnHDIij
 zXQfZu6fMoi8d+/B2kah/srw3EaMzMHMSassi6kUaSNCuyEDVXmvjerbY
 xJ1ez0AA0dXUCQNyH0gMvY/ZKqv6l6Ff8cJjnbCywef8m9bpf1e/qX+3Y
 wbb2orUqynsva+UHsCVedsxrJspyoFG3RDJMvLWzbUcEN3GnFEZY3Yf9d
 5HQx1pJ6uLocZsCmdxUQgEzfwQRITvqKMnzPo9S+ZphzNC90Kd103rL7T
 EQTCxogadZb2oNgP6hd1FZrMn6owuWqf3zlpmL9GJQwIf3dR51OXj8Dh3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327436810"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327436810"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="805514278"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="805514278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2023 06:50:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Apr 2023 16:50:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 16:50:18 +0300
Message-Id: <20230426135019.7603-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915: Use REG_BIT() & co. for pipe
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pimp the skl+ scaler register bits with REG_BIT()/etc.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 98 ++++++++++++++++++---------------
 1 file changed, 53 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b6f691107571..f5ae8d1eb6ff 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4054,52 +4054,58 @@
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
@@ -4138,10 +4144,12 @@
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
@@ -4159,7 +4167,7 @@
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
 #define _PS_COEF_SET0_INDEX_1B	   0x68998
 #define _PS_COEF_SET0_INDEX_2B	   0x68A98
-#define PS_COEF_INDEX_AUTO_INC	   (1 << 10)
+#define   PS_COEF_INDEX_AUTO_INC		REG_BIT(10)
 
 #define _PS_COEF_SET0_DATA_1A	   0x6819C
 #define _PS_COEF_SET0_DATA_2A	   0x6829C
-- 
2.39.2

