Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6CD52492D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 11:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A3610EC67;
	Thu, 12 May 2022 09:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26A8E10ED0B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652348230; x=1683884230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LJP+TJmpiJAz9XKhJlHl7HFjicNfuAKkO0tjMWzN/Pk=;
 b=ZOXK9KgyIqGBsswZuFUrOOKfyytioMAWP/7vb1Nv9Vq6c4Afazpt55jt
 eD7yaFeViIiCitcsgl6p7CFtunzqGfW8v2LK17WWBn/fDZdPviGVxw30R
 nMBcoGeMMpzhpwHgmBJO32yNxBBvDXMNWNzWaQeXszeVV5OtG1IcsHAvs
 AjiyP7tHhWqV+k4jSrLR2vMTkzoswzCuh5Weho/6Szh88CVwhWDQy356X
 A31DGF7aGyRXehXN57Ip3idPlycG9VvI4R/KLyrSTyot8uw4926HtJQ3O
 OROMSiDEwV1NKplQmEWpSbwGK7I9QWanYP4zLbrKpr6ITobsCSixCtftM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269890160"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="269890160"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 02:37:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="603305388"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 02:37:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 12:37:05 +0300
Message-Id: <20220512093705.2217613-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220511191911.2133928-1-imre.deak@intel.com>
References: <20220511191911.2133928-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/d12+: Disable DMC firmware flip
 queue handlers
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

Based on a bspec update the DMC firmware's flip queue handling events
need to be disabled before enabling DC5/6. i915 doesn't use the flip
queue feature atm, so disable it already after loading the firmware.
This removes some overhead of the event handler which runs at a 1 kHz
frequency.

Bspec: 49193, 72486, 72487

v2:
- Fix the DMC pipe A register offsets for GEN12.
- Disable the events on DG2 only on pipe A..D .

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com> # v1
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 89 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 41 +++++++++
 2 files changed, 129 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4b..0ede8c86c6ccb 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -244,9 +244,14 @@ struct stepping_info {
 	char substepping;
 };
 
+static bool intel_dmc_has_fw_payload(struct drm_i915_private *i915, int dmc_id)
+{
+	return i915->dmc.dmc_info[dmc_id].payload;
+}
+
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
 {
-	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
+	return intel_dmc_has_fw_payload(i915, DMC_FW_MAIN);
 }
 
 static const struct stepping_info *
@@ -268,6 +273,81 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
 	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
 }
 
+static void
+disable_simple_flip_queue_event(struct drm_i915_private *i915,
+				i915_reg_t ctl_reg, i915_reg_t htp_reg)
+{
+	u32 event_ctl;
+	u32 event_htp;
+
+	event_ctl = intel_de_read(i915, ctl_reg);
+	event_htp = intel_de_read(i915, htp_reg);
+	if (event_ctl != (DMC_EVT_CTL_ENABLE |
+			  DMC_EVT_CTL_RECURRING |
+			  REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+					 DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+					 DMC_EVT_CTL_EVENT_ID_CLK_MSEC)) ||
+	    !event_htp) {
+		drm_dbg_kms(&i915->drm,
+			    "Unexpected DMC event configuration (control %08x htp %08x)\n",
+			    event_ctl, event_htp);
+		return;
+	}
+
+	intel_de_write(i915, ctl_reg,
+		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
+		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				      DMC_EVT_CTL_EVENT_ID_FALSE));
+	intel_de_write(i915, htp_reg, 0);
+}
+
+static bool
+get_simple_flip_queue_event_regs(struct drm_i915_private *i915, int dmc_id,
+				 i915_reg_t *ctl_reg, i915_reg_t *htp_reg)
+{
+	switch (dmc_id) {
+	case DMC_FW_MAIN:
+		if (DISPLAY_VER(i915) == 12) {
+			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 3);
+			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 3);
+
+			return true;
+		}
+		break;
+	case DMC_FW_PIPEA ... DMC_FW_PIPED:
+		if (IS_DG2(i915)) {
+			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 2);
+			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 2);
+
+			return true;
+		}
+		break;
+	}
+
+	return false;
+}
+
+static void
+disable_all_simple_flip_queue_events(struct drm_i915_private *i915)
+{
+	int dmc_id;
+
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+		i915_reg_t ctl_reg;
+		i915_reg_t htp_reg;
+
+		if (!intel_dmc_has_fw_payload(i915, dmc_id))
+			continue;
+
+		if (!get_simple_flip_queue_event_regs(i915, dmc_id, &ctl_reg, &htp_reg))
+			continue;
+
+		disable_simple_flip_queue_event(i915, ctl_reg, htp_reg);
+	}
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
@@ -308,6 +388,13 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	dev_priv->dmc.dc_state = 0;
 
 	gen9_set_dc_state_debugmask(dev_priv);
