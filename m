Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0290B616093
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9962E10E483;
	Wed,  2 Nov 2022 10:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFFB10E481
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383743; x=1698919743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=byAekGlPgVj6JGQ9uC4Y3s9EdS3v9xjIif8M4eC5J+Q=;
 b=LK7lsT7ceCNGrQSy6wiaA4/ZT8esGMoEXFMqf8a6Yu7dTCtO9EifX+UQ
 2wyhsWznOGGeLSzJTiPzdme4uadheMC8oFfwenRTjPzOa4ejwL5dlBVm+
 eTsk2YBTrjoe/0eofdCkRsCDMtio17tmdZRrjzynH58Msbvf6E9q9RUsn
 U5SjMbrUscOGLTAC4exKJh+/XjjNOf0VSVkhi35YuT4hWYzs4oyLj8WyX
 TI+YCVGpFaDw5afxTlnXM7gAE8OLwftfosXAZY8iTe2yoQt58Qu+xngfv
 VqoRwatZy2/JsQUhd+MaZsoHEgtvDrgsxmc2f6TSi5U78ebGWjAg58fom A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807674"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807674"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469126"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469126"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:17 +0200
Message-Id: <5949a57979dae615731b6ff54d5d150b91e34d27.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 09/16] drm/i915/display: reduce includes in
 intel_hdmi.h
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

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 93f65a917c36..774dda2376ed 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -6,20 +6,20 @@
 #ifndef __INTEL_HDMI_H__
 #define __INTEL_HDMI_H__
 
-#include <linux/hdmi.h>
 #include <linux/types.h>
 
+enum hdmi_infoframe_type;
+enum port;
 struct drm_connector;
+struct drm_connector_state;
 struct drm_encoder;
 struct drm_i915_private;
 struct intel_connector;
+struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
-struct intel_crtc_state;
 struct intel_hdmi;
-struct drm_connector_state;
 union hdmi_infoframe;
-enum port;
 
 void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
-- 
2.34.1

