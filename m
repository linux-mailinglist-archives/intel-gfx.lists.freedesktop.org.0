Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7118DA89770
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 11:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED66E10E36D;
	Tue, 15 Apr 2025 09:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dkuX9bFu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B5010E36D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 09:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744707982; x=1776243982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R7iw34kjv2BT6omGEdmJSZYtwei6N+bfjIHUORefy7o=;
 b=dkuX9bFuqUGrTSDj+kzKWikAG+LkqjDDfJIkdfHIo2GwZNWy3CR9vTyh
 JCSOav4NwzYDpF9O66icr8ID7ToTgBMFIVHg4PsYPBVGgjdrX+QmrOkE8
 mJvlKLiiwllW9iHtMr6MmIXv0yW8AlwyNMIIIFDRsWpFvHDpG2RjhvLko
 /mq+Usr22m3o7l17fRFtS8EUjGaxAIcTdhxzPOEYpZZVjrsE2vNDxFwXp
 sa3yr8mxTPUkilsb/7ZM+STtLNOYLQ2GMSjFr2bV/Z6MftfsftHuwCjOf
 stTOLFnMBWVgISJgnKVUwoTIzmXjtq2avApdymxkObw7ZfAT7fQcXHnvt g==;
X-CSE-ConnectionGUID: RAV/hq5fQXWNW9T3jaLLuQ==
X-CSE-MsgGUID: HDiN0xh2TaqXpJEflTNF2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="68696817"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="68696817"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 02:06:21 -0700
X-CSE-ConnectionGUID: KxdEUA5aSeuZ9jHy0eoDPg==
X-CSE-MsgGUID: yZrr8BZnT9exeRwmybHv9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="134857767"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 02:06:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Chen Linxuan <chenlinxuan@uniontech.com>
Subject: [PATCH] drm/i915/pxp: fix undefined reference to
 `intel_pxp_gsccs_is_ready_for_sessions'
Date: Tue, 15 Apr 2025 12:06:16 +0300
Message-Id: <20250415090616.2649889-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

From: Chen Linxuan <chenlinxuan@uniontech.com>

On x86_64 with gcc version 13.3.0, I compile kernel with:

  make defconfig
  ./scripts/kconfig/merge_config.sh .config <(
    echo CONFIG_COMPILE_TEST=y
  )
  make KCFLAGS="-fno-inline-functions -fno-inline-small-functions -fno-inline-functions-called-once"

Then I get a linker error:

  ld: vmlinux.o: in function `pxp_fw_dependencies_completed':
  kintel_pxp.c:(.text+0x95728f): undefined reference to `intel_pxp_gsccs_is_ready_for_sessions'

This is caused by not having a intel_pxp_gsccs_is_ready_for_sessions()
header stub for CONFIG_DRM_I915_PXP=n. Add it.

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
Fixes: 99afb7cc8c44 ("drm/i915/pxp: Add ARB session creation and cleanup")
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
index 9aae779c4da3..4969d3de2bac 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h
@@ -23,6 +23,7 @@ int intel_pxp_gsccs_init(struct intel_pxp *pxp);
 
 int intel_pxp_gsccs_create_session(struct intel_pxp *pxp, int arb_session_id);
 void intel_pxp_gsccs_end_arb_fw_session(struct intel_pxp *pxp, u32 arb_session_id);
+bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp);
 
 #else
 static inline void intel_pxp_gsccs_fini(struct intel_pxp *pxp)
@@ -34,8 +35,11 @@ static inline int intel_pxp_gsccs_init(struct intel_pxp *pxp)
 	return 0;
 }
 
-#endif
+static inline bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp)
+{
+	return false;
+}
 
-bool intel_pxp_gsccs_is_ready_for_sessions(struct intel_pxp *pxp);
+#endif
 
 #endif /*__INTEL_PXP_GSCCS_H__ */
-- 
2.39.5

