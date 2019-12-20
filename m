Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06E128168
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F350B6EC79;
	Fri, 20 Dec 2019 17:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B371A6E10A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:27:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875730"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:46 -0800
Message-Id: <20191220172754.3773-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: prefer 3-letter acronym for
 pineview
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts pineview to pnv where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 drivers/gpu/drm/i915/intel_pm.c              | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 25af0ffe1c3a..7ad9c1f129c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -368,7 +368,7 @@ static const struct intel_limit intel_limits_g4x_dual_channel_lvds = {
 	},
 };
 
-static const struct intel_limit intel_limits_pineview_sdvo = {
+static const struct intel_limit pnv_limits_sdvo = {
 	.dot = { .min = 20000, .max = 400000},
 	.vco = { .min = 1700000, .max = 3500000 },
 	/* Pineview's Ncounter is a ring counter */
@@ -383,7 +383,7 @@ static const struct intel_limit intel_limits_pineview_sdvo = {
 		.p2_slow = 10, .p2_fast = 5 },
 };
 
-static const struct intel_limit intel_limits_pineview_lvds = {
+static const struct intel_limit pnv_limits_lvds = {
 	.dot = { .min = 20000, .max = 400000 },
 	.vco = { .min = 1700000, .max = 3500000 },
 	.n = { .min = 3, .max = 6 },
@@ -8547,9 +8547,9 @@ static int pnv_crtc_compute_clock(struct intel_crtc *crtc,
 			DRM_DEBUG_KMS("using SSC reference clock of %d kHz\n", refclk);
 		}
 
-		limit = &intel_limits_pineview_lvds;
+		limit = &pnv_limits_lvds;
 	} else {
-		limit = &intel_limits_pineview_sdvo;
+		limit = &pnv_limits_sdvo;
 	}
 
 	if (!crtc_state->clock_set &&
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 7cdca06be3bd..6d9707eceddd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -140,7 +140,7 @@ static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
 
 }
 
-static void i915_pineview_get_mem_freq(struct drm_i915_private *dev_priv)
+static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
 {
 	u32 tmp;
 
@@ -7179,7 +7179,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 {
 	/* For cxsr */
 	if (IS_PINEVIEW(dev_priv))
-		i915_pineview_get_mem_freq(dev_priv);
+		pnv_get_mem_freq(dev_priv);
 	else if (IS_GEN(dev_priv, 5))
 		i915_ironlake_get_mem_freq(dev_priv);
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
