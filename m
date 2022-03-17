Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750674DCDAD
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD5E10E747;
	Thu, 17 Mar 2022 18:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE27210E747
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542215; x=1679078215;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UH98750x5Hi/QzRHA2Nd8U5uKGWDFoD2u4GRmmIhdHA=;
 b=dNDKXkP3AIh4FpQnjV4A/eagrX69p1ZyU1uIzIcmn4UsivbSdCLSqbup
 tbFrGU6zRSzGHLEGHApK5uVL/qm1MimvSlGZa5ZPooq2ur/cE90Yx/zGT
 gRgHjmO27ewBzjvORGgZQlZ6PcOFocToY7dv8QrvFbqnuqLmqurVRRaEY
 Awd+CtNyDlyJJ9iUJfv57VWudrrVyPQ1dLwDls//9+dRa/2dsdyAkb55Q
 my9273TEO5hHEKa+u+zxqTR8IvnHWD1Tf6waqliu5+FP6GnyP7U1URLTU
 kGIlGhcuOnya+sxj1T/n9oFg1wwjzbwURjsyfSsInZhQJxGO2Z/FjNntN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237566726"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="237566726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="647154541"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:19 +0200
Message-Id: <f1b1c0d1db3b64761f7b91ce936d42cd4d50ef8f.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/dmc: hide DMC version macros
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The macros are now only needed within intel_dmc.c, so move them there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dmc.h | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 86d48029d488..7b7c757ce0ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -37,6 +37,10 @@
  * low-power state and comes back to normal.
  */
 
+#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
+#define DMC_VERSION_MAJOR(version)	((version) >> 16)
+#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
+
 #define DMC_PATH(platform, major, minor) \
 	"i915/"				 \
 	__stringify(platform) "_dmc_ver" \
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index dd8880d2cbed..41091aee3b47 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -13,10 +13,6 @@
 struct drm_i915_error_state_buf;
 struct drm_i915_private;
 
-#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
-#define DMC_VERSION_MAJOR(version)	((version) >> 16)
-#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
-
 enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
-- 
2.30.2

