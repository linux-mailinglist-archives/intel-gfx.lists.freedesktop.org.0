Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9319143B02
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 11:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1516EC4C;
	Tue, 21 Jan 2020 10:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D22C6EC4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 10:30:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 02:30:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="228770325"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 02:30:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 12:30:20 +0200
Message-Id: <20200121103020.26494-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: drop alpha_support for good in favour
 of force_probe
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's been a long enough transition period since the DRM_I915_FORCE_PROBE
config and i915.force_probe module parameter were introduced in commit
7ef5ef5cdead ("drm/i915: add force_probe module parameter to replace
alpha_support"). Remove alpha support.

Cc: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig       | 7 -------
 drivers/gpu/drm/i915/i915_params.c | 3 ---
 drivers/gpu/drm/i915/i915_params.h | 1 -
 drivers/gpu/drm/i915/i915_pci.c    | 7 -------
 4 files changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index ba9595960bbe..023206136d6d 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -42,16 +42,9 @@ config DRM_I915
 
 	  If "M" is selected, the module will be called i915.
 
-config DRM_I915_ALPHA_SUPPORT
-	bool "Enable alpha quality support for new Intel hardware by default"
-	depends on DRM_I915
-	help
-	  This option is deprecated. Use DRM_I915_FORCE_PROBE option instead.
-
 config DRM_I915_FORCE_PROBE
 	string "Force probe driver for selected new Intel hardware"
 	depends on DRM_I915
-	default "*" if DRM_I915_ALPHA_SUPPORT
 	help
 	  This is the default value for the i915.force_probe module
 	  parameter. Using the module parameter overrides this option.
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 905decc36e53..9c8257cf88d0 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -92,9 +92,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe the driver for specified devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named_unsafe(alpha_support, bool, 0400,
-	"Deprecated. See i915.force_probe.");
-
 i915_param_named_unsafe(disable_power_well, int, 0400,
 	"Disable display power wells when possible "
 	"(-1=auto [default], 0=power wells always on, 1=power wells disabled when possible)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 947d0a38fa3c..ef4069645cb8 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -70,7 +70,6 @@ struct drm_printer;
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned long, fake_lmem_start, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
-	param(bool, alpha_support, IS_ENABLED(CONFIG_DRM_I915_ALPHA_SUPPORT), 0400) \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, prefault_disable, false, 0600) \
 	param(bool, load_detect_test, false, 0600) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 83f01401b8b5..6fbec2e7068d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -928,13 +928,6 @@ static bool force_probe(u16 device_id, const char *devices)
 	char *s, *p, *tok;
 	bool ret;
 
-	/* FIXME: transitional */
-	if (i915_modparams.alpha_support) {
-		DRM_INFO("i915.alpha_support is deprecated, use i915.force_probe=%04x instead\n",
-			 device_id);
-		return true;
-	}
-
 	if (!devices || !*devices)
 		return false;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
