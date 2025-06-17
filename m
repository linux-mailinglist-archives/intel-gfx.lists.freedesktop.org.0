Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2FEADD9AA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC8F10E790;
	Tue, 17 Jun 2025 17:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gljC+vzK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE3310E771;
 Tue, 17 Jun 2025 17:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180105; x=1781716105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=evHoVstVt79tWEq5dSbjADDB14RMxRlkf/21WmZhlsI=;
 b=gljC+vzKIcPBZXtqdzs0NXaQK/UIqLTHuCtyNnxaMnwHwE57df1Fmp2a
 rBmMT43+eHES6udy70ohijEVfrSd5ehPO+jNoSW5v5xRQVgs/39TTjZK9
 HCdM02elw6pmhgaRbp/bI+t9nMzY8NHqbgBPfarVROI+NWQHiC/EegO12
 alyNcs39UlYrUJCE/SQAYPpfH9FkptXEH86ZPIQoEkr+pSsvB36zEO8Kp
 blCAeXqVLoAlczwAhsaJIXwVWFbPpq2PtZwgWfxQRyT1t4gLwF0j0kX2X
 gpbgW1qqiv7Dq0F48vCY4PrjyJJkJ8jNg138Y8O8VcN5dZXnHVM92D92r g==;
X-CSE-ConnectionGUID: KErGoMIOSmOv994K+iE2cg==
X-CSE-MsgGUID: 59T26/+qT9eNbRLOATjArQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644611"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644611"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:10 -0700
X-CSE-ConnectionGUID: mzTFDYtpQDyudcRFmKe+Cg==
X-CSE-MsgGUID: qvjK+KrDTFKqYBbM0LR/Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138548"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 2/9] drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
Date: Tue, 17 Jun 2025 20:07:52 +0300
Message-ID: <20250617170759.19552-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

The MTL+ pipe DMC clock gating bits can be parametrized.
Make it so.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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

