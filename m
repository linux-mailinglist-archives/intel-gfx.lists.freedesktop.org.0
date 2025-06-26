Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1A5AEA615
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A17310E8DD;
	Thu, 26 Jun 2025 19:07:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOiDM+th";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD8910E0ED;
 Thu, 26 Jun 2025 19:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750964825; x=1782500825;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cg6AzsTJsUcsr9WGB6go4byJh/GNsbyJM4cG3cEpuJw=;
 b=TOiDM+th9VBoXSTDNUh/HuVn3QY8x0pnq7kYybUGDfE8RerBYYj1x6lC
 LBPelTas+HPbNFpFWMvJzd+gPaG/aTQnaMsLg6vl/peu6h/XaWsdG29vH
 STq9szPFMvsw0ugZS2ddiKXormanAgcmjCQ8Vh3IzmQFaxfH/h9xrdkbo
 Iy8xmbORsmT6mfASA71d7CHsjivgM3bQjW5IR5dhdI5mFCjGNYhrjp/hW
 7M0mvyQOFidYhsw8x57ffnmdC8dSoji2as78JJOu1JRdJC4iAeodcy9wT
 d4R17VHKrk1WOwQgin33FzYbkMZOx1Smfp5tYRZFBjQEYCsmzu9ZxW9X6 Q==;
X-CSE-ConnectionGUID: o8nxTSTpTNqyXKnEMgkWsw==
X-CSE-MsgGUID: hJ/0KgXpS1qGO7Ua6LTu0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53418241"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53418241"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:05:53 -0700
X-CSE-ConnectionGUID: xRZRYJ0MQKKlYZtg83WYiQ==
X-CSE-MsgGUID: Df8y1MfRRvibnfQOz94dBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="158343109"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:05:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/ddi: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 26 Jun 2025 22:05:46 +0300
Message-Id: <20250626190546.2308934-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <0fe50db94bae5e5c52daae59d754fb80733ed9bc.1750959689.git.jani.nikula@intel.com>
References: <0fe50db94bae5e5c52daae59d754fb80733ed9bc.1750959689.git.jani.nikula@intel.com>
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

v2: Wait for bits to clear in mtl_ddi_disable_d2d()

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0405396c7750..866ed3e46664 100644
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
+				   wait_bits, 0,
+				   100, 0, NULL);
+	if (ret)
 		drm_err(display->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
 			port_name(port));
 }
-- 
2.39.5

