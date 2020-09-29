Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F5727B8DC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 02:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E0489F07;
	Tue, 29 Sep 2020 00:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD67D89D63
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 00:29:34 +0000 (UTC)
IronPort-SDR: uB3msVuBFR88Ln56/RKqzYk7sBI6j7H703iUZIn7qPnTMmXTtdHJyMjOYsueUVvBWD4qJZVtvU
 ywUvZbLfkN9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="180242826"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="180242826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:33 -0700
IronPort-SDR: LG8ZPHIdUShbKZyeqjTFQE1zAKiY1Wbd8LarAvmETP28AEFRSsIm4gg6mkj6PaDb1QsytZG2z8
 UP+B7d6FsgFw==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="488817652"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 17:29:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 03:29:25 +0300
Message-Id: <20200929002929.783620-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929002929.783620-1-imre.deak@intel.com>
References: <20200929002929.783620-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/skl: Work around incorrect BIOS
 WRPLL PDIV programming
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

The BIOS of at least one ASUS-Z170M system with an SKL I have programs
the 101b WRPLL PDIV divider value, which is the encoding for PDIV=7 with
bit#0 incorrectly set.

This happens with the

"3840x2160": 30 262750 3840 3888 3920 4000 2160 2163 2168 2191 0x48 0x9

HDMI mode (scaled from a 1024x768 src fb) set by BIOS and the

ref_clock=24000, dco_integer=383, dco_fraction=5802, pdiv=7, qdiv=1, kdiv=1

WRPLL parameters (assuming PDIV=7 was the intended setting). This
corresponds to 262749 PLL frequency/port clock.

Later the driver sets the same mode for which it calculates the same
dco_int/dco_frac/div WRPLL parameters (with the correct PDIV=7 encoding).

Based on the above, let's assume that PDIV=7 was intended and the HW
just ignores bit#0 in the PDIV register field for this setting, treating
100b and 101b encodings the same way.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e08684e34078..095b53fe3a21 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1602,6 +1602,14 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	case DPLL_CFGCR2_PDIV_3:
 		p0 = 3;
 		break;
+	case DPLL_CFGCR2_PDIV_7 | (1 << DPLL_CFGCR2_PDIV_SHIFT):
+		/*
+		 * Incorrect ASUS-Z170M BIOS setting, the HW seems to ignore bit#0,
+		 * handling it the same way as PDIV_7.
+		 */
+		drm_err(&i915->drm, "Invalid WRPLL PDIV divider value, fixing it.\n");
+		p0 = 7;
+		break;
 	case DPLL_CFGCR2_PDIV_7:
 		p0 = 7;
 		break;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 47730a176698..f70e45bd3810 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -10253,6 +10253,7 @@ enum skl_power_gate {
 #define  DPLL_CFGCR2_KDIV_3 (2 << 5)
 #define  DPLL_CFGCR2_KDIV_1 (3 << 5)
 #define  DPLL_CFGCR2_PDIV_MASK		(7 << 2)
+#define  DPLL_CFGCR2_PDIV_SHIFT		2
 #define  DPLL_CFGCR2_PDIV(x)		((x) << 2)
 #define  DPLL_CFGCR2_PDIV_1 (0 << 2)
 #define  DPLL_CFGCR2_PDIV_2 (1 << 2)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
