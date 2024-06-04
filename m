Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E608FB709
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69BB10E4E2;
	Tue,  4 Jun 2024 15:27:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJYwhKto";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CC510E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514868; x=1749050868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H/6mz60XEpLp6QPOs6PG+lZInM2YrsFJGNHL1HgWwTY=;
 b=kJYwhKtoos6kkdx/Hw38QiJf3lqG7IApqVpj0XK3Hmjf9Kyy5UWmeRU2
 rU0CtSldzGIO7eQQnExHY/ilUuMXvSrVK9Y3IZc48jDPe4a2QJCkYgnIe
 Wcpx5sRQIHLN9izyYUJNy80vdJlXlw8Y0iBm3I2uYIxlf8UZSkhFz/1MK
 91c0tpVEq8iceKVD9ZTf1zaf3Niln6S6ju9kkH5BzcQk77bEx8t6IEz0J
 cZpQj8dMHYiA+tTFLEVLpRKI08nH7fm4IkZJx0dz28LFllZxdsOWFpLud
 m5PWdNovwUT1KdS4t7hGPA4V611pAIBzkOes1gv5pMG2mgMZp2t+D3nNU A==;
X-CSE-ConnectionGUID: 1TvxYyrjQpOkJHbymcw0fg==
X-CSE-MsgGUID: MtJ682b4S+O+vE8ahP8FVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469772"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469772"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:48 -0700
X-CSE-ConnectionGUID: wSqhK0HQSAirgRNOBXKujg==
X-CSE-MsgGUID: ihnVeoeJQYOIa0wmmVr+OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383426"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 16/65] drm/i915: pass dev_priv explicitly to PFIT_PGM_RATIOS
Date: Tue,  4 Jun 2024 18:25:34 +0300
Message-Id: <8453205c9619bb8453bf4904d0c5bb868f614fc4.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PFIT_PGM_RATIOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49672694293f..1e2ddae5ba94 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1864,7 +1864,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_ENABLE);
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
-	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
+	intel_de_write(dev_priv, PFIT_PGM_RATIOS(dev_priv),
 		       crtc_state->gmch_pfit.pgm_ratios);
 	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
 		       crtc_state->gmch_pfit.control);
@@ -2990,7 +2990,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 
 	crtc_state->gmch_pfit.control = tmp;
 	crtc_state->gmch_pfit.pgm_ratios =
-		intel_de_read(dev_priv, PFIT_PGM_RATIOS);
+		intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
 }
 
 static enum intel_output_format
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index e41881f08d1f..117120ce5a1d 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -943,7 +943,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 	 * line with the intel documentation for the i965
 	 */
 	if (DISPLAY_VER(dev_priv) >= 4) {
-		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
+		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
 
 		/* on i965 use the PGM reg to read out the autoscaler values */
 		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
@@ -953,7 +953,8 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
 			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
 		else
-			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
+			tmp = intel_de_read(dev_priv,
+					    PFIT_PGM_RATIOS(dev_priv));
 
 		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b0dbe6113bbc..094e693c40bf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1609,7 +1609,7 @@
 #define   PFIT_HORIZ_AUTO_SCALE		REG_BIT(5) /* pre-965 */
 #define   PFIT_PANEL_8TO6_DITHER_ENABLE	REG_BIT(3) /* pre-965 */
 
-#define PFIT_PGM_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
+#define PFIT_PGM_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61234)
 #define   PFIT_VERT_SCALE_MASK		REG_GENMASK(31, 20) /* pre-965 */
 #define   PFIT_VERT_SCALE(x)		REG_FIELD_PREP(PFIT_VERT_SCALE_MASK, (x))
 #define   PFIT_HORIZ_SCALE_MASK		REG_GENMASK(15, 4) /* pre-965 */
-- 
2.39.2

