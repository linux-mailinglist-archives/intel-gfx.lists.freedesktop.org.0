Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80F56FEE51
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7927410E1CB;
	Thu, 11 May 2023 09:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8857410E1CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683795873; x=1715331873;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nveB+E8W3bwDVXX/vUAQ909SgBN7lhuc+Op175eSpz0=;
 b=FT/B5/wDYlsGQDqqTft8OppnPsYjFFDQ8gM8pySjmxLrvTTbjupGc5sD
 W8GGx8Aah/eNSPsapoB57YbrRvXbUNz3E3x/hd8oxHdNxCUzNU2cd2Hlv
 o+Be8/mF2UzXfB6H9UesmLohJlZXwhQjPkA7cpf0gaS39TXIGlt2plsCX
 Nd0PavMbkUHEmqqEP8NwLapuixmOAf2BOAaxFwmRIvMeq2qIJd9fDJuub
 bwFziSTQO7+anIuI411ZF7dy4eX+Ip/b7FRlajwWuMfXFew3slbkEySoy
 YRXnxwBecOkMJi5AkoF6PsWDBxkQSW1jq8xaTllG1HlettSmlyg/eKNe6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="353536912"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="353536912"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="843863735"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="843863735"
Received: from nbathi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.185])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:04:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 12:04:27 +0300
Message-Id: <20230511090427.809243-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: drop dependency on VLV_DISPLAY_BASE
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
display base area.

Use the 0x182168 MMIO address directly to drop dependency on
VLV_DISPLAY_BASE and thus display/intel_display_reg_defs.h in
intel_gt_regs.h.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b8a39c219b60..f38550dae6b8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -7,7 +7,6 @@
 #define __INTEL_GT_REGS__
 
 #include "i915_reg_defs.h"
-#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
 
 /*
  * The perf control registers are technically multicast registers, but the
@@ -1469,7 +1468,7 @@
 #define GEN12_RCU_MODE				_MMIO(0x14800)
 #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
 
-#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
+#define CHV_FUSE_GT				_MMIO(0x182168)
 #define   CHV_FGT_DISABLE_SS0			(1 << 10)
 #define   CHV_FGT_DISABLE_SS1			(1 << 11)
 #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
-- 
2.39.2

