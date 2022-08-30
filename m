Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEDF5A60C1
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1CB10E047;
	Tue, 30 Aug 2022 10:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F5C710E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855304; x=1693391304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=46T+iTcUAWnbCnaTF8ckbaXxZYzFw/rePjn0ZBkVOWs=;
 b=O6M1n7ufkosvK0IjujmZ7LcywsHJ4ZC3zI3GTG21vDfd6743iR2dKB6r
 xbrtZuW68qB7YawBq1APwN2JpTM8Tg6/0nv+Mrj5jIBIL8ODI4s+zixlS
 32bU23nqndMZhc6vRr7qzUbP7NCcON4hKQidCItrN8X/qq2AC8V7phfKV
 f1QxRpXQSSRAhocBpNA+L6xz8wHEQJTXVq0ZB/WSiAbu05w/JOZ0rDbGS
 xaop+X+jcnZnVcuNn8A/lYN1d0dL7LPNmF7kdnaKEcSB4T/lKdHAkBUO1
 K+kZ2mYj2tLlUQPJA92LrMxEK7KTPb3lSgWYGXsv7tNM/UnadZ8HetCrr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="282111149"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="282111149"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="562593546"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:27:59 +0300
Message-Id: <db360d824d47601d5ca843afa6f5d6ee17d0e514.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gmbus: add wrapper for gmbus mmio
 base
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

Don't repeat the same thing so much.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus_regs.h | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
index c8f8da83cc84..1d58925df856 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -8,8 +8,9 @@
 
 #include "i915_reg_defs.h"
 
-#define GPIO(gpio)		_MMIO(dev_priv->display.gmbus.mmio_base + 0x5010 + \
-				      4 * (gpio))
+#define GMBUS_MMIO_BASE(__i915) ((__i915)->display.gmbus.mmio_base)
+
+#define GPIO(gpio)		_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5010 + 4 * (gpio))
 #define   GPIO_CLOCK_DIR_MASK		(1 << 0)
 #define   GPIO_CLOCK_DIR_IN		(0 << 1)
 #define   GPIO_CLOCK_DIR_OUT		(1 << 1)
@@ -26,7 +27,7 @@
 #define   GPIO_DATA_PULLUP_DISABLE	(1 << 13)
 
 /* clock/port select */
-#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100)
+#define GMBUS0			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5100)
 #define   GMBUS_AKSV_SELECT		(1 << 11)
 #define   GMBUS_RATE_100KHZ		(0 << 8)
 #define   GMBUS_RATE_50KHZ		(1 << 8)
@@ -36,7 +37,7 @@
 #define   GMBUS_BYTE_CNT_OVERRIDE	(1 << 6)
 
 /* command/status */
-#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104)
+#define GMBUS1			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5104)
 #define   GMBUS_SW_CLR_INT		(1 << 31)
 #define   GMBUS_SW_RDY			(1 << 30)
 #define   GMBUS_ENT			(1 << 29) /* enable timeout */
@@ -53,7 +54,7 @@
 #define   GMBUS_SLAVE_WRITE		(0 << 0)
 
 /* status */
-#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108)
+#define GMBUS2			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5108)
 #define   GMBUS_INUSE			(1 << 15)
 #define   GMBUS_HW_WAIT_PHASE		(1 << 14)
 #define   GMBUS_STALL_TIMEOUT		(1 << 13)
@@ -63,10 +64,10 @@
 #define   GMBUS_ACTIVE			(1 << 9)
 
 /* data buffer bytes 3-0 */
-#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c)
+#define GMBUS3			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x510c)
 
 /* interrupt mask (Pineview+) */
-#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110)
+#define GMBUS4			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5110)
 #define   GMBUS_SLAVE_TIMEOUT_EN	(1 << 4)
 #define   GMBUS_NAK_EN			(1 << 3)
 #define   GMBUS_IDLE_EN			(1 << 2)
@@ -74,7 +75,7 @@
 #define   GMBUS_HW_RDY_EN		(1 << 0)
 
 /* byte index */
-#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120)
+#define GMBUS5			_MMIO(GMBUS_MMIO_BASE(dev_priv) + 0x5120)
 #define   GMBUS_2BYTE_INDEX_EN		(1 << 31)
 
 #endif /* __INTEL_GMBUS_REGS_H__ */
-- 
2.34.1

