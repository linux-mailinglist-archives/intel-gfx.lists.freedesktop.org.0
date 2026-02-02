Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOK1Lq4agWm0EAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1741CD1B8E
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C370F10E3E4;
	Mon,  2 Feb 2026 21:44:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAv8EA5w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C2910E3E4;
 Mon,  2 Feb 2026 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770068649; x=1801604649;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=3Jddy6Dwph+Eu+kdSSsJMS9S3fkZ+8xpyFVV8RYze9k=;
 b=GAv8EA5wKWzhBufPed84fPo7mobiRnzpujt0PaUouxsipxrZXLnvbxfh
 8t+j9VSmGupqjpHmky1xoGnGhGY1GYXty4nLe1hIO6DqH1EPxD1AE8pD0
 g4J+YzNpL79bGfuWOvJFK8EfyvpiQtoucyghAvijOUWJ9cUEvAkMgJcN2
 I+A49LcBWx3p6S2t+bo/xRvt3VrreQtX2NPcJCs/s9xNSfrzMjF/K2r75
 N972xNF8oDhBZj/2l5dw+dUggz1F5vKXOc7jpNQDtibrVQkDxKM7uBI8j
 AMWLKwFm7vAfjanPLPqID0gIwHzoMILYtIYjH1oqZl1h5M3R9r87Z/Oua Q==;
X-CSE-ConnectionGUID: ADmcKLdtQlOk0e1/l+ATVQ==
X-CSE-MsgGUID: 07J2IErlR/+CYRx4z6MNVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="58814327"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="58814327"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:08 -0800
X-CSE-ConnectionGUID: yRvanjATRFWBy0Rwl35C8w==
X-CSE-MsgGUID: rNHlJXJIRgmMuaRpVIknRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209646812"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.51])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:06 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 02 Feb 2026 18:43:08 -0300
Subject: [PATCH 02/16] drm/xe/xe3p_lpg: Add initial workarounds for
 graphics version 35.10
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-nvl-p-upstreaming-v1-2-653e4ff105dc@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Nitin Gote <nitin.r.gote@intel.com>, 
 Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>, 
 Mallesh Koujalagi <mallesh.koujalagi@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1741CD1B8E
X-Rspamd-Action: no action

From: Shekhar Chauhan <shekhar.chauhan@intel.com>

Add the initial set of workarounds for Xe3p_LPG graphics version 35.10.

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Co-developed-by: Nitin Gote <nitin.r.gote@intel.com>
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
Co-developed-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
Signed-off-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
Co-developed-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
Signed-off-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h  | 19 ++++++++++++++
 drivers/gpu/drm/xe/xe_reg_whitelist.c |  8 ++++++
 drivers/gpu/drm/xe/xe_wa.c            | 48 +++++++++++++++++++++++++++++++++++
 3 files changed, 75 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index 24fc64fc832e..b5a7cc45f13d 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -100,6 +100,9 @@
 #define VE1_AUX_INV				XE_REG(0x42b8)
 #define   AUX_INV				REG_BIT(0)
 
+#define GAMSTLB_CTRL2				XE_REG_MCR(0x4788)
+#define   STLB_SINGLE_BANK_MODE			REG_BIT(11)
+
 #define XE2_LMEM_CFG				XE_REG(0x48b0)
 
 #define XE2_GAMWALK_CTRL			0x47e4
@@ -107,12 +110,18 @@
 #define XE2_GAMWALK_CTRL_3D			XE_REG_MCR(XE2_GAMWALK_CTRL)
 #define   EN_CMP_1WCOH_GW			REG_BIT(14)
 
+#define MMIOATSREQLIMIT_GAM_WALK_3D             XE_REG_MCR(0x47f8)
+#define   DIS_ATS_WRONLY_PG                     REG_BIT(18)
+
 #define XEHP_FLAT_CCS_BASE_ADDR			XE_REG_MCR(0x4910)
 #define XEHP_FLAT_CCS_PTR			REG_GENMASK(31, 8)
 
 #define WM_CHICKEN3				XE_REG_MCR(0x5588, XE_REG_OPTION_MASKED)
 #define   HIZ_PLANE_COMPRESSION_DIS		REG_BIT(10)
 
+#define TBIMR_MODE				XE_REG_MCR(0x6200, XE_REG_OPTION_MASKED)
+#define   RXBAR_NO_UAV_DEC_SYNC			REG_BIT(12)
+
 #define CHICKEN_RASTER_1			XE_REG_MCR(0x6204, XE_REG_OPTION_MASKED)
 #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
 #define   DIS_CLIP_NEGATIVE_BOUNDING_BOX	REG_BIT(6)
@@ -210,6 +219,9 @@
 
 #define GSCPSMI_BASE				XE_REG(0x880c)
 
+#define CCCHKNREG2				XE_REG_MCR(0x881c)
+#define  LOCALITYDIS				REG_BIT(7)
+
 #define CCCHKNREG1				XE_REG_MCR(0x8828)
 #define   L3CMPCTRL				REG_BIT(23)
 #define   ENCOMPPERFFIX				REG_BIT(18)
@@ -420,6 +432,8 @@
 #define   LSN_DIM_Z_WGT(value)			REG_FIELD_PREP(LSN_DIM_Z_WGT_MASK, value)
 
 #define L3SQCREG2				XE_REG_MCR(0xb104)
