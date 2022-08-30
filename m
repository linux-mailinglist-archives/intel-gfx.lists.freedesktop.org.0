Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F595A60C6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 12:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B02310E057;
	Tue, 30 Aug 2022 10:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030DF10E041
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661855300; x=1693391300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7VIIto35LNUNY57YteopkzWY2lMHgfEdHfeG0kTT4ww=;
 b=DZQmdQSrPg663gXVPlctMTCkDtDlLHfFzs+fUHimPhWIioOvk/e7+445
 /niBqeIy8VXE0rZML11ef6/cm3qASYWE4bGeC/cgudlfdaNyVX2o1UVf3
 +/ryqK99O8JDrd63SCj21s76+YdbnxrVKPep9bi94qR9YQDJMc/cnfeRN
 QgkSTZv2ruR2Vdq8koAOsPo7PQFXOYXYUrgGmWaKN16qwtB8MyxlF4B9J
 3zxlMp8+JH5HfUO5/KdWCo9YezZc0Thf8IwHNPiNPHrZ8ruzPMTIrdrTh
 bANY6jhaMrkB0dfCsT8mhkzEwXYeas0Tx0GFTUqS9JJhgmmVr8M6aMQah g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="293883812"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="293883812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="672802324"
Received: from amrabet-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 03:28:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 13:27:58 +0300
Message-Id: <50df38c9f3e53dba64429b7eaa6c0d7bfaf74078.1661855191.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661855191.git.jani.nikula@intel.com>
References: <cover.1661855191.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/gmbus: whitespace cleanup in reg
 definitions
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

Simple whitespace cleanup and comment movement.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_gmbus_regs.h   | 117 ++++++++++--------
 1 file changed, 63 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
index 4145bdf11972..c8f8da83cc84 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -10,62 +10,71 @@
 
 #define GPIO(gpio)		_MMIO(dev_priv->display.gmbus.mmio_base + 0x5010 + \
 				      4 * (gpio))
+#define   GPIO_CLOCK_DIR_MASK		(1 << 0)
+#define   GPIO_CLOCK_DIR_IN		(0 << 1)
+#define   GPIO_CLOCK_DIR_OUT		(1 << 1)
+#define   GPIO_CLOCK_VAL_MASK		(1 << 2)
+#define   GPIO_CLOCK_VAL_OUT		(1 << 3)
+#define   GPIO_CLOCK_VAL_IN		(1 << 4)
+#define   GPIO_CLOCK_PULLUP_DISABLE	(1 << 5)
+#define   GPIO_DATA_DIR_MASK		(1 << 8)
+#define   GPIO_DATA_DIR_IN		(0 << 9)
+#define   GPIO_DATA_DIR_OUT		(1 << 9)
+#define   GPIO_DATA_VAL_MASK		(1 << 10)
+#define   GPIO_DATA_VAL_OUT		(1 << 11)
+#define   GPIO_DATA_VAL_IN		(1 << 12)
+#define   GPIO_DATA_PULLUP_DISABLE	(1 << 13)
 
-# define GPIO_CLOCK_DIR_MASK		(1 << 0)
-# define GPIO_CLOCK_DIR_IN		(0 << 1)
-# define GPIO_CLOCK_DIR_OUT		(1 << 1)
-# define GPIO_CLOCK_VAL_MASK		(1 << 2)
-# define GPIO_CLOCK_VAL_OUT		(1 << 3)
-# define GPIO_CLOCK_VAL_IN		(1 << 4)
-# define GPIO_CLOCK_PULLUP_DISABLE	(1 << 5)
-# define GPIO_DATA_DIR_MASK		(1 << 8)
-# define GPIO_DATA_DIR_IN		(0 << 9)
-# define GPIO_DATA_DIR_OUT		(1 << 9)
-# define GPIO_DATA_VAL_MASK		(1 << 10)
-# define GPIO_DATA_VAL_OUT		(1 << 11)
-# define GPIO_DATA_VAL_IN		(1 << 12)
-# define GPIO_DATA_PULLUP_DISABLE	(1 << 13)
+/* clock/port select */
+#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100)
+#define   GMBUS_AKSV_SELECT		(1 << 11)
+#define   GMBUS_RATE_100KHZ		(0 << 8)
+#define   GMBUS_RATE_50KHZ		(1 << 8)
+#define   GMBUS_RATE_400KHZ		(2 << 8) /* reserved on Pineview */
+#define   GMBUS_RATE_1MHZ		(3 << 8) /* reserved on Pineview */
+#define   GMBUS_HOLD_EXT		(1 << 7) /* 300ns hold time, rsvd on Pineview */
+#define   GMBUS_BYTE_CNT_OVERRIDE	(1 << 6)
 
