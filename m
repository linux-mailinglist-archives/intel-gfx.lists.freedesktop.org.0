Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6A68A839F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F6D1134C1;
	Wed, 17 Apr 2024 13:03:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H2bXUZ5U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0FC11134B8;
 Wed, 17 Apr 2024 13:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358983; x=1744894983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qTk6iPrq6cTcy+zuBi5nLeiyhlbJQKPZU/Xel92KU7s=;
 b=H2bXUZ5U3Gj/8RKRqHZK3SrSU8n7U5uQz+534xzD4jTZezgQ5H3Jnort
 EQn4bkEO0UfbPPfLbubLzh/uEtokRAfiUINTTIpJWS1cav16Zhy7LZB8d
 wSlOCsNd6Xf6blcNrnrTg3btKf2ad1HKyTIUDli/nzgg/iFZBR0/z2GJw
 BBy35zAavw9bKbA5ngjKQFcLBlJG5E+xKNTSkHrDgEZEz5hJgNAfl98n4
 oQYj5WFExrjr9//2kkjUz49c8WGtO9t/0Fo/zSq0rdTAE5AbsjR1wlt4y
 jpgr/dUB6CNxn/Tw301m4Aukxr7HK2txMloCjGQwvyGzrgcZtvJVHAAoJ w==;
X-CSE-ConnectionGUID: zcH08MBOSCO1ZkxPIY+B1w==
X-CSE-MsgGUID: flCNqNc/Ra2yDjktD7xPQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976809"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976809"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:02 -0700
X-CSE-ConnectionGUID: 53ZC7Nz/TVS6Aj3YQnt96A==
X-CSE-MsgGUID: cn/beyDDQbSAwVJfwLGg8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199386"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 2/9] drm/i915/display: add generic to_intel_display() macro
Date: Wed, 17 Apr 2024 16:02:40 +0300
Message-Id: <02cf407961200db4379370856c779ea62b3eaa90.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
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

Note: This intentionally does *not* cover struct drm_i915_private or
struct xe_device. They are not to be used in the long run, so avoid
using this macro for them.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0f4bd5710796..1be98c4219b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2197,4 +2197,41 @@ static inline int to_bpp_x16(int bpp)
 	return bpp << 4;
 }
 
+/*
+ * Conversion functions/macros from various pointer types to struct
+ * intel_display pointer.
+ */
+#define __drm_device_to_intel_display(p) \
+	(&to_i915(p)->display)
+#define __intel_connector_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_crtc_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_crtc_state_to_intel_display(p)			\
+	__drm_device_to_intel_display((p)->uapi.crtc->dev)
+#define __intel_digital_port_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.base.dev)
+#define __intel_dp_to_intel_display(p)	\
+	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
+#define __intel_encoder_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_hdmi_to_intel_display(p)	\
+	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
+
+/* Helper for generic association. Map types to conversion functions/macros. */
+#define __assoc(type, p) \
+	struct type: __##type##_to_intel_display((struct type *)(p))
+
+/* Convert various pointer types to struct intel_display pointer. */
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(drm_device, p),		\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_dp, p),			\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p))
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
-- 
2.39.2

