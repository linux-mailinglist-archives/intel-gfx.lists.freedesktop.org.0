Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11C2856014
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 11:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3253610E4A2;
	Thu, 15 Feb 2024 10:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXAj09T3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CFE610E57F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 10:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994211; x=1739530211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=38c92UgygCzLlQf6N5OR4sqwpVq3fMXQK6spkczprsY=;
 b=DXAj09T3zyfWujPrQ/lauk0MLRmIz00LCeytR5zDU5ROsZcBHbEsyiLf
 phNc9t59ZmCDQyy4Hr/hlKM1MohK/FIejM+w4WOuIqb15YcpH/MlQWEJ3
 DwUogqakxv4JeBcrEu51tS3J9AAyB9aLCf6Ac4zu0NrNVk225DpmpbfQf
 IeDOZ48EBtsCC4cUwVm0qlB8lU3qSxaicoPbPYIBM8G4cbjbTyol6A8fv
 L2s/7ZGGGYqHWfiGYgb4OLw4Hiy4H+/4WSMapWCxu6wGHZAoSc00jjE6J
 ozIYZhFa9KB72t0t1jAyy1KeWKItM4G/N62M75SsFo4SVb2+/yr7wimGZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2219019"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="2219019"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="26653247"
Received: from marquiz-desk-2.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.63])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 02:50:10 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/6] drm/i915/psr: Add missing ALPM AUX-Less register
 defintions
Date: Thu, 15 Feb 2024 12:49:33 +0200
Message-Id: <20240215104934.2395239-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215104934.2395239-1-jouni.hogander@intel.com>
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Couple of ALPM AUX-Less related fields are missing from ALPM register
definitions. Add these and remove some duplicate definitions.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8427a736f639..b004672d1deb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -348,9 +348,13 @@
 #define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
-#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
-#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
-#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
-#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(20, 16)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(12, 8)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(4, 0)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
 
 #endif /* __INTEL_PSR_REGS_H__ */
-- 
2.34.1

