Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 554C8B181C2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 14:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE86A10E3D6;
	Fri,  1 Aug 2025 12:28:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JbQIxBuT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC88D10E3D6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 12:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754051321; x=1785587321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=71BduATe+9DXm5FYkd+jfN/UZH8IxDf0TlCTOiOujCI=;
 b=JbQIxBuTDD5bWzsKkN1uyuypvZn4ZMdiXTkrBZhmFKxdA/HTzGTDW3Wn
 VSxT7GktVhjX55hZtJdNXHkDIVgabXfvTd4MJyEu23Vlgw5WbMiXpMSKI
 j2bleyKga+Awl39eOqyDS2ow8zPgLks2LWXG0vuk1jJgM+DtHCYCNOoMr
 RgYSysLYElncsYMJs5lMIs+kR1oX5ux5WWmq7LBKAweeMSBMi2O6i2DfS
 xDyjVqpy6I2fYYl1SPtDeSLUlYjlKo/TQjGEr4XeP75KVPt3sOWG4rPl/
 pcAzBdOap9Bz0k0an/1QhVB+9ifJuo1ShCaDpDGOANjH4rHEZRQQrVJnX Q==;
X-CSE-ConnectionGUID: E4nZsBDATMy+NwX7qkWOEA==
X-CSE-MsgGUID: FJBg+ij7TcaFb4VClBKDGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55603245"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="55603245"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 05:28:40 -0700
X-CSE-ConnectionGUID: F619sRxoS6avHFjf38mu/Q==
X-CSE-MsgGUID: QmC7NGQWQr+3bD3TzeT0IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="164343316"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.164])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 05:28:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/audio: drop irq enabled check from LPE audio setup
Date: Fri,  1 Aug 2025 15:28:32 +0300
Message-Id: <20250801122832.249985-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

There shouldn't be anything requiring irqs to be enabled at the point of
LPE audio setup. Regardless, we've never hit the warning, as irqs are
always enabled at the time LPE audio is initialized. Drop the
superfluous warning, and the dependency on i915_drv.h.

Fix style a bit while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 666148a14522..42284e9928f2 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -68,9 +68,9 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
+#include <drm/drm_print.h>
 #include <drm/intel/intel_lpe_audio.h>
 
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_audio_regs.h"
 #include "intel_de.h"
@@ -170,14 +170,11 @@ static struct irq_chip lpe_audio_irqchip = {
 
 static int lpe_audio_irq_init(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int irq = display->audio.lpe.irq;
 
-	drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
-	irq_set_chip_and_handler_name(irq,
-				&lpe_audio_irqchip,
-				handle_simple_irq,
-				"hdmi_lpe_audio_irq_handler");
+	irq_set_chip_and_handler_name(irq, &lpe_audio_irqchip,
+				      handle_simple_irq,
+				      "hdmi_lpe_audio_irq_handler");
 
 	return 0;
 }
-- 
2.39.5

