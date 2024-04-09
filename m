Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 476EC89D933
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1418A112D40;
	Tue,  9 Apr 2024 12:27:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhluZd8z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9883C10FE9F;
 Tue,  9 Apr 2024 12:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665646; x=1744201646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fh+BDEyl4PK//ZUzfOiCeNzPi7RqETxfr/uyUl3C/NA=;
 b=IhluZd8zhpYINThYETe72g1XZTisHTBhuvuk5dt+PuJ/Vc+8grVUsT07
 wh5QHG9HW0/C4biCtyqUdImqloPTjlMBNMtJiDcXfJJdgcdkLNtPTvcB0
 zqQtaYAWSkZ8un2rqU23jKVkpjkZvdO9hbQTLY8StMMdtmXbOZQljC4l0
 gG5wE1FH6vsov6pok/1r1t+48xBOgDngAGvxJw5L4RoHE2W6dXj8hs257
 DEWBzTA//uJ0tEuJkDQk5XvuhQUDOXDXQJUDcI6rR/4lSpf37AYzOmQOu
 naq/V6t+iaNH7IRYfEIyfA7zw42Q1e1d6vAnl/osix3jVfKUqcz3Vp2+6 g==;
X-CSE-ConnectionGUID: JoxI8SB1Raac5gDp3Fc8fA==
X-CSE-MsgGUID: dhO8K9axQ3KyY7O00UfFxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10948485"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="10948485"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:25 -0700
X-CSE-ConnectionGUID: MzCcEBA0RxKYsg3eF8WHsg==
X-CSE-MsgGUID: c+2e7uEEQY6OqlQF7cMXwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24695818"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:27:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net
Subject: [PATCH v3 5/7] drm/i915/display: accept either i915 or display for
 feature tests
Date: Tue,  9 Apr 2024 15:26:47 +0300
Message-Id: <31d28ef1952d516c737af7b198c6008fe3aece2e.1712665176.git.jani.nikula@intel.com>
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

Use the generic __to_intel_display() to allow passing either struct
drm_i915_private * or struct intel_display * to the feature test macros.

Unfortunately, this requires including i915_drv.h in xe display
code. This is still better than polluting the main xe_device.h or
xe_device_types.h files with the __to_intel_display() macro definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c            | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 66b51de86e38..01c6a4bef179 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -100,8 +100,8 @@ struct drm_printer;
 	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
-#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
+#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
 #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index ac4b870f73fa..54314760f47a 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -19,6 +19,7 @@
 #include "xe_map.h"
 #include "xe_pm.h"
 #include "xe_uc_fw.h"
+#include "i915_drv.h"
 
 #define HECI_MEADDRESS_HDCP 18
 
-- 
2.39.2

