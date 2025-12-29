Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7000ECE69DE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 12:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F161810E419;
	Mon, 29 Dec 2025 11:55:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImEfhHa0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BABC10E419;
 Mon, 29 Dec 2025 11:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767009311; x=1798545311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AjOpUYGrMQ+gn8drwiVxUnM2EvkVbo7SaLydfNdrNg8=;
 b=ImEfhHa0Mi9uRC3oU06Ta6tkEwMq/wKTna9UJ6TU9pKAX9wpsgIL9YPv
 gR2Cu2fgD3ZwsLIZFuMYCjbKWDFCOFMXy4lYBP1JL55z2KaJ4iQJgZPzT
 jMYMWcX0DmpP9rvzqLiTNLfb1AFG05iKYS0Mg1pSRCxh5b7aNKCEFgQY9
 ALSuCPud8+TNC2ZqsMPuXuUFRYZoXLPm4tWCQZBsbTBvWJUAFW8ugUhRg
 d6skNi07m6v7Q/AkM6NMX/2jahHBJrN2lPYPEcOR3rcoBcxqMKv41EDn1
 5ktYuGo1MF3vxlVyrqOL+x0Viy6VZ9ROJbDRNub/N9Q6O9/n1RlRIXSnw g==;
X-CSE-ConnectionGUID: 6ZGa/K3UQguJ6qqsmIErPw==
X-CSE-MsgGUID: j7Y9bEemR/WguWsDMwoKRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="68593164"
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="68593164"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:55:11 -0800
X-CSE-ConnectionGUID: a2sjNROGRq2LuC1fIw1B4A==
X-CSE-MsgGUID: HdWWEhB/Tem76LoTrIIhdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="201176786"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 03:55:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915/utils: drop unnecessary ifdefs
Date: Mon, 29 Dec 2025 13:54:45 +0200
Message-ID: <f40a1fd365cbcfb77bd76ce0041c4523699f6052.1767009044.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767009044.git.jani.nikula@intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

The i915_utils.h and intel_display_utils.h were in some cases included
from the same files, the former via i915_drv.h and the latter
directly. This lead to a clash between MISSING_CASE() and
fetch_and_zero() defined in both, requiring ifdefs.

With the display dependency on i915_drv.h removed, we can also remove
the now unnecessary ifdefs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_utils.h | 4 ----
 drivers/gpu/drm/i915/i915_utils.h                  | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
index 2a18f160320c..affa3179f52c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.h
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -9,18 +9,14 @@
 
 struct intel_display;
 
-#ifndef MISSING_CASE
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
-#endif
 
-#ifndef fetch_and_zero
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
 	__T;								\
 })
-#endif
 
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 9e5b7fcadbe2..ecc20e0528f4 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -38,22 +38,18 @@
 
 struct drm_i915_private;
 
-#ifndef MISSING_CASE
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
-#endif
 
 #define i915_probe_error(i915, fmt, ...) ({ \
 	drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
-#ifndef fetch_and_zero
 #define fetch_and_zero(ptr) ({						\
 	typeof(*ptr) __T = *(ptr);					\
 	*(ptr) = (typeof(*ptr))0;					\
 	__T;								\
 })
-#endif
 
 /*
  * check_user_mbz: Check that a user value exists and is zero
-- 
2.47.3

