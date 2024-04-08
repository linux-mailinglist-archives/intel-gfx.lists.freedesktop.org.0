Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFD89BF89
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 14:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B0C112557;
	Mon,  8 Apr 2024 12:55:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knG7Ei1Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F95A112564;
 Mon,  8 Apr 2024 12:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712580898; x=1744116898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yq7LvLmvf4kJTdYwJ3i0G7OqQJV4Jl/B+dMNVcPMKWc=;
 b=knG7Ei1Z8KEb46QjO3V86OwNrO0xzsNZC4b4Cc2bArQvsGBeEOHQIJ4R
 X/g+S+W5tW93YZW0f6A+cXcGXMzcHNz7BGtiiXMfU09EYKX62xktf7IId
 2Mm+Wj39NQeGAfjrbNryDjU2StPEcEWJ9/3iZtz2EMiFtd3bNTff6DGYH
 HWALm9XleTLVA1EJ3+w39+CM/Q+TERyrWfGje6HzuoPtnzqsjuFdtQliw
 WsQ+s1r5nWe6iwG33nQRknNLWAhp8akMESxmrIxtL7RrcO8Hxl6nYrmkZ
 IowXwf1UvmOUZv76kemo5rFcSHD9bJL8TsSsaCYBO9TY1ZxQLqFImZYGu A==;
X-CSE-ConnectionGUID: b7AbHfL9QjeH6AX2sY8Eag==
X-CSE-MsgGUID: MLeH7dinSBK+QXtfA+iXiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7976508"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7976508"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:54:58 -0700
X-CSE-ConnectionGUID: yKV7dip0RJ+EhX7YMwajXA==
X-CSE-MsgGUID: ca9Lgf1oRaG2ou53sh60Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="50864276"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:54:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 2/2] drm/xe/display: remove compat raw reg read/write support
Date: Mon,  8 Apr 2024 15:54:45 +0300
Message-Id: <20240408125445.3227678-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240408125445.3227678-1-jani.nikula@intel.com>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
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

The i915 display code no longer uses these interfaces. Remove them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/xe/compat-i915-headers/intel_uncore.h | 24 -------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index ef79793caa72..a672165ececf 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -148,28 +148,4 @@ static inline void intel_uncore_write_notrace(struct intel_uncore *uncore,
 	xe_mmio_write32(__compat_uncore_to_gt(uncore), reg, val);
 }
 
-static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
-{
-	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
-
-	return xe_device_get_root_tile(xe)->mmio.regs;
-}
-
-/*
- * The raw_reg_{read,write} macros are intended as a micro-optimization for
- * interrupt handlers so that the pointer indirection on uncore->regs can
- * be computed once (and presumably cached in a register) instead of generating
- * extra load instructions for each MMIO access.
- *
- * Given that these macros are only intended for non-GSI interrupt registers
- * (and the goal is to avoid extra instructions generated by the compiler),
- * these macros do not account for uncore->gsi_offset.  Any caller that needs
- * to use these macros on a GSI register is responsible for adding the
- * appropriate GSI offset to the 'base' parameter.
- */
-#define raw_reg_read(base, reg) \
-	readl(base + i915_mmio_reg_offset(reg))
-#define raw_reg_write(base, reg, value) \
-	writel(value, base + i915_mmio_reg_offset(reg))
-
 #endif /* __INTEL_UNCORE_H__ */
-- 
2.39.2

