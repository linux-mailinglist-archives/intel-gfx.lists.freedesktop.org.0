Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D8E87363B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:25:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B67E6113113;
	Wed,  6 Mar 2024 12:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBjEwfqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB52112F37;
 Wed,  6 Mar 2024 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727905; x=1741263905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yc2tlIagXXLBRNu4U5mTiHZ2itjkVkQoNBbnRj1HXyc=;
 b=LBjEwfqnZVsvGnKp74ja/uSr/3kRpvnyRYYDL8469dKVVanbO1+XFA2d
 ITWXksxGsAAxI711ovL2gSsmjbNdi1bwod5JnOxfsXnUyON1zJQWfA528
 Cvkly29zog0gb+mtgQe5GHXB05DeqGKqCxam5dezjaHLNL+WSRkXvp/BO
 JxIrz3QEKCUmXotx/sZH7HL8WMwBQV5gm72CsCeArNbLyddUYrLfxxJ43
 yd299nd4BmZ9m/NmaodUJQ2fottz1IDg1I2mtPkA8wd5fc8QX/mXPond1
 S1Fd1KCajgJtdQ86dXm7bCBVYyX4vjX2uKWhhZdvoaGpfjhKKcWkN3vZo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4919481"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4919481"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:25:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14415803"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [RFC v2 3/4] drm/i915/display: accept either i915 or display for
 feature tests
Date: Wed,  6 Mar 2024 14:24:37 +0200
Message-Id: <43e805da6002ece451c6b1df566c90d11ab27420.1709727127.git.jani.nikula@intel.com>
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

Use _Generic() to allow passing either struct drm_i915_private * or
struct intel_display * to the feature test macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe4268813786..ac52a6b27bd2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -13,6 +13,12 @@
 struct drm_i915_private;
 struct drm_printer;
 
+/* transitional until we have no i915 pointers */
+#define __display(i915_or_display)					\
+	_Generic(*i915_or_display,					\
+		 struct drm_i915_private: (((const struct drm_i915_private *)(i915_or_display))->__intel_display_private), \
+		 struct intel_display: (i915_or_display))
+
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
@@ -98,8 +104,8 @@ struct drm_printer;
 	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))
 
-#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
+#define DISPLAY_INFO(i915)		(__display(i915)->info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&__display(i915)->info.__runtime_info)
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
 #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
-- 
2.39.2

