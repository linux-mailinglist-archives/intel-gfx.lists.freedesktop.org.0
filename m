Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92110455771
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 09:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F506EB71;
	Thu, 18 Nov 2021 08:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5B26EB71
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 08:55:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221025325"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="221025325"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 00:55:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="507341366"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 18 Nov 2021 00:55:09 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Nov 2021 10:54:23 +0200
Message-Id: <20211118085424.685686-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211118085424.685686-1-mika.kahola@intel.com>
References: <20211118085424.685686-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display/dg2: Sanitize CD clock
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

In case of CD clock squashing the divider is always 1. We don't
need to calculate the divider in use so let's skip that for DG2.

v2: Drop unnecessary local variable (Ville)
v3: Avoid if-else structure (Ville)
[v4: vsyrjala: Fix cd2x divider calculation (Uma),
               Introduce has_cdclk_squasher()]

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 630a53d4f882..e8c58779c2a8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1212,6 +1212,11 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
 }
 
+static bool has_cdclk_squasher(struct drm_i915_private *i915)
+{
+	return IS_DG2(i915);
+}
+
 static const struct intel_cdclk_vals bxt_cdclk_table[] = {
 	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
 	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
@@ -1750,7 +1755,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 {
 	u32 cdctl, expected;
-	int cdclk, vco;
+	int cdclk, clock, vco;
 
 	intel_update_cdclk(dev_priv);
 	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
@@ -1786,8 +1791,12 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	expected = skl_cdclk_decimal(cdclk);
 
 	/* Figure out what CD2X divider we should be using for this cdclk */
-	expected |= bxt_cdclk_cd2x_div_sel(dev_priv,
-					   dev_priv->cdclk.hw.cdclk,
+	if (has_cdclk_squasher(dev_priv))
+		clock = dev_priv->cdclk.hw.vco / 2;
+	else
+		clock = dev_priv->cdclk.hw.cdclk;
+
+	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
 					   dev_priv->cdclk.hw.vco);
 
 	/*
-- 
2.27.0

