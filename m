Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E299F0BA4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 12:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA79D10EFE5;
	Fri, 13 Dec 2024 11:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6IWaFej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 275AA10EFE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 11:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734090690; x=1765626690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wZw5h52Js4IXkoCE8LNhy6dKzG9ttQtEPozEBLIc9CE=;
 b=W6IWaFejjVECzWsxstHZcz2wSCI4JYHgR7X7JzPNV9S7u7ZR0foHQp+9
 KWGum0GeIpiM3gorVCuMIYFPEAr0+BfsExWIVeAujjH20ijifHPQN0rJs
 /P5cPeDP0IZKVCmGL8non1AQlQ1mO9ih64BZAyr3CIMVezMbFhyEHOy3k
 6osHIL9NCvsKWjOUt4U5uTFTQ4IP0ImK+EvaDHmXiY6/LqyugtQeZjcXT
 YVHiSOMoKYpLdhUnyEm/9wJ7cL8GXYcfUQZEd+rkwrNZ4cUaQcqwXLXxa
 uQMJY1Qu3ZM8sfBOaGwFTx/4aE5W2FfjEVayFasawUQK1gkjOuh7gngwX w==;
X-CSE-ConnectionGUID: yhAQhk2CSVKtzSc2mLurMQ==
X-CSE-MsgGUID: c/J7h60PSLazrHPbbkdTQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34773363"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34773363"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:30 -0800
X-CSE-ConnectionGUID: 74fHNPvCQzWFUpePagWeEg==
X-CSE-MsgGUID: 7+XOxEZySSSubernBUxVtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96946619"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915: move DDI_CLK_VALFREQ next to other Cx0 PHY
 registers
Date: Fri, 13 Dec 2024 13:51:11 +0200
Message-Id: <20241213115111.335474-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241213115111.335474-1-jani.nikula@intel.com>
References: <20241213115111.335474-1-jani.nikula@intel.com>
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

Relocate DDI_CLK_VALFREQ register definition next to other Cx0 PHY
register macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h                   | 5 -----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index c685479c9756..4dc6e179a774 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -9,6 +9,11 @@
 #include "i915_reg_defs.h"
 #include "intel_display_limits.h"
 
+/* DDI Buffer Control */
+#define _DDI_CLK_VALFREQ_A		0x64030
+#define _DDI_CLK_VALFREQ_B		0x64130
+#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
+
 /*
  * Wrapper macro to convert from port number to the index used in some of the
  * registers. For Display version 20 and above it converts the port number to a
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 33cfe07a9b2e..765e6c0528fb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1067,11 +1067,6 @@
 #define CLKGATE_DIS_PSL_EXT(pipe) \
 	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_EXT_A, _CLKGATE_DIS_PSL_EXT_B)
 
-/* DDI Buffer Control */
-#define _DDI_CLK_VALFREQ_A		0x64030
-#define _DDI_CLK_VALFREQ_B		0x64130
-#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
-
 /*
  * Display engine regs
  */
-- 
2.39.5