+
+	/*
+	 * Flip queue events need to be disabled before enabling DC5/6.
+	 * i915 doesn't use the flip queue feature, so disable it already
+	 * here.
+	 */
+	disable_all_simple_flip_queue_events(dev_priv);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index d65e698832eb5..43d780148b196 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -10,6 +10,47 @@
 
 #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
 #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
+
+#define _PIPEDMC_REG_MMIO_BASE_A_GEN13	0x5f000
+#define _PIPEDMC_REG_MMIO_BASE_A_GEN12	0x92000
+
+#define _PIPEDMC_REG_MMIO_BASE(i915, dmc_id) \
+	((DISPLAY_VER(i915) >= 13 ? _PIPEDMC_REG_MMIO_BASE_A_GEN13 : \
+				    _PIPEDMC_REG_MMIO_BASE_A_GEN12) + \
+	 0x400 * ((dmc_id) - 1))
+
+#define _MAINDMC_REG_MMIO_BASE		0x8f000
+
+#define _DMC_REG_MMIO_BASE(i915, dmc_id) \
+	((dmc_id) == DMC_FW_MAIN ? _MAINDMC_REG_MMIO_BASE : \
+				   _PIPEDMC_REG_MMIO_BASE(i915, dmc_id))
+
+#define _DMC_REG(i915, dmc_id, reg) \
+	((reg) - _MAINDMC_REG_MMIO_BASE + _DMC_REG_MMIO_BASE(i915, dmc_id))
+
+#define _MAINDMC_EVT_HTP_0		0x8f004
+
+#define DMC_EVT_HTP(i915, dmc_id, handler) \
+	_MMIO(_DMC_REG(i915, dmc_id, _MAINDMC_EVT_HTP_0) + 4 * (handler))
+
+#define _MAINDMC_EVT_CTL_0		0x8f034
+
+#define DMC_EVT_CTL(i915, dmc_id, handler) \
+	_MMIO(_DMC_REG(i915, dmc_id, _MAINDMC_EVT_CTL_0) + 4 * (handler))
+
+#define DMC_EVT_CTL_ENABLE		REG_BIT(31)
+#define DMC_EVT_CTL_RECURRING		REG_BIT(30)
+#define DMC_EVT_CTL_TYPE_MASK		REG_GENMASK(17, 16)
+#define DMC_EVT_CTL_TYPE_LEVEL_0	0
+#define DMC_EVT_CTL_TYPE_LEVEL_1	1
+#define DMC_EVT_CTL_TYPE_EDGE_1_0	2
+#define DMC_EVT_CTL_TYPE_EDGE_0_1	3
+
+#define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
+#define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
+/* An event handler scheduled to run at a 1 kHz frequency. */
+#define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
+
 #define DMC_HTP_ADDR_SKL	0x00500034
 #define DMC_SSP_BASE		_MMIO(0x8F074)
 #define DMC_HTP_SKL		_MMIO(0x8F004)
-- 
2.30.2

