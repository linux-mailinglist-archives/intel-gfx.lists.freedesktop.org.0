Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AC06A0B01
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFE110EB96;
	Thu, 23 Feb 2023 13:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77AD710EB92
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159953; x=1708695953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pfx4c4opZrJ4bfYcfnBPCM+NJHmmYj87tQq+N/+v6RE=;
 b=bf5ojhhdlpKpyonnqvlil4nkbJdk8NQUMx6e5e6DAOB+8mjtvp5yAWMX
 8tk2bYhWEo6KC4X+UaQOUkNkzJEMS9MeZa19Dj7RhLVM6sXl9tHHysKln
 51pxr1Dy9dK6QIPn4vfHwLv0rcA/G6y5PNcZbjZFNcX0vQVTeffQWPd+C
 ltzoZm3WXufhorLl3G7+sGRwsPwj9kxqRcWp2umDz512PRCKr8A9lC983
 T/c6eci/H2HBimEeuyNMq5+IEdC9877/g3bUrqDq2tyI2TM/zDkbGtn2E
 Qgs5oEwPpwc7cZrVwRRDsvggS0bcAYa5IJPOqJ9QC3x841hA87jJNWlGh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581653"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581653"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562473"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562473"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:49 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:09 +0200
Message-Id: <20230223134021.2236889-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/22] drm/i915/mtl: Dump C20 pll hw state
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

As we already do with C10 chip, let's dump the pll
hw state for C20 as well.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index bfb264ea154a..bc6913a7444a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1874,6 +1874,26 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 }
 
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state)
+{
+	int i;
+
+	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
+		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
+	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
+		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
+
+	if (intel_c20_use_mplla(hw_state->clock)) {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
+			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
+	} else {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
+			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+	}
+}
+
 static u8 intel_c20_get_dp_rate(u32 clock)
 {
 	switch (clock) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index cf603080ce3d..0b46b2ad48a9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -37,6 +37,8 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
                                    struct intel_c20pll_state *pll_state);
 void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
 				  const struct intel_c10mpllb_state *hw_state);
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state);
 int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8e653061adb9..4e8f3632b3bc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3522,6 +3522,7 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
+		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20pll_state);
 	}
 
 	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-- 
2.34.1

