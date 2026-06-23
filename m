Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0CKfH2CBOmob+gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E903A6B73B3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 14:51:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YCVi8ztY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B4610EB32;
	Tue, 23 Jun 2026 12:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8105410EB35;
 Tue, 23 Jun 2026 12:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782219102; x=1813755102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L9dU1MczoNDwICdemUqtjxif/AUXroqZBZhkpYZ5pLU=;
 b=YCVi8ztY+TXPdqD0T6u6BlajO2MNdTuk7BLg49+WoshRg/jgqG8+rRWJ
 HU645KWmdH41yA6KeLUf46RKGFhaTYSN6hoiAIHst7U4EANUDADMXbCqC
 IPuZ5uDGFBNVJ1Qw0JVsCGfrtTMNrRuemXAs8DY768tys+kr6fEVlbyCJ
 rMW+aUlGziu7GvrwsIXXKLrH+gRJcJ71iOkyn/bddusTRCw1yc2ejstNW
 nJaqN5Xernsp2oLL/41w2Ea7n2Thl+kWs2vYAVxtQiEjxmPnablcmQ4tT
 OEWuAD0+0t9CtQFWeEcBp8X6lR+PoG4jV7c0J4wEDB3maIBzXa9Eae39+ w==;
X-CSE-ConnectionGUID: JQRnryXlSLqWGL6OKorwEw==
X-CSE-MsgGUID: Zdlr6U5LSbmNhm2oe15cIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94452728"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="94452728"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:41 -0700
X-CSE-ConnectionGUID: SymKSZrERAqAD+gik8Pjtg==
X-CSE-MsgGUID: Je0FeDC8Rb23CeFC/5GKPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="273209922"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 05:51:39 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/gmbus: Drop the platform suffixes from GMBUS pins
Date: Tue, 23 Jun 2026 15:51:10 +0300
Message-ID: <20260623125111.6632-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
References: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E903A6B73B3

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The modern GMBUS pin numbers are just a sequential set of
numbers, so the platform suffixes don't really buy us anything.
Let's just drop them. We'll keep the _TCx suffixes for pins
9+ since that's the way they always get used.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c  | 62 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_gmbus.c | 68 +++++++++++-----------
 drivers/gpu/drm/i915/display/intel_gmbus.h | 22 +++----
 drivers/gpu/drm/i915/display/intel_hdmi.c  | 42 ++++++-------
 4 files changed, 97 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b6fe87c29aa7..15ebadc72b88 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2197,52 +2197,52 @@ static u8 translate_iboost(struct intel_display *display, u8 val)
 
 static const u8 cnp_ddc_pin_map[] = {
 	[0] = 0, /* N/A */
-	[GMBUS_PIN_1_BXT] = DDC_BUS_DDI_B,
-	[GMBUS_PIN_2_BXT] = DDC_BUS_DDI_C,
-	[GMBUS_PIN_4_CNP] = DDC_BUS_DDI_D, /* sic */
-	[GMBUS_PIN_3_BXT] = DDC_BUS_DDI_F, /* sic */
+	[GMBUS_PIN_1] = DDC_BUS_DDI_B,
+	[GMBUS_PIN_2] = DDC_BUS_DDI_C,
+	[GMBUS_PIN_4] = DDC_BUS_DDI_D, /* sic */
+	[GMBUS_PIN_3] = DDC_BUS_DDI_F, /* sic */
 };
 
 static const u8 icp_ddc_pin_map[] = {
-	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
-	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
-	[GMBUS_PIN_3_BXT] = TGL_DDC_BUS_DDI_C,
-	[GMBUS_PIN_9_TC1_ICP] = ICL_DDC_BUS_PORT_1,
-	[GMBUS_PIN_10_TC2_ICP] = ICL_DDC_BUS_PORT_2,
-	[GMBUS_PIN_11_TC3_ICP] = ICL_DDC_BUS_PORT_3,
-	[GMBUS_PIN_12_TC4_ICP] = ICL_DDC_BUS_PORT_4,
-	[GMBUS_PIN_13_TC5_TGP] = TGL_DDC_BUS_PORT_5,
-	[GMBUS_PIN_14_TC6_TGP] = TGL_DDC_BUS_PORT_6,
+	[GMBUS_PIN_1] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_3] = TGL_DDC_BUS_DDI_C,
+	[GMBUS_PIN_9_TC1] = ICL_DDC_BUS_PORT_1,
+	[GMBUS_PIN_10_TC2] = ICL_DDC_BUS_PORT_2,
+	[GMBUS_PIN_11_TC3] = ICL_DDC_BUS_PORT_3,
+	[GMBUS_PIN_12_TC4] = ICL_DDC_BUS_PORT_4,
+	[GMBUS_PIN_13_TC5] = TGL_DDC_BUS_PORT_5,
+	[GMBUS_PIN_14_TC6] = TGL_DDC_BUS_PORT_6,
 };
 
 static const u8 rkl_pch_tgp_ddc_pin_map[] = {
-	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
-	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
-	[GMBUS_PIN_9_TC1_ICP] = RKL_DDC_BUS_DDI_D,
-	[GMBUS_PIN_10_TC2_ICP] = RKL_DDC_BUS_DDI_E,
+	[GMBUS_PIN_1] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1] = RKL_DDC_BUS_DDI_D,
+	[GMBUS_PIN_10_TC2] = RKL_DDC_BUS_DDI_E,
 };
 
 static const u8 adls_ddc_pin_map[] = {
-	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
-	[GMBUS_PIN_9_TC1_ICP] = ADLS_DDC_BUS_PORT_TC1,
-	[GMBUS_PIN_10_TC2_ICP] = ADLS_DDC_BUS_PORT_TC2,
-	[GMBUS_PIN_11_TC3_ICP] = ADLS_DDC_BUS_PORT_TC3,
-	[GMBUS_PIN_12_TC4_ICP] = ADLS_DDC_BUS_PORT_TC4,
+	[GMBUS_PIN_1] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_9_TC1] = ADLS_DDC_BUS_PORT_TC1,
+	[GMBUS_PIN_10_TC2] = ADLS_DDC_BUS_PORT_TC2,
+	[GMBUS_PIN_11_TC3] = ADLS_DDC_BUS_PORT_TC3,
+	[GMBUS_PIN_12_TC4] = ADLS_DDC_BUS_PORT_TC4,
 };
 
 static const u8 gen9bc_tgp_ddc_pin_map[] = {
-	[GMBUS_PIN_2_BXT] = DDC_BUS_DDI_B,
-	[GMBUS_PIN_9_TC1_ICP] = DDC_BUS_DDI_C,
-	[GMBUS_PIN_10_TC2_ICP] = DDC_BUS_DDI_D,
+	[GMBUS_PIN_2] = DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1] = DDC_BUS_DDI_C,
+	[GMBUS_PIN_10_TC2] = DDC_BUS_DDI_D,
 };
 
 static const u8 adlp_ddc_pin_map[] = {
-	[GMBUS_PIN_1_BXT] = ICL_DDC_BUS_DDI_A,
-	[GMBUS_PIN_2_BXT] = ICL_DDC_BUS_DDI_B,
-	[GMBUS_PIN_9_TC1_ICP] = ADLP_DDC_BUS_PORT_TC1,
-	[GMBUS_PIN_10_TC2_ICP] = ADLP_DDC_BUS_PORT_TC2,
-	[GMBUS_PIN_11_TC3_ICP] = ADLP_DDC_BUS_PORT_TC3,
-	[GMBUS_PIN_12_TC4_ICP] = ADLP_DDC_BUS_PORT_TC4,
+	[GMBUS_PIN_1] = ICL_DDC_BUS_DDI_A,
+	[GMBUS_PIN_2] = ICL_DDC_BUS_DDI_B,
+	[GMBUS_PIN_9_TC1] = ADLP_DDC_BUS_PORT_TC1,
+	[GMBUS_PIN_10_TC2] = ADLP_DDC_BUS_PORT_TC2,
+	[GMBUS_PIN_11_TC3] = ADLP_DDC_BUS_PORT_TC3,
+	[GMBUS_PIN_12_TC4] = ADLP_DDC_BUS_PORT_TC4,
 };
 
 static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index dec0f66f756f..60a70dea5d85 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -105,55 +105,55 @@ static const struct gmbus_pin gmbus_pins_spt[] = {
 };
 
 static const struct gmbus_pin gmbus_pins_bxt[] = {
-	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
+	[GMBUS_PIN_1] = { "dpb", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpc", GPIO_2 },
+	[GMBUS_PIN_3] = { "misc", GPIO_3 },
 };
 
 static const struct gmbus_pin gmbus_pins_cnp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpb", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpc", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "misc", GPIO_3 },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_1] = { "dpb", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpc", GPIO_2 },
+	[GMBUS_PIN_3] = { "misc", GPIO_3 },
+	[GMBUS_PIN_4] = { "dpd", GPIO_4 },
 };
 
 static const struct gmbus_pin gmbus_pins_icp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
