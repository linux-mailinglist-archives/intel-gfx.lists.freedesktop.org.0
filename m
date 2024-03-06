Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A84873639
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63B00113111;
	Wed,  6 Mar 2024 12:25:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8tMfe7v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37BA3112F37;
 Wed,  6 Mar 2024 12:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727904; x=1741263904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y7aCFz/KAIsbEf/3K/LXx2oIN/xH7/xIK9iBYUeTzdU=;
 b=Z8tMfe7vjKVJMD8byYSn8x8DLBCeMjPr8s1D7VW63v9HgrCk5eutW4vi
 rXxc0Tj2rp3UrxqkdEDJujW/vJTM3VN4SS9hpgXchqAv66KOU2NOM9vpX
 PcjMaRTtAksJ5qc8Q4BL/4LylqpG49hvG4G17iNoAV1wJy/U4FzstRgOC
 EhNQcem7uSKAVuaJ598WExooAetoIuWTjOE9aDiwWuIQezUinq8XbUS4c
 X2eV34j/snR364xKm0llrHCrPiAgB3p93l+V3SazmK/WS1JceIF3X8s03
 R0KQIvNmTl7f0QCIcz2ZSpCD7ej25oncl7/uiFCr8W9R3nOy9guOmrZpU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4919457"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4919457"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14415775"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [RFC v2 2/4] drm/i915/display: add generic to_intel_display() macro
Date: Wed,  6 Mar 2024 14:24:36 +0200
Message-Id: <0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709727127.git.jani.nikula@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
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

Convert various pointers to struct intel_display * using _Generic().

Add some macro magic to make adding new conversions easier, and somewhat
abstract the need to cast each generic association. The cast is required
because all associations needs to compile, regardless of the type and
the generic selection.

The use of *p in the generic selection assignment expression removes the
need to add separate associations for const pointers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e67cd5b02e84..3f63a5a74d77 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2183,4 +2183,50 @@ static inline int to_bpp_x16(int bpp)
 	return bpp << 4;
 }
 
+/*
+ * Conversion functions/macros from various pointer types to struct
+ * intel_display pointer.
+ */
+static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
+{
+	/*
+	 * Assume there's a pointer to struct intel_display in memory right
+	 * after struct drm_device.
+	 */
+	struct intel_display **p = (struct intel_display **)(drm + 1);
+
+	return *p;
+}
+
+#define __intel_connector_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_crtc_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_crtc_state_to_intel_display(p)			\
+	__drm_device_to_intel_display((p)->uapi.crtc->dev)
+#define __intel_digital_port_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.base.dev)
+#define __intel_encoder_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_hdmi_to_intel_display(p)	\
+	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
+#define __intel_dp_to_intel_display(p)	\
+	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
+
+/* Helper for generic association. Map types to conversion functions/macros. */
+#define __assoc(type, p) \
+	struct type: __##type##_to_intel_display((struct type *)(p))
+
+/* Convert various pointer types to struct intel_display pointer. */
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p),		\
+		 __assoc(intel_dp, p),			\
+		 __assoc(drm_device, p))
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
-- 
2.39.2

