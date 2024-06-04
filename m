Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835B58FB721
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795F510E517;
	Tue,  4 Jun 2024 15:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/FOZbzK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5515310E4FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514946; x=1749050946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0U/7N+qeF3OyBHGyWvx6LHm574PWuqMUZ1/Z2T3tmCI=;
 b=c/FOZbzKyUyx3mSuhmybKeCilbqlauFM8rjmB/uEIvvxLOnylf9tQ5Rs
 ICthtNMeuJYBeVbHZIkv5hQ2EJeleAHQRuCYGmbnhUqH+6Gpnx/yuLBDG
 i0QFgpLITfQcwkt3dlP+OogIIuZRNmf5koPCJ/Q9lsjRQY8d28RdOtNCb
 XJ1VunGoscpmbhhB0KxS2Y1fsVO3zhSAlJtg1AeB7I6Nsc49IZ+UyJwfz
 kopujXqhQh7CzXxJi5uWkhx/kxQwbsbmcbbavBPxwkuOxMRD0fQYG1ITD
 omb2uy/m4dpJ7qPxMOg+2K9Ynl7Xa7i4EY9CrKupl8O2LGA/XYuipQnSO Q==;
X-CSE-ConnectionGUID: GlDKyEVWQ62FibB9yrtaFA==
X-CSE-MsgGUID: JAJ9SzOSQuikdhn3qbG8RA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949576"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949576"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:06 -0700
X-CSE-ConnectionGUID: pi5ZNxN7TjK+NNkwjkXLGw==
X-CSE-MsgGUID: o5CClNm4R6efq6Vx7DsHYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465591"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 33/65] drm/i915: pass dev_priv explicitly to SWF0
Date: Tue,  4 Jun 2024 18:25:51 +0300
Message-Id: <df957a1dfeddc14e4b62d6e2a1bf8104d506be87.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the SWF0 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h     |  2 +-
 drivers/gpu/drm/i915/i915_suspend.c | 12 ++++++++----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8aa35bbb2e1b..8b379ff60070 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2290,7 +2290,7 @@
  * [10:1f] all
  * [30:32] all
  */
-#define SWF0(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
+#define SWF0(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70410 + (i) * 4)
 #define SWF1(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x71410 + (i) * 4)
 #define SWF3(i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index bc449613c848..ac8221ae97f3 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -40,7 +40,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 	/* Scratch space */
 	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
+								      SWF0(dev_priv, i));
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 		}
 		for (i = 0; i < 3; i++)
@@ -50,7 +51,8 @@ static void intel_save_swf(struct drm_i915_private *dev_priv)
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv, SWF0(i));
+			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
+								      SWF0(dev_priv, i));
 			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv, SWF1(i));
 		}
 		for (i = 0; i < 3; i++)
@@ -65,7 +67,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 	/* Scratch space */
 	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
 		for (i = 0; i < 7; i++) {
-			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
+			intel_de_write(dev_priv, SWF0(dev_priv, i),
+				       dev_priv->regfile.saveSWF0[i]);
 			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
@@ -75,7 +78,8 @@ static void intel_restore_swf(struct drm_i915_private *dev_priv)
 			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 	} else if (HAS_GMCH(dev_priv)) {
 		for (i = 0; i < 16; i++) {
-			intel_de_write(dev_priv, SWF0(i), dev_priv->regfile.saveSWF0[i]);
+			intel_de_write(dev_priv, SWF0(dev_priv, i),
+				       dev_priv->regfile.saveSWF0[i]);
 			intel_de_write(dev_priv, SWF1(i), dev_priv->regfile.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-- 
2.39.2

