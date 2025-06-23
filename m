Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A3AAE3E38
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 13:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FF410E36B;
	Mon, 23 Jun 2025 11:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iprCwDWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE96E10E370;
 Mon, 23 Jun 2025 11:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750679068; x=1782215068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9GL/Z9n93s45ktDYf+73OhGeQFhPwltruAYQzpLef8o=;
 b=iprCwDWQy1nDyUmipg7rJLic/9UnwRCkeANbDsmDOiGk4XWhoZc0ozpQ
 28iu3WowLprsozmI3BaQKuAipkxjHdWUM8tzIBZAD4cfMC3bq2qkbq+nk
 lHwHacuacG79FFmKdlMHvvzFodJwBoy1YndGFJagHrYSt3IyzGadlFMZO
 2HdjYAyRKmEqJfFhlFGpC7GC8uJYfhG0yVGECwJvONacyP9pR6+BaMgmU
 /lg3wN/vAa0h9qWRCn64oiA7vCtaVRmCzkEE7M69jO4K1EqScdvxJEv1R
 ah3s7urU0IiLwLvvuUbmYxDllGsWqCywYvW/NxZPxhYDrhTLm7S93PPCx g==;
X-CSE-ConnectionGUID: i0pUZWuxRViAkzGA5Gg4Jw==
X-CSE-MsgGUID: UNzYMQuBRYW4BYqyfzdkeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="53021216"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="53021216"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:27 -0700
X-CSE-ConnectionGUID: O8zNXmfyQnqSDqvf/UaTDQ==
X-CSE-MsgGUID: /A8bmppHTzeUZDTovgT57g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="152087970"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 04:44:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI 6/6] drm/xe/compat: remove old pcode compat interface
Date: Mon, 23 Jun 2025 14:43:49 +0300
Message-Id: <948016a031dcb2acef0c97071aac09fa49613e07.1750678991.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750678991.git.jani.nikula@intel.com>
References: <cover.1750678991.git.jani.nikula@intel.com>
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

With display code using the struct drm_device based pcode interface, we
can drop the old pcode compat interface.

We can also drop the __compat_uncore_to_tile() helper from
intel_uncore.h compat header.

Turns out a couple of headers depended on the intel_uncore.h include via
intel_pcode.h. Fix them.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c       |  1 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |  1 +
 .../drm/xe/compat-i915-headers/intel_pcode.h  | 29 -------------------
 .../drm/xe/compat-i915-headers/intel_uncore.h |  7 -----
 4 files changed, 2 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b85912e00a36..8f5bc6872eda 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -18,6 +18,7 @@
 #include "intel_display_types.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
+#include "intel_uncore.h"
 #include "skl_watermark.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 5d43042b0fb5..deb159548a09 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -14,6 +14,7 @@
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
+#include "intel_uncore.h"
 #include "vlv_iosf_sb.h"
 
 struct dram_dimm_info {
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
index 32da708680c2..4fcd3bf6b76f 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
@@ -6,35 +6,6 @@
 #ifndef __INTEL_PCODE_H__
 #define __INTEL_PCODE_H__
 
-#include "intel_uncore.h"
 #include "xe_pcode.h"
 
-static inline int
-snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
-{
-	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
-}
-
-static inline int
-snb_pcode_write(struct intel_uncore *uncore, u32 mbox, u32 val)
-{
-
-	return xe_pcode_write(__compat_uncore_to_tile(uncore), mbox, val);
-}
-
-static inline int
-snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
-{
-	return xe_pcode_read(__compat_uncore_to_tile(uncore), mbox, val, val1);
-}
-
-static inline int
-skl_pcode_request(struct intel_uncore *uncore, u32 mbox,
-		  u32 request, u32 reply_mask, u32 reply,
-		  int timeout_base_ms)
-{
-	return xe_pcode_request(__compat_uncore_to_tile(uncore), mbox, request, reply_mask, reply,
-				timeout_base_ms);
-}
-
 #endif /* __INTEL_PCODE_H__ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 797091cf1c99..d012f02bc84f 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -24,13 +24,6 @@ static inline struct xe_mmio *__compat_uncore_to_mmio(struct intel_uncore *uncor
 	return xe_root_tile_mmio(xe);
 }
 
-static inline struct xe_tile *__compat_uncore_to_tile(struct intel_uncore *uncore)
-{
-	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
-
-	return xe_device_get_root_tile(xe);
-}
-
 static inline u32 intel_uncore_read(struct intel_uncore *uncore,
 				    i915_reg_t i915_reg)
 {
-- 
2.39.5

