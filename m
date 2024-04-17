Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D03178A83A2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5275A1134C0;
	Wed, 17 Apr 2024 13:03:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYZwcCD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36A01134C0;
 Wed, 17 Apr 2024 13:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358993; x=1744894993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5c/1HJ39E09YtXj0aU5HUyHE5fuBVUha3BLTUCCDurw=;
 b=NYZwcCD4Pv1tKhLCTmL7ad//Sj67U5vK8zZyJb7gtFEWWTMrTU2O1bzG
 vCOFN6GdgH+IzBcxC9etc9wwsvNfxD0aCizv3z2ROgoqQpnWjqfRAZ8B7
 cS2Mad1DK5a4gb9NtKoFV3pX0wT9fsknLd6vEObyV8oKCWPdQr+GmlfEE
 EwMjFB8S+3/DzQ7m3z7k8LJMfD9ifcO9VV8+kCXQC1J3XFe0GVBuWAm/Y
 6NxeGhkN9CCpAYfXLJ3EJ+Canf1McuNNe/bnwdIa2ApoXR3buUnNp5Ri6
 64DDKTdZQlfppdYbBH8MutGg02q7XCh/6+R8ci5xjLz4EFPY7zR8Q0UdM Q==;
X-CSE-ConnectionGUID: EmE8lpC8T+ymeQjQEmKA5Q==
X-CSE-MsgGUID: OEV56m12TjKIACkMW21XhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="26310506"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="26310506"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:13 -0700
X-CSE-ConnectionGUID: CgPtiNQyQTuj7NaMC1Scvw==
X-CSE-MsgGUID: llSYTbn9Rne9kc5rOdGXJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22628534"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:03:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 4/9] drm/i915/display: accept either i915 or display for
 feature tests
Date: Wed, 17 Apr 2024 16:02:42 +0300
Message-Id: <bed78da39e6bd1587db4dab820602c55c63cdd6a.1713358679.git.jani.nikula@intel.com>
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

Use the generic __to_intel_display() to allow passing either struct
drm_i915_private * or struct intel_display * to the feature test macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 66b51de86e38..17ddf82f0b6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+#include "intel_display_conversion.h"
 #include "intel_display_limits.h"
 
 struct drm_i915_private;
@@ -100,8 +101,8 @@ struct drm_printer;
 	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
-#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
+#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
 #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
-- 
2.39.2

