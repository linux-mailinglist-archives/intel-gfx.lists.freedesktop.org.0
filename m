Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D5AEA49C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 19:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4888310E8E2;
	Thu, 26 Jun 2025 17:43:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dvalPULM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB34B10E8DF;
 Thu, 26 Jun 2025 17:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750959807; x=1782495807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LOKy4ezs8iyaHc+JS+B2tET6xQfQi07q6xZvTVmesQU=;
 b=dvalPULMiZxO2Xsd3OwhXcFpJIJZoCS6ekoWqCUr9TauSKXIRC5+Iwpt
 1XrhXj9BWGFUAA0E959GmVHZjQL0sdFvGxHRIU8p1mW0I1S4PGWK6A342
 fEy6EsvNCTI4rDOCHbPL0CAFAu9JGVS3pFpH/aVbxE83B+Y6vGslcrSYr
 AH//0aokksZi8WXM/oZ2xeE/kFaTdA+VXGWYtCj4CzMnf1vy9AvJFeawo
 yF8wKbZzgOwc2El7SHeV/b6JgL8LoRlTtnZm1adsnYuW6a4roAG92pK5Q
 YmB6UnYV+Tm1KUglUjP+POwKPbZXRRu9hUJgwKEomIrM7Bx4bngYJf0z/ w==;
X-CSE-ConnectionGUID: KKTaYiDmRQGxcelkvb2NuQ==
X-CSE-MsgGUID: o9kEcFBVQsCyzAP5gSMBVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53141099"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53141099"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:27 -0700
X-CSE-ConnectionGUID: b+DM89uiSpuRWnhUNPmRNA==
X-CSE-MsgGUID: QXmHTDYWQO2GLxFqUm/23Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="152207975"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 10:43:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915/ddi: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 26 Jun 2025 20:43:00 +0300
Message-Id: <0fe50db94bae5e5c52daae59d754fb80733ed9bc.1750959689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750959689.git.jani.nikula@intel.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0405396c7750..39613f86f1ce 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2561,6 +2561,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	i915_reg_t reg;
 	u32 set_bits, wait_bits;
+	int ret;
 
 	if (DISPLAY_VER(display) < 14)
 		return;
@@ -2576,7 +2577,11 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 	}
 
 	intel_de_rmw(display, reg, 0, set_bits);
-	if (wait_for_us(intel_de_read(display, reg) & wait_bits, 100)) {
+
+	ret = intel_de_wait_custom(display, reg,
+				   wait_bits, wait_bits,
+				   100, 0, NULL);
+	if (ret) {
 		drm_err(display->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 	}
@@ -3058,6 +3063,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	i915_reg_t reg;
 	u32 clr_bits, wait_bits;
+	int ret;
 
 	if (DISPLAY_VER(display) < 14)
 		return;
@@ -3073,7 +3079,11 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 	}
 
 	intel_de_rmw(display, reg, clr_bits, 0);
-	if (wait_for_us(!(intel_de_read(display, reg) & wait_bits), 100))
+
+	ret = intel_de_wait_custom(display, reg,
+				   wait_bits, wait_bits,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
-- 
2.39.5

