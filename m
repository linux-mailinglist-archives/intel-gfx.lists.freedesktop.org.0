Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FF09648FA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A722A10E6E1;
	Thu, 29 Aug 2024 14:48:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hb4D7SFW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75B210E6EF;
 Thu, 29 Aug 2024 14:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942898; x=1756478898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MxjYjZ4VG+DZ7fNKbmyNHvfThU+uRO8QVHhNn/ynrQs=;
 b=hb4D7SFWSlIuNWSvbuUPXNwI49sl5xeZ/GOT25bSG/FJaRquTKaP0H4y
 FNJPMzwv21/yX0OKXYFKb0TsoJo1HjH1z6M26DjZKNOcxFoI15Gjo4v0f
 NURGNoBL+VETAEfi3lpVWkYiYXMvfrzM6cdGDOYwk9T2sWPV+Haq5D8/W
 BhfE0D6tkpjGbpJ00/OtocY6JBVOtEj/aXvbA8SS42Iu40Tobhw4LKGJU
 egcOQwUCuEbQnTSLLestAftU0+AVJRIavXVFjyepszfvabdunkfu4CpP9
 2I7lLlrYiUZcvaYg28hAuQh/Qt8zN/yK/lcdTsAIOWcQ0Kxve9ngfYkEI g==;
X-CSE-ConnectionGUID: dQ1bR+yPR1GRJSLLidrjKQ==
X-CSE-MsgGUID: 5iBIj3d6S96WuhoJ3XS+lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23059236"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23059236"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:17 -0700
X-CSE-ConnectionGUID: aFwylpPbTf6pDgsL2XLsmA==
X-CSE-MsgGUID: hhKNbvfJQxC3B3dCCQwL3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63923370"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 2/6] drm/i915: support struct device and pci_dev in
 to_intel_display()
Date: Thu, 29 Aug 2024 17:47:44 +0300
Message-Id: <f025a3fa4422725c78baac4501ad3ecc9e5b40d5.1724942754.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
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

Now that both xe and i915 store struct drm_device in drvdata, we can
trivially support struct device and struct pci_dev in
to_intel_display().

We do need to check for NULL drvdata before converting it into struct
intel_device pointer, though. Do it in __drm_device_to_intel_display().

v2: Add NULL check in __drm_device_to_intel_display() (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bd290536a1b7..d43aaf963cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2205,7 +2205,11 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
  * intel_display pointer.
  */
 #define __drm_device_to_intel_display(p) \
-	(&to_i915(p)->display)
+	((p) ? &to_i915(p)->display : NULL)
+#define __device_to_intel_display(p)				\
+	__drm_device_to_intel_display(dev_get_drvdata(p))
+#define __pci_dev_to_intel_display(p)				\
+	__drm_device_to_intel_display(pci_get_drvdata(p))
 #define __intel_atomic_state_to_intel_display(p)	\
 	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_connector_to_intel_display(p)		\
@@ -2231,6 +2235,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 #define to_intel_display(p)				\
 	_Generic(*p,					\
 		 __assoc(drm_device, p),		\
+		 __assoc(device, p),			\
+		 __assoc(pci_dev, p),			\
 		 __assoc(intel_atomic_state, p),	\
 		 __assoc(intel_connector, p),		\
 		 __assoc(intel_crtc, p),		\
-- 
2.39.2

