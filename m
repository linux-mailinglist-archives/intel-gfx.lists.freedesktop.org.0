Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CB1AD5B1D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DAB10E6C1;
	Wed, 11 Jun 2025 15:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qs5Wx5u9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 788F110E6C7;
 Wed, 11 Jun 2025 15:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657171; x=1781193171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=evHoVstVt79tWEq5dSbjADDB14RMxRlkf/21WmZhlsI=;
 b=Qs5Wx5u9YKC6KhTZZ8sTJg3g3zIj3NUavHtP9OpL5VBv7G9Z0+4JLymi
 e30fJIPxkdLlyOJ1pNtXGzRyM205VlWYbHB4Q5X5paUy/64qFOZPIknjF
 vobdW+LTZHKM4c4I8wf0yTc1+nyx++pdx3MqH/uws7KLcbiUAtRrFoY2z
 hap19Waxxl7PEoxNK1TK4mZA0zNQnBpFmPPXvBBHDpRanYtwFsG4udZ0H
 CsEpksTdhXMUTWpMQb7jn2HoTpqJxtXqs+jr2wP4yYBc6R6bhF7cGPwRa
 yLYDzGX3hO98kbz5scqmsSvqpY5eM3NVgBe0RxLFqb0Dp2VYNPCGydXCn g==;
X-CSE-ConnectionGUID: jkvjaurkTFWgp3FLtjxPRg==
X-CSE-MsgGUID: MSJDET5LSYCF/bGLuxATWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419106"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419106"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:52:51 -0700
X-CSE-ConnectionGUID: 55dKuemzRr6WY1TUH21TBA==
X-CSE-MsgGUID: /rLKC979QI2TsubwVqFtJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507332"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 2/9] drm/i915/dmc: Parametrize MTL_PIPEDMC_GATING_DIS
Date: Wed, 11 Jun 2025 18:52:34 +0300
Message-ID: <20250611155241.24191-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

