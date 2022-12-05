Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B4D642A1D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E2E10E0EE;
	Mon,  5 Dec 2022 14:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D2710E09E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670249490; x=1701785490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nVmIwhJOzxgwmrDiQTM9il88gxthvGbJPiWz2+pAw+E=;
 b=UzfHdS6quXUB7FGd19GQCHdfyPNmx9cg7uJkHS/7aSVnPI2Q7AjJqbll
 UbmZV0ayXeXXVHbGlMfZduDPSUivfTTNEctJxsOo+LfRy8/aZavFzUdX4
 U15ILtcsCRCgZHLr7FACoWyUKJg8NYUFnBu2AFx0jnaoy8m62pwE5ohPa
 Wh9QPuMdaNSdv6AJAlSFlBWPzK/iajpnBA+tbYygpAu2T3KMiJEsp4LkF
 5edp9E7MpmzxgG2cAcVBgQ+41hV75UD6uh7IrbtbZRwRfeLsGMmBX+UXr
 IRHVLwEMsDu4OunlhOQhndX3f5WzwV+z4O3I9TNzYDTCgrSc761bI+rAe g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="296715021"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="296715021"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="974694600"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="974694600"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 16:11:14 +0200
Message-Id: <5f01d9c209298ab53f62a3f9a52473469d91ad4a.1670249413.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670249413.git.jani.nikula@intel.com>
References: <cover.1670249413.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/backlight: use VLV_DISPLAY_BASE
 for VLV/CHV backlight registers
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

Since the VLV/CHV backlight registers are only used on VLV/CHV, there's
no need to dynamically look up DISPLAY_MMIO_BASE(). We know it's
VLV_DISPLAY_BASE. Use it statically, reducing the implicit dev_priv
references.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_backlight_regs.h   | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
index 344eb8096bd2..02bd1f8201bf 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -8,20 +8,17 @@
 
 #include "intel_display_reg_defs.h"
 
-#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
-#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
-#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
-					 _VLV_BLC_PWM_CTL2_B)
+#define _VLV_BLC_PWM_CTL2_A		(VLV_DISPLAY_BASE + 0x61250)
+#define _VLV_BLC_PWM_CTL2_B		(VLV_DISPLAY_BASE + 0x61350)
+#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, _VLV_BLC_PWM_CTL2_B)
 
-#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
-#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
-#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
-					_VLV_BLC_PWM_CTL_B)
+#define _VLV_BLC_PWM_CTL_A		(VLV_DISPLAY_BASE + 0x61254)
+#define _VLV_BLC_PWM_CTL_B		(VLV_DISPLAY_BASE + 0x61354)
+#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, _VLV_BLC_PWM_CTL_B)
 
-#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
-#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
-#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
-					 _VLV_BLC_HIST_CTL_B)
+#define _VLV_BLC_HIST_CTL_A		(VLV_DISPLAY_BASE + 0x61260)
+#define _VLV_BLC_HIST_CTL_B		(VLV_DISPLAY_BASE + 0x61360)
+#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
 
 /* Backlight control */
 #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
-- 
2.34.1