-	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
-	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
-	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
-	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPIO_13 },
-	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIO_14 },
+	[GMBUS_PIN_1] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_9_TC1] = { "tc1", GPIO_9 },
+	[GMBUS_PIN_10_TC2] = { "tc2", GPIO_10 },
+	[GMBUS_PIN_11_TC3] = { "tc3", GPIO_11 },
+	[GMBUS_PIN_12_TC4] = { "tc4", GPIO_12 },
+	[GMBUS_PIN_13_TC5] = { "tc5", GPIO_13 },
+	[GMBUS_PIN_14_TC6] = { "tc6", GPIO_14 },
 };
 
 static const struct gmbus_pin gmbus_pins_dg1[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_1] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4] = { "dpd", GPIO_4 },
 };
 
 static const struct gmbus_pin gmbus_pins_dg2[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
+	[GMBUS_PIN_1] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_9_TC1] = { "tc1", GPIO_9 },
 };
 
 static const struct gmbus_pin gmbus_pins_mtp[] = {
-	[GMBUS_PIN_1_BXT] = { "dpa", GPIO_1 },
-	[GMBUS_PIN_2_BXT] = { "dpb", GPIO_2 },
-	[GMBUS_PIN_3_BXT] = { "dpc", GPIO_3 },
-	[GMBUS_PIN_4_CNP] = { "dpd", GPIO_4 },
-	[GMBUS_PIN_5_MTP] = { "dpe", GPIO_5 },
-	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIO_9 },
-	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIO_10 },
-	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIO_11 },
-	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIO_12 },
+	[GMBUS_PIN_1] = { "dpa", GPIO_1 },
+	[GMBUS_PIN_2] = { "dpb", GPIO_2 },
+	[GMBUS_PIN_3] = { "dpc", GPIO_3 },
+	[GMBUS_PIN_4] = { "dpd", GPIO_4 },
+	[GMBUS_PIN_5] = { "dpe", GPIO_5 },
+	[GMBUS_PIN_9_TC1] = { "tc1", GPIO_9 },
+	[GMBUS_PIN_10_TC2] = { "tc2", GPIO_10 },
+	[GMBUS_PIN_11_TC3] = { "tc3", GPIO_11 },
+	[GMBUS_PIN_12_TC4] = { "tc4", GPIO_12 },
 };
 
 static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.h b/drivers/gpu/drm/i915/display/intel_gmbus.h
