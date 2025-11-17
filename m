Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E67C63ACB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 11:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D404A10E382;
	Mon, 17 Nov 2025 10:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eoQcq4fX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640C910E38D;
 Mon, 17 Nov 2025 10:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763377176; x=1794913176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZE6lRXMlDIlZ8THR8jSrVdrXuqy+vnbFddWsJ5KAk9U=;
 b=eoQcq4fXgAdO1NJO6r/43PRwVtnacMllYsSGldOElQ/XPqOK3cqSHmE3
 DVEH7p86zhQyvma/aPZsHSc9/HhoubOWGpqQ7xXzXm45UFxdKd3I5gNuf
 InnBK73TPuOv8sEt4LqCg+BbIiIKTO4xDiZWAiIvmOMheXFw0VIKsadCJ
 XcRuYs4fcHf0UmZyIpf4J7BCI/hqdt+Wd6k9jXVWe21Zc8+swt1jdjq/a
 k5i1RasClyDVNnC9/TOZhu+6lt6wuMk0wSqai13BDv9lp8m/8jPqemVo8
 lLFgAo0+66MbkpZ/oaFw0vPbh0qQxJnCA4yGSuReoAdPKoethBxuMzAXm g==;
X-CSE-ConnectionGUID: VcUC/2aqS8uXBovYe6XNeg==
X-CSE-MsgGUID: g/9aWmeRT+CStX3tVGg18Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="76475424"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="76475424"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 02:59:36 -0800
X-CSE-ConnectionGUID: FTGtAkjCQ7mKTku2ezOdZg==
X-CSE-MsgGUID: amDTyTkRQ0anu2JwDx51jw==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 17 Nov 2025 02:59:35 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 26/32] drm/i915/cx0: Add MTL+ .get_freq hook
Date: Mon, 17 Nov 2025 12:45:56 +0200
Message-Id: <20251117104602.2363671-27-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251117104602.2363671-1-mika.kahola@intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
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
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index beaf270294ca..85b3fee2d9b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4379,8 +4379,21 @@ static bool mtl_pll_get_hw_state(struct intel_display *display,
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

