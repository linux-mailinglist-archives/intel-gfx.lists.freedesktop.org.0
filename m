Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1F3C1ECA2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE13510E912;
	Thu, 30 Oct 2025 07:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBGPcfW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0CD510E8EE;
 Thu, 30 Oct 2025 07:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761809715; x=1793345715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pIEfTtTgiWcW48rNQzkcapMYhvhUCdQS8YnFV0etPVM=;
 b=mBGPcfW4G3lQ9NV9QAb3Ue7lqwwTVoPAmr6WeTx7QIgCMV714GEpzBPL
 /FJ2mp+yVbwEtEeN9C0a5hx2UO9m1/rnx11lBQwTTpzKa2x3qBUS2GkMM
 VSw0zO2LExAvpZQAewHwRMMkuXcv5Iyp0TquM9VsZTygpEnHwi0SWvhUE
 C5Ei8N+ll7iDH6yf1gaQWbiOronTAbBIKBmtYXEeWlfuPIRZSI/mpdakh
 YXUjen494t/zMgOd6jA1JKWikXHwfw7Yo/qHbEsO1EE4Wf4h3/ocLlS6M
 ZOUcVBMw7Yk0tceVF4ieZQ8YObavdy+Bb9VcEffqFirokFk67J9ftZBSk w==;
X-CSE-ConnectionGUID: Gwtgd/frRjC73T0huDcjLQ==
X-CSE-MsgGUID: 8F3withwT/WJGbllli5klA==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="75063405"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="75063405"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 00:35:14 -0700
X-CSE-ConnectionGUID: wjl7XR07SPWAcazVPWXPcw==
X-CSE-MsgGUID: t/RDh7CMSWmoBz36u0Va/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185075502"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa006.jf.intel.com with ESMTP; 30 Oct 2025 00:35:13 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 26/32] drm/i915/display: Add .get_freq to MTL+ platforms
Date: Thu, 30 Oct 2025 09:22:43 +0200
Message-Id: <20251030072249.155095-27-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251030072249.155095-1-mika.kahola@intel.com>
References: <20251030072249.155095-1-mika.kahola@intel.com>
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
index db6ae7bc63d6..07bc99ae689c 100644
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

