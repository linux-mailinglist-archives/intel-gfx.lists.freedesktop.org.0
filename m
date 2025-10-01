Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D3FBAFB20
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E3910E6F1;
	Wed,  1 Oct 2025 08:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cO2Pz3wz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE26810E6EF;
 Wed,  1 Oct 2025 08:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307958; x=1790843958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VRPXx6dnovo98E53EOQ9IeK37bNP9o2itbdj1eU77Uo=;
 b=cO2Pz3wzDktNfw8LjfHz7EsilYW906t0FjssHUz4p5opcS/OBHByCna8
 nPYBEt8BQbkOsOH6hRaW1pRXcqjzkyLVZa/YMNBZEgFrNTaEo5U5dUBtm
 pxpIoPfUHJDH79rq/QHD4N4oGgxsCm8wCZts2kOyv+DSZzdze03x+fV/X
 tgr3bqPAqoLHz9BEpMLnGECv3qt0/Poe3cJUjKQzzZDs3l+p8WVStKGEw
 ndCVZEvG4HFIi+wyafkd8snTiCvn7mVrSzQR3CJBa6Micks2dkMArpW33
 s7/NSFEKWk7Qz5WkPgtOVnG0pRPoNjtVV2mGQL1UShMRf9Dx6usmq+uDJ g==;
X-CSE-ConnectionGUID: kyvKypUERcWWamNADztkBw==
X-CSE-MsgGUID: BElShDUbRv+G17P8pu2ptQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742816"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742816"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:39:18 -0700
X-CSE-ConnectionGUID: vBmS4r2CTYG8NtcPigdzbw==
X-CSE-MsgGUID: XGJwOXOnRkC08shZg5l+HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142904"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:39:16 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [RFC PATCH 33/39] drm/i915/display: Add .get_freq to MTL+ platforms
Date: Wed,  1 Oct 2025 11:28:33 +0300
Message-Id: <20251001082839.2585559-34-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
MIME-Version: 1.0
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

Add .get_freq hook to support dpll framework for MTL+
platforms.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 38074a1897fa..0f5602e16512 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4376,8 +4376,21 @@ static bool mtl_pll_get_hw_state(struct intel_display *display,
 	return intel_cx0pll_readout_hw_state(encoder, &dpll_hw_state->cx0pll);
 }
 
+static int mtl_pll_get_freq(struct intel_display *display,
+			    const struct intel_dpll *pll,
+			    const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return -EINVAL;
+
+	return intel_cx0pll_calc_port_clock(encoder, &dpll_hw_state->cx0pll);
+}
+
 static const struct intel_dpll_funcs mtl_pll_funcs = {
 	.get_hw_state = mtl_pll_get_hw_state,
+	.get_freq = mtl_pll_get_freq,
 };
 
 static const struct dpll_info mtl_plls[] = {
-- 
2.34.1

