Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8364AE82E0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 14:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BDA10E6DE;
	Wed, 25 Jun 2025 12:39:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iw/nTFkX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AAF10E6DE;
 Wed, 25 Jun 2025 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750855189; x=1782391189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=alphWSkPFmpbVmq7d7wkBfwexPjPXT0x4/ma1KMSTIs=;
 b=iw/nTFkXk52crg31ZcYCNfaLcWFxSHxC3n1VNcEmZ0FzsUpVQPZLYHtX
 vN9ZU2rZVEp8YAw5QYqzlc+WwIWTF4P2L468Y+JMVHllV4boEeF1VJQsD
 E13abQnt7L/mTFI63bHCYdmACHPAM9WG3c68BdWYLQ8kgvqoW5CrF0f6B
 Ss2GzsTqrP/xTmENEKkpEp97uDC3w0xQCNDd1n+VVcUZ/Ik0i25qwQ7G9
 sAbYOAY3iXpykQD1wNvVIyIAsoCeO9iF0fDGEpfpmow34AF/GXoyWOslm
 EsBvLmgrQyx/17aKug4FgBkYH6ZUC2SglHd3nZWVKcR5DozHfGoUQh9N5 w==;
X-CSE-ConnectionGUID: iZOHtOrgTo+nI9Xqk0sPBQ==
X-CSE-MsgGUID: txpSlQ+jROWbwBhpE24K9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53259026"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53259026"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:49 -0700
X-CSE-ConnectionGUID: RFsWm3alQhGxfaqGUJvDRA==
X-CSE-MsgGUID: Zic71fG0RHmwvDR3VOQ9IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151969416"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 05:39:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/power: move enum skl_power_gate under display
Date: Wed, 25 Jun 2025 15:39:36 +0300
Message-Id: <495054983b74163ca7dcbf5a1b6a24099047bc64.1750855148.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750855147.git.jani.nikula@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
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

When the display registers were split off from i915_reg.h, enum
skl_power_gate was left behind. Move it to intel_display_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h |  9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h                   | 10 ----------
 2 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index e101105da4af..fdac72fcebee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2195,6 +2195,15 @@
 #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
 #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
 
+/* SKL Fuse Status */
+enum skl_power_gate {
+	SKL_PG0,
+	SKL_PG1,
+	SKL_PG2,
+	ICL_PG3,
+	ICL_PG4,
+};
+
 #define SKL_FUSE_STATUS				_MMIO(0x42000)
 #define  SKL_FUSE_DOWNLOAD_STATUS		(1 << 31)
 /*
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 04fb40867cc0..cec6e2e2a262 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1204,16 +1204,6 @@
  */
 #define GEN7_SO_WRITE_OFFSET(n)		_MMIO(0x5280 + (n) * 4)
 
-/* SKL Fuse Status */
-enum skl_power_gate {
-	SKL_PG0,
-	SKL_PG1,
-	SKL_PG2,
-	ICL_PG3,
-	ICL_PG4,
-};
-
-
 #define GEN9_TIMESTAMP_OVERRIDE				_MMIO(0x44074)
 #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT	0
 #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK	0x3ff
-- 
2.39.5