+#define   L3_SQ_DISABLE_COAMA_2WAY_COH		REG_BIT(30)
+#define   L3_SQ_DISABLE_COAMA			REG_BIT(22)
 #define   COMPMEMRD256BOVRFETCHEN		REG_BIT(20)
 
 #define L3SQCREG3				XE_REG_MCR(0xb108)
@@ -550,11 +564,16 @@
 #define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
 #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
 #define   XE2_ALLOC_DPA_STARVE_FIX_DIS		REG_BIT(47 - 32)
+#define   SAMPLER_LD_LSC_DISABLE                REG_BIT(45 - 32)
 #define   ENABLE_SMP_LD_RENDER_SURFACE_CONTROL	REG_BIT(44 - 32)
 #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
 #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
 #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
 #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
+#define   LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE	REG_BIT(35 - 32)
+
+#define ROW_CHICKEN5				XE_REG_MCR(0xe7f0)
+#define   CPSS_AWARE_DIS			REG_BIT(3)
 
 #define SARB_CHICKEN1				XE_REG_MCR(0xe90c)
 #define   COMP_CKN_IN				REG_GENMASK(30, 29)
diff --git a/drivers/gpu/drm/xe/xe_reg_whitelist.c b/drivers/gpu/drm/xe/xe_reg_whitelist.c
index 1d36c09681aa..9c513778d370 100644
--- a/drivers/gpu/drm/xe/xe_reg_whitelist.c
+++ b/drivers/gpu/drm/xe/xe_reg_whitelist.c
@@ -81,6 +81,14 @@ static const struct xe_rtp_entry_sr register_whitelist[] = {
 			 WHITELIST(VFLSKPD,
 				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
 	},
+	{ XE_RTP_NAME("14024997852"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
+		       ENGINE_CLASS(RENDER)),
+	  XE_RTP_ACTIONS(WHITELIST(FF_MODE,
+				   RING_FORCE_TO_NONPRIV_ACCESS_RW),
+			 WHITELIST(VFLSKPD,
+				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
+	},
 
 #define WHITELIST_OA_MMIO_TRG(trg, status, head) \
 	WHITELIST(trg, RING_FORCE_TO_NONPRIV_ACCESS_RW), \
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index a991ee2b8781..68a494743b34 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -306,6 +306,31 @@ static const struct xe_rtp_entry_sr gt_was[] = {
 	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3005)),
 	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
 	},
+
+	/* Xe3P_LPG */
+
+	{ XE_RTP_NAME("14025160223"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
+	  XE_RTP_ACTIONS(SET(MMIOATSREQLIMIT_GAM_WALK_3D,
+			     DIS_ATS_WRONLY_PG))
+	},
+	{ XE_RTP_NAME("16028780921"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
+	  XE_RTP_ACTIONS(SET(CCCHKNREG2, LOCALITYDIS))
+	},
+	{ XE_RTP_NAME("14026144927"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
+	  XE_RTP_ACTIONS(SET(L3SQCREG2, L3_SQ_DISABLE_COAMA_2WAY_COH |
+			     L3_SQ_DISABLE_COAMA))
+	},
+	{ XE_RTP_NAME("14025635424"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
+	  XE_RTP_ACTIONS(SET(GAMSTLB_CTRL2, STLB_SINGLE_BANK_MODE))
+	},
+	{ XE_RTP_NAME("16028005424"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
+	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
+	},
 };
 
 static const struct xe_rtp_entry_sr engine_was[] = {
@@ -680,6 +705,24 @@ static const struct xe_rtp_entry_sr engine_was[] = {
 		       FUNC(xe_rtp_match_gt_has_discontiguous_dss_groups)),
 	  XE_RTP_ACTIONS(SET(TDL_CHICKEN, EUSTALL_PERF_SAMPLING_DISABLE))
 	},
+
+	/* Xe3p_LPG*/
+
+	{ XE_RTP_NAME("22021149932"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
+		       FUNC(xe_rtp_match_first_render_or_compute)),
+	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, SAMPLER_LD_LSC_DISABLE))
+	},
+	{ XE_RTP_NAME("14025676848"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
+		       FUNC(xe_rtp_match_first_render_or_compute)),
+	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE))
+	},
+	{ XE_RTP_NAME("16028951944"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
+		       FUNC(xe_rtp_match_first_render_or_compute)),
+	  XE_RTP_ACTIONS(SET(ROW_CHICKEN5, CPSS_AWARE_DIS))
+	},
 };
 
 static const struct xe_rtp_entry_sr lrc_was[] = {
@@ -879,6 +922,11 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
 		       ENGINE_CLASS(RENDER)),
 	  XE_RTP_ACTIONS(SET(CHICKEN_RASTER_1, DIS_CLIP_NEGATIVE_BOUNDING_BOX))
 	},
+	{ XE_RTP_NAME("14025780377"),
+	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
+		       ENGINE_CLASS(RENDER)),
+	  XE_RTP_ACTIONS(SET(TBIMR_MODE, RXBAR_NO_UAV_DEC_SYNC))
+	},
 };
 
 static __maybe_unused const struct xe_rtp_entry oob_was[] = {

-- 
2.52.0

