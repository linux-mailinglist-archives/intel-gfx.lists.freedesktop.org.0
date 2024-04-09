Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEBC89D930
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2BF310FA87;
	Tue,  9 Apr 2024 12:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntTaNh14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8170510FE9F;
 Tue,  9 Apr 2024 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665629; x=1744201629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4cGcAtQ6s3nG1l0OooS2vLIN6LgKFCN3dknSqb8jFS8=;
 b=ntTaNh14jjgdzNBI1Q6187Uuwhvcu8Skfjs07gbPaRxHGEgeDhmtqfEB
 CadgdLsMidjdXDKMfEb6HYsM2BPkW6BeoHLQbeqvim8tcnggMuznJFy4V
 53/0ARiCcbO67Dh3Iozy8hmWgJUzdUY+OzMcdQ6e3oHuuz2p9KKWizuBg
 mRUuI9XGRxXlsqux/8T8eGv31i3FroSDkZQuyQV2oc1L146iG0K3UtKuh
 sEH/USJ5v9a2pH1MrJAzyFh5mpdpvd5M3Pwg/g9aI22EOn0yQ0/LOyUiA
 u9pAqmgCztNW4TbCclKflRBz+cCClx11kLSqRNkLFldPVvo5vVd8ufuAz g==;
X-CSE-ConnectionGUID: 0Amf8/5UQ5+sg68LmIVceQ==
X-CSE-MsgGUID: tA46PBf8RyuM6Re1jQPQ/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10948470"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="10948470"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:08 -0700
X-CSE-ConnectionGUID: RVDf1kUmQimaTfv753uTCg==
X-CSE-MsgGUID: GkOueCVSRyKpAhAM05e8dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24695731"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net
Subject: [PATCH v3 2/7] drm/i915/display: add generic to_intel_display() macro
Date: Tue,  9 Apr 2024 15:26:44 +0300
Message-Id: <11bb764f479cd3638f0701d4466ae47dfd8def81.1712665176.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712665176.git.jani.nikula@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
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