-#define GMBUS0			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5100) /* clock/port select */
-#define   GMBUS_AKSV_SELECT	(1 << 11)
-#define   GMBUS_RATE_100KHZ	(0 << 8)
-#define   GMBUS_RATE_50KHZ	(1 << 8)
-#define   GMBUS_RATE_400KHZ	(2 << 8) /* reserved on Pineview */
-#define   GMBUS_RATE_1MHZ	(3 << 8) /* reserved on Pineview */
-#define   GMBUS_HOLD_EXT	(1 << 7) /* 300ns hold time, rsvd on Pineview */
-#define   GMBUS_BYTE_CNT_OVERRIDE (1 << 6)
+/* command/status */
+#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104)
+#define   GMBUS_SW_CLR_INT		(1 << 31)
+#define   GMBUS_SW_RDY			(1 << 30)
+#define   GMBUS_ENT			(1 << 29) /* enable timeout */
+#define   GMBUS_CYCLE_NONE		(0 << 25)
+#define   GMBUS_CYCLE_WAIT		(1 << 25)
+#define   GMBUS_CYCLE_INDEX		(2 << 25)
+#define   GMBUS_CYCLE_STOP		(4 << 25)
+#define   GMBUS_BYTE_COUNT_SHIFT	16
+#define   GMBUS_BYTE_COUNT_MAX		256U
+#define   GEN9_GMBUS_BYTE_COUNT_MAX	511U
+#define   GMBUS_SLAVE_INDEX_SHIFT	8
+#define   GMBUS_SLAVE_ADDR_SHIFT	1
+#define   GMBUS_SLAVE_READ		(1 << 0)
+#define   GMBUS_SLAVE_WRITE		(0 << 0)
 
-#define GMBUS1			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5104) /* command/status */
-#define   GMBUS_SW_CLR_INT	(1 << 31)
-#define   GMBUS_SW_RDY		(1 << 30)
-#define   GMBUS_ENT		(1 << 29) /* enable timeout */
-#define   GMBUS_CYCLE_NONE	(0 << 25)
-#define   GMBUS_CYCLE_WAIT	(1 << 25)
-#define   GMBUS_CYCLE_INDEX	(2 << 25)
-#define   GMBUS_CYCLE_STOP	(4 << 25)
-#define   GMBUS_BYTE_COUNT_SHIFT 16
-#define   GMBUS_BYTE_COUNT_MAX   256U
-#define   GEN9_GMBUS_BYTE_COUNT_MAX 511U
-#define   GMBUS_SLAVE_INDEX_SHIFT 8
-#define   GMBUS_SLAVE_ADDR_SHIFT 1
-#define   GMBUS_SLAVE_READ	(1 << 0)
-#define   GMBUS_SLAVE_WRITE	(0 << 0)
-#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108) /* status */
-#define   GMBUS_INUSE		(1 << 15)
-#define   GMBUS_HW_WAIT_PHASE	(1 << 14)
-#define   GMBUS_STALL_TIMEOUT	(1 << 13)
-#define   GMBUS_INT		(1 << 12)
-#define   GMBUS_HW_RDY		(1 << 11)
-#define   GMBUS_SATOER		(1 << 10)
-#define   GMBUS_ACTIVE		(1 << 9)
-#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c) /* data buffer bytes 3-0 */
-#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110) /* interrupt mask (Pineview+) */
-#define   GMBUS_SLAVE_TIMEOUT_EN (1 << 4)
-#define   GMBUS_NAK_EN		(1 << 3)
-#define   GMBUS_IDLE_EN		(1 << 2)
-#define   GMBUS_HW_WAIT_EN	(1 << 1)
-#define   GMBUS_HW_RDY_EN	(1 << 0)
-#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120) /* byte index */
-#define   GMBUS_2BYTE_INDEX_EN	(1 << 31)
+/* status */
+#define GMBUS2			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5108)
+#define   GMBUS_INUSE			(1 << 15)
+#define   GMBUS_HW_WAIT_PHASE		(1 << 14)
+#define   GMBUS_STALL_TIMEOUT		(1 << 13)
+#define   GMBUS_INT			(1 << 12)
+#define   GMBUS_HW_RDY			(1 << 11)
+#define   GMBUS_SATOER			(1 << 10)
+#define   GMBUS_ACTIVE			(1 << 9)
+
+/* data buffer bytes 3-0 */
+#define GMBUS3			_MMIO(dev_priv->display.gmbus.mmio_base + 0x510c)
+
+/* interrupt mask (Pineview+) */
+#define GMBUS4			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5110)
+#define   GMBUS_SLAVE_TIMEOUT_EN	(1 << 4)
+#define   GMBUS_NAK_EN			(1 << 3)
+#define   GMBUS_IDLE_EN			(1 << 2)
+#define   GMBUS_HW_WAIT_EN		(1 << 1)
+#define   GMBUS_HW_RDY_EN		(1 << 0)
+
+/* byte index */
+#define GMBUS5			_MMIO(dev_priv->display.gmbus.mmio_base + 0x5120)
+#define   GMBUS_2BYTE_INDEX_EN		(1 << 31)
 
 #endif /* __INTEL_GMBUS_REGS_H__ */
-- 
2.34.1

