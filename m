Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2066FCC62BC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A160110EBC8;
	Wed, 17 Dec 2025 06:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+PRX7+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB0AE10EBBB;
 Wed, 17 Dec 2025 06:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951850; x=1797487850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4NVR9fZNQDxvjbZLD7leA8NnxvpYpzNUXJpBXsfDF/U=;
 b=F+PRX7+5pQRTNMMBTKBWoVl03wW7PK8NEpjFckixj3KUJu148MoIEpKO
 WeJ8OhghY+RYPfjgV3Xr3J6/fh0p0Aw+JaDEzj1Rcdvo//BMbWKarDPzm
 5xhDC6qi0COs1yMkz+UELcRwuOmgLc3jmYmI34P+vI+GN+l/N+0aS7z61
 B+HOK5AioDsa9bHEnR2mRs1sqEqXVz5Qybd4J76Qnx+GRuIRdZrrsdJBa
 G6dzlXjetv4XANeEtsZehlNMPGmjGo+Lq4oaMo90Xy4pwpvntcGUH26ON
 pSQ9FEnwuBb0TETg7lqiGNW3By1bIliI6RSx45OWUnYpfZinsZHTuFRBG A==;
X-CSE-ConnectionGUID: QDiWnuODStafmEM3kdhsdQ==
X-CSE-MsgGUID: Qi47l3K8TvyNw9u8xMMXSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471225"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471225"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:49 -0800
X-CSE-ConnectionGUID: iHdyKRM3Qq6DTYaOH934Cg==
X-CSE-MsgGUID: FaEjl2pDQrWLXK+sy3b3JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105252"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:48 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 17/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_display_power_well.c
Date: Wed, 17 Dec 2025 11:52:07 +0530
Message-ID: <20251217062209.852324-18-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
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

Make intel_display_power_well.c free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index db185a859133..8a1f1c61c6da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -6,8 +6,8 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index b433982cee56..fce36b34c796 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -916,6 +916,11 @@
 #define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
 #define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
 
+#define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
+
+/* Disable display A/B trickle feed */
+#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
+
 #define CBR1_VLV			_MMIO(VLV_DISPLAY_BASE + 0x70400)
 #define  CBR_PND_DEADLINE_DISABLE	(1 << 31)
 #define  CBR_PWM_CLOCK_MUX_SELECT	(1 << 30)
-- 
2.50.1

