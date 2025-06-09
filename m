Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F344AD209C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3901D10E3CA;
	Mon,  9 Jun 2025 14:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F81hv9WX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5A810E3CB;
 Mon,  9 Jun 2025 14:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478277; x=1781014277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5w0kBfbotiPD34igE1fsZwgEQBLbQEvDPDLaAA3ojfY=;
 b=F81hv9WXs2Jq2yzSl018qKhEvLhjlDXIrzdc/J8og9kYGefu3g4/8HEa
 oRM9D0WUs8X298qUZ4/FshUK7RCzDemru8mdpPYaA9J11B9E3SzINjlSz
 kuXnck1bkdRWKO0wadjbW0JTX9SrkxHcHzx4buoIDk4G5HzzY0SBGhqtx
 f2JwX6Fk2/o1gqKVSF/yYSI5I96jRgMQc8UBWL/euyc5KizFEXuoCDJ4o
 PA5GIfBfeWdS0wpMdPYSBA8anQnlhKcQnFgkFYNAAYo9GUcgkN3LR83lv
 zv7R+Dy2FSABlPXUMdzETSyoh/xsXtRjl2aYISB94dVwB3da0dn+Zr95+ g==;
X-CSE-ConnectionGUID: CghqLm7NRQKeu3p6R+Zkpg==
X-CSE-MsgGUID: FS3yJ4XCQTGXk17p0sKuXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360764"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360764"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:17 -0700
X-CSE-ConnectionGUID: zQdAbgPQRwqhqgX35RWCzw==
X-CSE-MsgGUID: jXr1daimQEuoeka45m+P6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765699"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 08/21] drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
Date: Mon,  9 Jun 2025 17:10:33 +0300
Message-ID: <20250609141046.6244-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
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

The MTL+ PIPEDMC clock gating bits can be parametrized.
Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b6ac480f391c..6392fa928e08 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -482,7 +482,8 @@ static void mtl_pipedmc_clock_gating_wa(struct intel_display *display)
 	 * for pipe A and B.
 	 */
 	intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0,
-		     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B);
+		     MTL_PIPEDMC_GATING_DIS(PIPE_A) |
+		     MTL_PIPEDMC_GATING_DIS(PIPE_B));
 }
 
 static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 52a902532e6f..04fb40867cc0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -763,8 +763,7 @@
  */
 #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
 #define   DARBF_GATING_DIS		REG_BIT(27)
-#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
-#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
+#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
 #define   PWM2_GATING_DIS		REG_BIT(14)
 #define   PWM1_GATING_DIS		REG_BIT(13)
 
-- 
2.49.0

