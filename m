Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1473896D32
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904AA112826;
	Wed,  3 Apr 2024 10:51:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1oMpelH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F37DA11263F;
 Wed,  3 Apr 2024 10:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141507; x=1743677507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gdyAvl2ku3TYX1gG2FKpS39C3vPWe9URIlYDj2KKYoE=;
 b=j1oMpelHeQ1SM9rh4QMWsOFmUM6qez879nZm+YLt555w4UO05Y5CUdHO
 CTUK4SBK6cKF9QxZomMIzt01BlvwcIF5RxwZzkfxAqvOVv5EWM1RkQPsg
 khP6Z+67+6jNBoUjwzPu7DamXdiOZrGQ3ZpD/lAbNZXhsqRIqRvu7u1Fs
 RMUAa8UEDwPeCloi0hDZ8xOLfP+r2uRkFmXkkTtQAHCyhKWCmTQ92qrPi
 pLxd9nuaFRUFm66RaM/xaMqNKYJZoladNlo+wXZ9jexPAu7fsTj2RK6pG
 9CAiPGslImm5EL1aVvuhv9D33Od/NOdy2XFxXtfRxtlKh374MoGdn4oal A==;
X-CSE-ConnectionGUID: pGPWIKGgS8SxagZjSGEPxw==
X-CSE-MsgGUID: hcLRfgl4S+CqwQZ0/8RoYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212119"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212119"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:20 -0700
X-CSE-ConnectionGUID: qb3yywd8RqKIb9iKHNAERw==
X-CSE-MsgGUID: +BZkcxcbRQKZLd0N2/uQbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493338"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:18 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 04/25] drm/i915/bmg: Define IS_BATTLEMAGE macro
Date: Wed,  3 Apr 2024 16:21:02 +0530
Message-Id: <20240403105123.1327669-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
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

Display code uses IS_BATTLEMAGE macro but the platform support doesn't
still exist in i915. So fake IS_BATTLEMAGE macro defined to enable
building i915 code.  We should make sure the macro parameter is used in
the always-false expression so that we don't run into "unused variable"
warnings from i915 builds if the IS_BATTLEMAGE() check is the only place
the i915 pointer gets used in a function.

While we're at it, also update the IS_LUNARLAKE macro to include the
parameter in the false expression for consistency.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cf52d4adaa20..b41a414079f4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -546,7 +546,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
-#define IS_LUNARLAKE(i915) 0
+/*
+ * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
+ * so we need to define these even on platforms that the i915 base driver
+ * doesn't support.  Ensure the parameter is used in the definition to
+ * avoid 'unused variable' warnings when compiling the shared display code
+ * for i915.
+ */
+#define IS_LUNARLAKE(i915) (0 && i915)
+#define IS_BATTLEMAGE(i915)  (0 && i915)
 
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
-- 
2.25.1

