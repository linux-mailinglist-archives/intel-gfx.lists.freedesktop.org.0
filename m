Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AAB9AECB1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 18:54:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A5910E398;
	Thu, 24 Oct 2024 16:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TWchqOLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F8610E398
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 16:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729788845; x=1761324845;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H4BQh9c7EcmvwRf2MRw7jItE2j7DrOQYoSGiet23WVA=;
 b=TWchqOLQtCN67WiUTx2IpTFSkfPmEiipZpMbsUfxMc5157nS4xgAjAxm
 1GIzZrtTcOCL+K3LEns8Ew2ccheUU+snIvOhmAn40kRxF8zyp6S4jZEJJ
 +aOhntNvbHXMdG9E5OslPZAbL7DYifG9PxXBmWJ1I658eMa6vXHF52oMv
 v4DLz9asxdOzHbZ0cG1hunUjig4SuN2SqmVm4q5z5/WWBnTHeOFPEgBO1
 irhzaw0K2phzfIawnDAI1GeiJ77g9e6acCj3y73wdUpbEnsWYk0VSEjf/
 gfvAEHZOJg24ThHCjf7mBaxfJrGavx5s2vwVk3f64EXse4l7qJ2+1gKfQ Q==;
X-CSE-ConnectionGUID: Dl9R1J7oRgCT6fHVKkQxJw==
X-CSE-MsgGUID: 51NkBONTRhyYXHDB2mxgvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40047971"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40047971"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 09:54:05 -0700
X-CSE-ConnectionGUID: x07JAc9HQHigjrTWo/XAFQ==
X-CSE-MsgGUID: 5D4OzgkgS5GU3RJqHErK6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80757448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 09:54:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2024 19:54:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Handle intel_plane and intel_plane_state in
 to_intel_display()
Date: Thu, 24 Oct 2024 19:53:54 +0300
Message-ID: <20241024165356.17756-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Allow one to pass intel_plane/intel_plane_state to
to_intel_display(). Works exactly like their crtc
counterparts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f..e63a1d23316c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2104,6 +2104,10 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_hdmi_to_intel_display(p)	\
 	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
+#define __intel_plane_to_intel_display(p)		\
+	__drm_device_to_intel_display((p)->base.dev)
+#define __intel_plane_state_to_intel_display(p)			\
+	__drm_device_to_intel_display((p)->uapi.plane->dev)
 
 /* Helper for generic association. Map types to conversion functions/macros. */
 #define __assoc(type, p) \
@@ -2122,6 +2126,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 		 __assoc(intel_digital_port, p),	\
 		 __assoc(intel_dp, p),			\
 		 __assoc(intel_encoder, p),		\
-		 __assoc(intel_hdmi, p))
+		 __assoc(intel_hdmi, p),		\
+		 __assoc(intel_plane, p),		\
+		 __assoc(intel_plane_state, p))
 
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
-- 
2.45.2

