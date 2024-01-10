Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43463829F65
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 18:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A7810E7B4;
	Wed, 10 Jan 2024 17:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94C6710E7AF;
 Wed, 10 Jan 2024 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704908399; x=1736444399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zexNkvCQ67jdQ0GXL/1f8xiolt1zuQS0CjjtfnvtP4c=;
 b=RzamyRCyUlo9TbvmtSGBKOscuQ4YwjrNmt5pvx73L4G/WdVRe9TOaeh0
 zir/5jNOgs5If7Q2vBW1CS/RJSnvwl4OtOTJTYqAOsPVJqcpGeTVpDrpi
 y6pJmqSl5/kNNgVptHQSDPaWY4v+mdBknuDN2v7aA3c0sS4JY5S0ICgMn
 6qXHTzpBTeSuRgCD8UKDxQKlpSuDi4PwnJ6aOvyDM/4tg4flzAnnTP1mQ
 AXA5t/koIqCfTD7U/UV9pLaigeIXLMU1gm4497QY3Px+gft4JICztZhPR
 iDlOEKtUxnTGBsfMt5ug0UboQqHj84rtQI0ZVrhENN7APbJjubnhxSIxW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="389029404"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="389029404"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 09:39:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="955438116"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="955438116"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.36.240])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 09:39:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 6/6] drm: Add CONFIG_DRM_WERROR
Date: Wed, 10 Jan 2024 19:39:16 +0200
Message-Id: <0daf415493377f0a06970dba9247ebbbdfb79220.1704908087.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704908087.git.jani.nikula@intel.com>
References: <cover.1704908087.git.jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add kconfig to enable -Werror subsystem wide. This is useful for
development and CI to keep the subsystem warning free, while avoiding
issues outside of the subsystem that kernel wide CONFIG_WERROR=y might
hit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/Kconfig  | 18 ++++++++++++++++++
 drivers/gpu/drm/Makefile |  3 +++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 6ec33d36f3a4..36a00cba2540 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -414,3 +414,21 @@ config DRM_LIB_RANDOM
 config DRM_PRIVACY_SCREEN
 	bool
 	default n
+
+config DRM_WERROR
+	bool "Compile the drm subsystem with warnings as errors"
+	# As this may inadvertently break the build, only allow the user
+	# to shoot oneself in the foot iff they aim really hard
+	depends on EXPERT
+	# We use the dependency on !COMPILE_TEST to not be enabled in
+	# allmodconfig or allyesconfig configurations
+	depends on !COMPILE_TEST
+	default n
+	help
+	  A kernel build should not cause any compiler warnings, and this
+	  enables the '-Werror' flag to enforce that rule in the drm subsystem.
+
+	  The drm subsystem enables more warnings than the kernel default, so
+	  this config option is disabled by default.
+
+	  If in doubt, say N.
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 8b6be830f7c3..b7fd3e58b7af 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -32,6 +32,9 @@ subdir-ccflags-y += -Wno-sign-compare
 endif
 # --- end copy-paste
 
+# Enable -Werror in CI and development
+subdir-ccflags-$(CONFIG_DRM_WERROR) += -Werror
+
 drm-y := \
 	drm_aperture.o \
 	drm_atomic.o \
-- 
2.39.2