index 35a200a9efc0..5fdeab1aa794 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.h
@@ -20,17 +20,17 @@ struct intel_display;
 #define GMBUS_PIN_DPB		5 /* SDVO, HDMIB */
 #define GMBUS_PIN_DPD		6 /* HDMID */
 #define GMBUS_PIN_RESERVED	7 /* 7 reserved */
-#define GMBUS_PIN_1_BXT		1 /* BXT+ (atom) and CNP+ (big core) */
-#define GMBUS_PIN_2_BXT		2
-#define GMBUS_PIN_3_BXT		3
-#define GMBUS_PIN_4_CNP		4
-#define GMBUS_PIN_5_MTP		5
-#define GMBUS_PIN_9_TC1_ICP	9
-#define GMBUS_PIN_10_TC2_ICP	10
-#define GMBUS_PIN_11_TC3_ICP	11
-#define GMBUS_PIN_12_TC4_ICP	12
-#define GMBUS_PIN_13_TC5_TGP	13
-#define GMBUS_PIN_14_TC6_TGP	14
+#define GMBUS_PIN_1		1 /* BXT+ (atom) and CNP+ (big core) */
+#define GMBUS_PIN_2		2
+#define GMBUS_PIN_3		3
+#define GMBUS_PIN_4		4
+#define GMBUS_PIN_5		5
+#define GMBUS_PIN_9_TC1		9 /* ICP+ */
+#define GMBUS_PIN_10_TC2	10
+#define GMBUS_PIN_11_TC3	11
+#define GMBUS_PIN_12_TC4	12
+#define GMBUS_PIN_13_TC5	13
+#define GMBUS_PIN_14_TC6	14
 
 #define GMBUS_NUM_PINS	15 /* including 0 */
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index beca0ff5a5b4..f046918fd4bc 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2825,14 +2825,14 @@ static u8 bxt_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 	switch (port) {
 	case PORT_B:
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	case PORT_C:
-		ddc_pin = GMBUS_PIN_2_BXT;
+		ddc_pin = GMBUS_PIN_2;
 		break;
 	default:
 		MISSING_CASE(port);
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	}
 	return ddc_pin;
