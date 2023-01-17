Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A7266D711
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 08:42:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D1910E2DA;
	Tue, 17 Jan 2023 07:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F20E10E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 07:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673941345; x=1705477345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CzzAdQ06FWJHoRMDoM+kNfKsZWK6FeRPafXbwvgqGBc=;
 b=QWHPLdPjOuGwS8RmOqlH4FiJjZuZuH/ygnvFUkhBi2a0BbvTE+fB9M6S
 Zfhks1UIkk0/SGgF+skDcrgheiHfdEkFjUl5P/brn+ogrFDYTSzYf/QIx
 ADaWeIGC1kSYaprYSC+mWEMm2wL9hZc6Su+yRYDDlZ1EbRnfiFPjwr/SY
 ok3RFetPGHbjvQqMGTpFq996h11d62K3WY1w9K0idfoQx5jZPVePPk6IH
 aVoCn/1/4OWnXYgDvCs2ZxBhetCTz5NohuUPL02R9+RUOAnFOMwo9t7qa
 qZavUGx5yTCC2UlyCwFI4PYn3fi0lhR2BnRCahwSRO1focZ+MJUYM4LoF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="308195330"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="308195330"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 23:42:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="661199807"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="661199807"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jan 2023 23:42:22 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 13:12:11 +0530
Message-Id: <20230117074211.952125-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
References: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps for
 RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have a RPL-U
device id to support 120Hz displays more efficiently. Use a
new quirk to identify the machine for which this change needs
to be applied.

BSpec: 55409

v2: (Matt)
    - Add missing clock steps
    - Correct reference clock typo

v3: - Revert to RPL-U subplatform

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..a5e3497534f3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1329,6 +1329,30 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals rplu_cdclk_table[] = {
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
+	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{}
+};
+
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
 	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
@@ -3353,6 +3377,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
+		/* Bspec: 55409 */
+		else if (IS_ADLP_RPLU(dev_priv))
+			dev_priv->display.cdclk.table = rplu_cdclk_table;
 		else
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-- 
2.25.1

