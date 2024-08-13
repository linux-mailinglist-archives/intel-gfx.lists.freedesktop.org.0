Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7043950A75
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA6C10E38E;
	Tue, 13 Aug 2024 16:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XCvomx5c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402C710E38C;
 Tue, 13 Aug 2024 16:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567290; x=1755103290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a3FNJO7/JPBuGCR1BqDPp5DFBbY//cgqvwZ4aaUroXc=;
 b=XCvomx5cEFlO/v9oJivmxrUE3Wnb8p2iwpXZYxdDq36PO6VQBYZsOFjR
 WirXky0tep9LnWoNE0MjUUsUh9Q0+jJ3y5PUQHyXSG7gy3Rgdl/EmC25P
 3zQGAvtx4UfKX43yB4OUHjEfEp3AdzdVjieyZnfiTTUeTs+SwT6a2GBWe
 H7mIKCmlAnO9KJqOsEPgSoiff+8TWBdq0gfy/mdvXg5idK0BE1/OlrU5m
 uN9PUyDML7gxUIvQrRT67qHh1jj9V11r3TuCl1p8+h68dGzIz6z/VdEQ+
 fgMlK2VKQNbd8N/eT+DMoJqQdMaS0RCapVInU2Imf0EGvP9gkYxDk74Wt Q==;
X-CSE-ConnectionGUID: duGiOH5iRf6il2IjqoeiCw==
X-CSE-MsgGUID: i9w1Osi7RPucsDD7ezI+sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714807"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714807"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:29 -0700
X-CSE-ConnectionGUID: 6N+Wwmp4Q1KK257KNdXZ7g==
X-CSE-MsgGUID: aQPG9eHITu+3HAEx9JlEpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611689"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915/display: support struct intel_atomic_state in
 to_intel_display()
Date: Tue, 13 Aug 2024 19:41:17 +0300
Message-Id: <20240813164123.2674462-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Add support for converting struct intel_atomic_state pointers to struct
intel_display pointers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ea6548ceab2f..bd290536a1b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2206,6 +2206,8 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
  */
 #define __drm_device_to_intel_display(p) \
 	(&to_i915(p)->display)
+#define __intel_atomic_state_to_intel_display(p)	\
+	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_connector_to_intel_display(p)		\
 	__drm_device_to_intel_display((p)->base.dev)
 #define __intel_crtc_to_intel_display(p)		\
@@ -2229,6 +2231,7 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 #define to_intel_display(p)				\
 	_Generic(*p,					\
 		 __assoc(drm_device, p),		\
+		 __assoc(intel_atomic_state, p),	\
 		 __assoc(intel_connector, p),		\
 		 __assoc(intel_crtc, p),		\
 		 __assoc(intel_crtc_state, p),		\
-- 
2.39.2

