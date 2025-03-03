Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F35A4C07C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 13:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2196110E403;
	Mon,  3 Mar 2025 12:40:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MH19BxCF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045B110E403
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Mar 2025 12:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741005610; x=1772541610;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xqgc/FRY96aCfk5rhkYdywTbVNiOoLXouMNzRxbjlGI=;
 b=MH19BxCFGiJK1dcyl77KPbML61t7pI3wRMNP9M/QdSzAHECZGwVKe9ox
 9NnHB8lStJBOyWEbGzWoXxPuckFlXLpgI3+LPgR5Q3VQXYGUbC6lWRYnC
 Q5B4yBTwLIA+vWm20z242M/A0/ZDzpJIBQ6eCKFb9++jFN0CQD3ExmtSb
 3/optwgnk3KZ1X+xfqfWRG2wAwUtIpNqxf1/Fs2dW6SufYYbSL1ZHEmLN
 4o2WwuxP4vHJoCbDgRMIZHNgEBffqN1/1YTrwek6DfgILLspGKozDzJAd
 HX9jYtvqXPEN1w9zuIs1z/7G8smj6YrzQaSy+mvOBJmrsoaIoH4TSEyLN w==;
X-CSE-ConnectionGUID: jWlf7iFlQ4eX0xSRrgOwKA==
X-CSE-MsgGUID: s27TucKtRy25Gz+80a64YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41731761"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41731761"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 04:40:09 -0800
X-CSE-ConnectionGUID: IbI94zGuQ8qvD/632btEFg==
X-CSE-MsgGUID: bp+qhXFaSNKtPYA+htbJcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123211438"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 03 Mar 2025 04:39:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Mar 2025 14:39:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Program CURSOR_PROGRAM and COEFF_POLARITY for
 icl+ combo PHYs
Date: Mon,  3 Mar 2025 14:39:52 +0200
Message-ID: <20250303123952.5669-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
References: <20250303123952.5669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bspec asks us to clear the CURSOR_PROGRAM and COEFF_POLARITY
bits in PORT_TX_DW5 on icl+ combo PHYs. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c            | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index 0964e392d02c..ee41acdccf4e 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -133,6 +133,8 @@
 #define   TX_TRAINING_EN			REG_BIT(31)
 #define   TAP2_DISABLE				REG_BIT(30)
 #define   TAP3_DISABLE				REG_BIT(29)
+#define   CURSOR_PROGRAM			REG_BIT(26)
+#define   COEFF_POLARITY			REG_BIT(25)
 #define   SCALING_MODE_SEL_MASK			REG_GENMASK(20, 18)
 #define   SCALING_MODE_SEL(x)			REG_FIELD_PREP(SCALING_MODE_SEL_MASK, (x))
 #define   RTERM_SELECT_MASK			REG_GENMASK(5, 3)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 20fc258a4d6d..307559d4e492 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1193,7 +1193,8 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	/* Set PORT_TX_DW5 */
 	val = intel_de_read(dev_priv, ICL_PORT_TX_DW5_LN(0, phy));
 	val &= ~(SCALING_MODE_SEL_MASK | RTERM_SELECT_MASK |
-		  TAP2_DISABLE | TAP3_DISABLE);
+		 COEFF_POLARITY | CURSOR_PROGRAM |
+		 TAP2_DISABLE | TAP3_DISABLE);
 	val |= SCALING_MODE_SEL(0x2);
 	val |= RTERM_SELECT(0x6);
 	val |= TAP3_DISABLE;
-- 
2.45.3

