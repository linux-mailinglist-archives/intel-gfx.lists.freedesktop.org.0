Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E013694C0C6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A05C10E771;
	Thu,  8 Aug 2024 15:16:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2xaxU3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A58610E771;
 Thu,  8 Aug 2024 15:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130188; x=1754666188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ym76z5okO7XFJfalI0fMYf4K3IDPuXXTxc/zwP6CmVg=;
 b=A2xaxU3TcD1Fa7mzqPOz0TuEXJpitP11BWh0BqmCyvv2lcESxmb3pa8Y
 3fcgMcI/DZvuw66Xspe8XzrvMkc5T7Dd5WI2c3e0X1uZHc3GBdzTj8Tra
 ao6faRgDjkOugF1hV5kQizN92lwTAtT4ldpJMjO7+vK6gUApb7SS3NScH
 Ug5ZXWeOV91uzpc3b9rO4hqYC77+xOsrTqhXYvDEbL5HducdG71RKS6jV
 ohbf8Bca5ihbHXPRSHPVooVUs3w1oyPJ3lQR/TAEQ8hzNa/ksGxuLKs0t
 lo7hCHuosd3OPEBnQNvIdnW1nlYJ1ZrVgRp3jybgGRrBYp18JQtWEx0ni Q==;
X-CSE-ConnectionGUID: foehoVHFQGijcMJT7/9ZeA==
X-CSE-MsgGUID: dEuZxMGvQz+s7zekCxMfQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667074"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667074"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:27 -0700
X-CSE-ConnectionGUID: LvHt/JRlRh2jd9XzcmFDDg==
X-CSE-MsgGUID: a7TSlLSlT8yfejZVA4ua1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920053"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 06/10] drm/i915: support struct device and pci_dev in
 to_intel_display()
Date: Thu,  8 Aug 2024 18:15:51 +0300
Message-Id: <4a70189eed5dcc7cb7c6a11d76bc43902f90197d.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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
index ea6548ceab2f..976c85446603 100644
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
 #define __intel_connector_to_intel_display(p)		\
 	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_crtc_to_intel_display(p)		\
@@ -2229,6 +2233,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 #define to_intel_display(p)				\
 	_Generic(*p,					\
 		 __assoc(drm_device, p),		\
+		 __assoc(device, p),			\
+		 __assoc(pci_dev, p),			\
 		 __assoc(intel_connector, p),		\
 		 __assoc(intel_crtc, p),		\
 		 __assoc(intel_crtc_state, p),		\
-- 
2.39.2

