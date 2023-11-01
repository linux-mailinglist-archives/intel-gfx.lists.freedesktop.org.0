Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE24F7DDF38
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A06510E6B1;
	Wed,  1 Nov 2023 10:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C8910E6B1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833817; x=1730369817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o51TB2f+HWDRIokLvvlWQYFq0c3/JFb95C/fYIKVF3c=;
 b=Z7KY01oIoZSWobyNqENUel5F0lmf3MasIL4vDrMisugUVIGohKKttJ/K
 g56nZ90/NKgwqztUOagZOMMUqZ5oyvAIqXRGm2zFzh4aBjdLIm6OPv7QD
 epy2i3kdlUag7UNL7p0D8uhiHUd8vkTCpJDY78HVkC5MY5WpqDBsueSik
 XvxKVpDlxAV46A2POPsTjMtVdIw2E5aD9JA1XidpkQA/+UNwVUKvVGF40
 sWNmyk2YAJLyW542+5hatVc7NqtBTIyRFo/BIkHdC6al7Cq+5eyi9vu0j
 csJ9P5rZiZkpe2142B0Fdsl0k/CPKjWCA91enSWjben51Ok42yIiJ+Axn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="1323433"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="1323433"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="826732527"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="826732527"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:19 +0200
Message-Id: <9c4a95baa462c6d7af5a416050268ad33eb82c28.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698833543.git.jani.nikula@intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dsi: rename platform specific
 *_exec_gpio() to *_gpio_set_value()
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

The lowest level functions are about setting GPIO values, not about
executing any sequences anymore.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 11073efe26c0..f977d63a0ad4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -243,8 +243,8 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 	return data;
 }
 
-static void vlv_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void vlv_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct gpio_map *map;
@@ -291,8 +291,8 @@ static void vlv_exec_gpio(struct intel_connector *connector,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void chv_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void chv_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u16 cfg0, cfg1;
@@ -345,8 +345,8 @@ static void chv_exec_gpio(struct intel_connector *connector,
 	vlv_iosf_sb_put(dev_priv, BIT(VLV_IOSF_SB_GPIO));
 }
 
-static void bxt_exec_gpio(struct intel_connector *connector,
-			  u8 gpio_source, u8 gpio_index, bool value)
+static void bxt_gpio_set_value(struct intel_connector *connector,
+			       u8 gpio_source, u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	/* XXX: this table is a quick ugly hack. */
@@ -486,13 +486,13 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	if (native)
 		icl_native_gpio_set_value(i915, gpio_number, value);
 	else if (DISPLAY_VER(i915) >= 11)
-		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(i915))
-		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
+		vlv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(i915))
-		chv_exec_gpio(connector, gpio_source, gpio_number, value);
+		chv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else
-		bxt_exec_gpio(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
 
 	return data + size;
 }
-- 
2.39.2

