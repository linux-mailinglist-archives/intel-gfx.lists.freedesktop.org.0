Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547827DDF2D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715CA10E6A8;
	Wed,  1 Nov 2023 10:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AC7910E6A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833798; x=1730369798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YgX0c6S5Kn8fHFm/dSYHPjvkZEfAQGcHC02jqmrftQA=;
 b=TWR0ILKzi5jpXIvKhRRLF4/aSRZ4Ueg2Nskc7hntQYJSyM4rgLjwlTkd
 3AB9MJkPWtZuIZuVbNeTs5KYvxFLp9toRiG17rFTe8Q2rCp0Q1wh8L2WL
 ln8UQtt4UHSCQQ1SVOnCEqAp9xWapZpmsh2FHAdzZw5LDp6AGKFcGRDmW
 Fw4RtmAQ23djk9K1kJkO+yJXAO+LBooMox/4DZ3yV+Bpxr7uNfCUAw59Q
 EgThSgYcQBQp3XPBfUQaI2dy9vJGMnEAavveHX0+pSDGLMdbLl6NUwDer
 po4zQvXzs/qjKw/vYTPoKb9lAcVeC5tKJQHiTedGt37A/86VkiovfH0Ge Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="1323405"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="1323405"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="826732497"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="826732497"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:17 +0200
Message-Id: <0b0ed7269215e3ca3df107942a66fea7b25d826c.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698833543.git.jani.nikula@intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dsi: switch mipi_exec_gpio() from
 dev_priv to i915
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

Follow the contemporary conventions.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index b2c0cc11f8c1..8b962f2ac475 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -454,11 +454,11 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	u8 gpio_source, gpio_index = 0, gpio_number;
 	bool value;
-	bool native = DISPLAY_VER(dev_priv) >= 11;
+	bool native = DISPLAY_VER(i915) >= 11;
 
 	if (connector->panel.vbt.dsi.seq_version >= 3)
 		gpio_index = *data++;
@@ -477,16 +477,16 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	/* pull up/down */
 	value = *data++ & 1;
 
-	drm_dbg_kms(&dev_priv->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
+	drm_dbg_kms(&i915->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
 		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_off(value));
 
 	if (native)
-		icl_native_gpio_set_value(dev_priv, gpio_number, value);
-	else if (DISPLAY_VER(dev_priv) >= 11)
+		icl_native_gpio_set_value(i915, gpio_number, value);
+	else if (DISPLAY_VER(i915) >= 11)
 		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
-	else if (IS_VALLEYVIEW(dev_priv))
+	else if (IS_VALLEYVIEW(i915))
 		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (IS_CHERRYVIEW(i915))
 		chv_exec_gpio(connector, gpio_source, gpio_number, value);
 	else
 		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
-- 
2.39.2

