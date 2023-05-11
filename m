Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3176FF5C4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 17:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0269F10E4FE;
	Thu, 11 May 2023 15:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F5C10E56F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 15:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683818517; x=1715354517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3xvB9ZAZl+lmCuMMvntabFV8J+vpKL/K0MvHXJFakKM=;
 b=nEMuwoELD8WcOHTZT1e8BUz/rU5CBcJ3IuxOaC5WBTs6aj4TyfxlYG4v
 slOe8TgD4QP9IKNFw8vNkK8Jj5v+Bsgsu8IjsG+5CC3GTi9Wx5R2CZhNa
 DsnDUOeXtqSRv42RDyCWxSwE1i1B/BiZcDcu38/j9Mxku5HtcihX+Hy4L
 wWBIxHDXi6aKjNdYmuoh4DjlUghEDjRfEepKW4PkJYheGjRwmwcszkud6
 1TDSi5dyfiZHYQgGC4eyy3SBichVaqcnVVOPmipgxjRJ0lJ6ug+/XfcyQ
 0zhjTi+WzcmbMTmu4bLTcut0Y5m09xEHT4XaRqU8errvqUMfHlUslYAGn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="436864815"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436864815"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 08:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="811653738"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="811653738"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 08:21:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 18:21:53 +0300
Message-Id: <20230511152153.986676-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: drop dependency on
 VLV_DISPLAY_BASE
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
display base area.

Add VLV_GUNIT_BASE to drop dependency on VLV_DISPLAY_BASE and thus
display/intel_display_reg_defs.h in intel_gt_regs.h.

v2: Add VLV_GUNIT_BASE (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b8a39c219b60..718cb2c80f79 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -7,7 +7,8 @@
 #define __INTEL_GT_REGS__
 
 #include "i915_reg_defs.h"
-#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
+
+#define VLV_GUNIT_BASE			0x180000
 
 /*
  * The perf control registers are technically multicast registers, but the
@@ -1469,7 +1470,7 @@
 #define GEN12_RCU_MODE				_MMIO(0x14800)
 #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
 
-#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
+#define CHV_FUSE_GT				_MMIO(VLV_GUNIT_BASE + 0x2168)
 #define   CHV_FGT_DISABLE_SS0			(1 << 10)
 #define   CHV_FGT_DISABLE_SS1			(1 << 11)
 #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
-- 
2.39.2

