Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24B5B39D09
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484A310E98F;
	Thu, 28 Aug 2025 12:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUkxSbMI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9881410E98F;
 Thu, 28 Aug 2025 12:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383715; x=1787919715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9TYzUWw9c0YbZkmYlcfTz1G26XJbO0XJF9R3HneDru4=;
 b=FUkxSbMIm8v19W5B9e+R6el462qTmvcSoodGM3Ne/DW7yD/UpklAfaxf
 6+iyy8ojPSw9spSxfjr3fc27lzbobWZoeZvYP+G06muW/0Gs1asgK1xqm
 u1SN7/24ExH51+fhLHCUuFJdt928x3Cmu4pTMbEeml7Q9h1oYwOdTskdm
 CZrRKt8uH0TU6zJfT48Dmqxdx2JSeo3WINUvrSIRB3mAVx4Py60hj/GyS
 KSWQsRb99lsaisqlVmp/oHOOsDRom27PX1BtlcwkAv1yHegbjbTG5oBLf
 vrolszgmowcxCqw4uAxq8yPQBA3ByMnfJhSmSxqTEWp5jLTmQlAOtal0P g==;
X-CSE-ConnectionGUID: VQ8XqKVyTSOw7t7k56xbnA==
X-CSE-MsgGUID: GPJrp6uIQqeBElqLk5d5uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="57848675"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="57848675"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:55 -0700
X-CSE-ConnectionGUID: RCSVP4iVSqerEVm9mxQklw==
X-CSE-MsgGUID: hU2LxOLRQRio61q1czi3QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174270793"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for DKL PHY
Date: Thu, 28 Aug 2025 15:20:52 +0300
Message-ID: <663c9edf4a98b09121d7200f8d734ebc829da85b.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_well.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 31c2a07bb188..275bc2708a0e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <linux/iopoll.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -528,6 +530,8 @@ icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->is_tc_tbt;
 	bool timeout_expected;
+	u32 val;
+	int ret;
 
 	icl_tc_port_assert_ref_held(display, power_well, dig_port);
 
@@ -554,10 +558,11 @@ icl_tc_phy_aux_power_well_enable(struct intel_display *display,
 
 		tc_port = TGL_AUX_PW_TO_TC_PORT(i915_power_well_instance(power_well)->hsw.idx);
 
-		if (wait_for(intel_dkl_phy_read(display, DKL_CMN_UC_DW_27(tc_port)) &
-			     DKL_CMN_UC_DW27_UC_HEALTH, 1))
-			drm_warn(display->drm,
-				 "Timeout waiting TC uC health\n");
+		ret = poll_timeout_us(val = intel_dkl_phy_read(display, DKL_CMN_UC_DW_27(tc_port)),
+				      val & DKL_CMN_UC_DW27_UC_HEALTH,
+				      100, 1000, false);
+		if (ret)
+			drm_warn(display->drm, "Timeout waiting TC uC health\n");
 	}
 }
 
-- 
2.47.2

