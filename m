Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CDF6E42FD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 10:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4F010E28C;
	Mon, 17 Apr 2023 08:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC9A10E28C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 08:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681721868; x=1713257868;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HE0cRTJRBu0WACGlH6sXrzDFn4hrpgWxkQ6ovk7OI9I=;
 b=PwsUqK+eYgsi+6ELXenqBdJ1cFh+pW3KlLycmK5Lm/wsZ63i7KX7T7Vp
 dppUARhWThDZK1mpl0MyKyw25i8/c9tQEXMSYdSm0lxO5Qd7WvihpDuMV
 Q3RQ0FtGo+E/UF1evXtT4Xc3w1hRTOUlyquVabFqoTmuTnrHI3r/nefEu
 jmBDiLI4eBtRxmxJfydo6Q/9zcd8gITkF4y2QfOE3uJr4jQmqTEyUxodH
 CWIIJGmDyFDhY4UCNUgt9R/lz1PY+UWKDuLi2rGpRG6QcV35sVW6KDU1o
 vZOlBzH9hDS8D97jZgV5YyDIbHUQTKY0xaPI6IFPRQfXGckop7eWQj9u7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="346688658"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="346688658"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 01:57:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="723177419"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="723177419"
Received: from habramov-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.47.83])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 01:57:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Apr 2023 11:57:42 +0300
Message-Id: <20230417085742.793379-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pps: use intel_de_rmw() for panel
 unlock
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

Use rmw where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7f9926672a6a..4f0b0cca03cc 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1653,12 +1653,9 @@ void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
 	 */
 	pps_num = intel_num_pps(dev_priv);
 
-	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
-		u32 val = intel_de_read(dev_priv, PP_CONTROL(pps_idx));
-
-		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
-		intel_de_write(dev_priv, PP_CONTROL(pps_idx), val);
-	}
+	for (pps_idx = 0; pps_idx < pps_num; pps_idx++)
+		intel_de_rmw(dev_priv, PP_CONTROL(pps_idx),
+			     PANEL_UNLOCK_MASK, PANEL_UNLOCK_REGS);
 }
 
 void intel_pps_setup(struct drm_i915_private *i915)
-- 
2.39.2

