Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4F27DDF2C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE8B610E6A7;
	Wed,  1 Nov 2023 10:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2671610E6A7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833791; x=1730369791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tIb/KesngtMQOwc6GwdCDPDb1EG+4sr893FVNNpBVO8=;
 b=fMOJrGBdrmleBM05n0eCEwNPPwjILkcbJgJaKkK7ZaGpzFpYg/inyNiY
 +1o7RchNxpruiPCbrDxL7dybIIGwFZs+M3MFME0ur3sAj7h3glH4upTRN
 p+iVgWU/8IRjfRcRZxVOsaKpchanUUw3ZzgIqu/hSu5DBsT02nW6m+Prg
 mWXaqe19Q5YF5gi/ugxEd27luZH4p0SVF3saaim/3/gMwd8L87p4MO98i
 58rM5J8yN2uX56RID2Gro0oMcv14L1VhzRQjzmApniz9RttesCo/dT05K
 qPWVucU0DbrXrXJ39z7NZ76XSXquYKITulO9LcqCPQgo1mYX7xSE3pMZv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="385647403"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="385647403"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="2044686"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:16 +0200
Message-Id: <9b8932909983cfa7eef9e44590c428df59ca9880.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698833543.git.jani.nikula@intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/dsi: assume BXT gpio works for
 non-native GPIO
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
Cc: jani.nikula@intel.com, Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Purely a guess. Drop the nop function.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 24b2cbcfc1ef..b2c0cc11f8c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -372,14 +372,6 @@ static void bxt_exec_gpio(struct intel_connector *connector,
 	gpiod_set_value(gpio_desc, value);
 }
 
-static void icl_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
-{
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-
-	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
-}
-
 enum {
 	MIPI_RESET_1 = 0,
 	MIPI_AVDD_EN_1,
@@ -491,7 +483,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	if (native)
 		icl_native_gpio_set_value(dev_priv, gpio_number, value);
 	else if (DISPLAY_VER(dev_priv) >= 11)
-		icl_exec_gpio(connector, gpio_source, gpio_index, value);
+		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(dev_priv))
 		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(dev_priv))
-- 
2.39.2

