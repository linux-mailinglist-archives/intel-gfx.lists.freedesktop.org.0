Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC257DDF31
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2174A10E6AF;
	Wed,  1 Nov 2023 10:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFC510E6AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833813; x=1730369813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3xZOzAKYJbCb7DVW9Olo4MJCz2OD7dy7zIJpzIs/YPA=;
 b=htrjTFWSeAt41DRaOl/E9Q8KBd1maE+FFb4FVqYl1PMgAFwslvq3bpkd
 LSzP0IRyufI1j7bYnldRMUqrooRrLfxBz5M39U+NodSCppw7Sil8+TKcP
 SZL3XL4VzbB4sYswDU7nRfv+OH0IywNerv+l0PjnQpkr0r3V0HH06ELDF
 P9T2npY+PEjU0GMLsv8K+ClupMjAQO4UqGsm45tEQh4QUwiwqYRtOIYSi
 vs/bPYPtqJ8KxrWjwfmL/4vZj5YhqQLpw2QtBzVchfkxvSbbCiRbRAsQv
 oNsy24uvorRxdnSHEsxN7V6lebxVVEwXoNAdRiwjVJ80ny6/F6CaAUh8h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="385647431"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="385647431"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="2044718"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:20 +0200
Message-Id: <251ce78472dc3dffd522043dc366be0afa2ad75e.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698833543.git.jani.nikula@intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: bxt/icl GPIO set value do not
 need gpio source
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

Drop the unused parameter.

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index f977d63a0ad4..4af43cf3cee0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -346,7 +346,7 @@ static void chv_gpio_set_value(struct intel_connector *connector,
 }
 
 static void bxt_gpio_set_value(struct intel_connector *connector,
-			       u8 gpio_source, u8 gpio_index, bool value)
+			       u8 gpio_index, bool value)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	/* XXX: this table is a quick ugly hack. */
@@ -486,13 +486,13 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	if (native)
 		icl_native_gpio_set_value(i915, gpio_number, value);
 	else if (DISPLAY_VER(i915) >= 11)
-		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_index, value);
 	else if (IS_VALLEYVIEW(i915))
 		vlv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(i915))
 		chv_gpio_set_value(connector, gpio_source, gpio_number, value);
 	else
-		bxt_gpio_set_value(connector, gpio_source, gpio_index, value);
+		bxt_gpio_set_value(connector, gpio_index, value);
 
 	return data + size;
 }
-- 
2.39.2

