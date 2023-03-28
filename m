Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF316CC879
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 18:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD27610E487;
	Tue, 28 Mar 2023 16:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D1C10E487
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 16:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680022183; x=1711558183;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IWD2sezAWR0OdO62Ti9U3a7aSbYgza+93lssD/ZPKA4=;
 b=TX869uVZX9fmq8CfSyRIKkL48GceWwII2iA1QBA/Kk9dv0wmZ58LC63n
 zx0w0fXWEUInXvM+Xp9B84b2qfVHnUV665ygIP1P64SUPsf6K5+ZrGCgL
 dg/8dUWmu93t0UX8ocMg++3695cZdyXwnt8qs8jlGVFft5Ud68VNxehIM
 +7KoyflIvDqR2hUT4JGUoUjwNBR7VZ3eNrH5hUe7gcU2JCF0iYncSS6y2
 w1/AinWLHG1tmNK2pI42Onwm5v9YIu7QgrznqMQ4SIcjsOwy/CVpyVqxs
 ldgRpdyXBev71OUeNwFueMedXD+UY/IlM3m/fbCb1l0zxDm1z/fMZaVZs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="329083172"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="329083172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 09:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="714321613"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="714321613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 28 Mar 2023 09:49:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 19:49:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 19:49:38 +0300
Message-Id: <20230328164938.8193-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Make utility pin asserts more accurate
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

Only the PWM output mode of the utility pin is incompatible
with DC6/LCPLL disable. Check for that specifically.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6609
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 6 ++++--
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f86060195987..ff787bd42573 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1182,8 +1182,10 @@ static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
 				"CPU PWM2 enabled\n");
 	I915_STATE_WARN(intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
 			"PCH PWM1 enabled\n");
-	I915_STATE_WARN(intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
-			"Utility pin enabled\n");
+	I915_STATE_WARN((intel_de_read(dev_priv, UTIL_PIN_CTL) &
+			 (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
+			(UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
+			"Utility pin enabled in PWM mode\n");
 	I915_STATE_WARN(intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
 			"PCH GTC enabled\n");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1676df1dc066..c694f28e6b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -818,8 +818,10 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
 static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
 {
 	drm_WARN_ONCE(&dev_priv->drm,
-		      intel_de_read(dev_priv, UTIL_PIN_CTL) & UTIL_PIN_ENABLE,
-		      "Backlight is not disabled.\n");
+		      (intel_de_read(dev_priv, UTIL_PIN_CTL) &
+		       (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) ==
+		      (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
+		      "Utility pin enabled in PWM mode\n");
 	drm_WARN_ONCE(&dev_priv->drm,
 		      (intel_de_read(dev_priv, DC_STATE_EN) &
 		       DC_STATE_EN_UPTO_DC6),
-- 
2.39.2