@@ -2845,20 +2845,20 @@ static u8 cnp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 	switch (port) {
 	case PORT_B:
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	case PORT_C:
-		ddc_pin = GMBUS_PIN_2_BXT;
+		ddc_pin = GMBUS_PIN_2;
 		break;
 	case PORT_D:
-		ddc_pin = GMBUS_PIN_4_CNP;
+		ddc_pin = GMBUS_PIN_4;
 		break;
 	case PORT_F:
-		ddc_pin = GMBUS_PIN_3_BXT;
+		ddc_pin = GMBUS_PIN_3;
 		break;
 	default:
 		MISSING_CASE(port);
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	}
 	return ddc_pin;
@@ -2870,12 +2870,12 @@ static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 
 	if (intel_encoder_is_combo(encoder))
-		return GMBUS_PIN_1_BXT + port;
+		return GMBUS_PIN_1 + port;
 	else if (intel_encoder_is_tc(encoder))
-		return GMBUS_PIN_9_TC1_ICP + intel_encoder_to_tc(encoder);
+		return GMBUS_PIN_9_TC1 + intel_encoder_to_tc(encoder);
 
 	drm_WARN(display->drm, 1, "Unknown port:%c\n", port_name(port));
-	return GMBUS_PIN_2_BXT;
+	return GMBUS_PIN_2;
 }
 
 static u8 mcc_encoder_to_ddc_pin(struct intel_encoder *encoder)
@@ -2885,17 +2885,17 @@ static u8 mcc_encoder_to_ddc_pin(struct intel_encoder *encoder)
 
 	switch (phy) {
 	case PHY_A:
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	case PHY_B:
-		ddc_pin = GMBUS_PIN_2_BXT;
+		ddc_pin = GMBUS_PIN_2;
 		break;
 	case PHY_C:
-		ddc_pin = GMBUS_PIN_9_TC1_ICP;
+		ddc_pin = GMBUS_PIN_9_TC1;
 		break;
 	default:
 		MISSING_CASE(phy);
-		ddc_pin = GMBUS_PIN_1_BXT;
+		ddc_pin = GMBUS_PIN_1;
 		break;
 	}
 	return ddc_pin;
@@ -2915,9 +2915,9 @@ static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	 * all outputs.
 	 */
 	if (INTEL_PCH_TYPE(display) >= PCH_TGP && phy >= PHY_C)
-		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
+		return GMBUS_PIN_9_TC1 + phy - PHY_C;
 
-	return GMBUS_PIN_1_BXT + phy;
+	return GMBUS_PIN_1 + phy;
 }
 
 static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
@@ -2934,9 +2934,9 @@ static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	 * all outputs.
 	 */
 	if (INTEL_PCH_TYPE(display) >= PCH_TGP && phy >= PHY_C)
-		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
+		return GMBUS_PIN_9_TC1 + phy - PHY_C;
 
-	return GMBUS_PIN_1_BXT + phy;
+	return GMBUS_PIN_1 + phy;
 }
 
 static u8 dg1_encoder_to_ddc_pin(struct intel_encoder *encoder)
@@ -2955,9 +2955,9 @@ static u8 adls_encoder_to_ddc_pin(struct intel_encoder *encoder)
 	 * except first combo output.
 	 */
 	if (phy == PHY_A)
-		return GMBUS_PIN_1_BXT;
+		return GMBUS_PIN_1;
 
-	return GMBUS_PIN_9_TC1_ICP + phy - PHY_B;
+	return GMBUS_PIN_9_TC1 + phy - PHY_B;
 }
 
 static u8 g4x_encoder_to_ddc_pin(struct intel_encoder *encoder)
-- 
2.53.0

