Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 362ED636C41
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313E810E640;
	Wed, 23 Nov 2022 21:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B60B10E63C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238344; x=1700774344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hfY72uXrE45V34tEWsnyqFYih5IbhTA5//xWMzTegn0=;
 b=PNrJouTJYWUR893m0VgtFB0QLOo8VXK0NTNWVNpu/X7sLYSP706dOwmt
 gXGgbiiJ1LTsaNmEdlJDAVca8J8XIlb7kFLxJlmQdFQxJg5198+A/fi3p
 xLJc5nIa/FDaVDWOvqqx8TPsriGgv68mpajhUjl++IgkWwGxXaXeA/cSj
 7U+cFGe9FnieZi8tKHB+kKtuVVWZwdiXZBip6CU2S8mIa1q1WFoL3IXvk
 3ZEEZK6ufJmBZTOZqM2fchC/oPdatzP41/H1ji7Kh5LDyfolUzJ7muK84
 1JRuQHnR6UaPA3+QyGqVEyrcXaYlN5jZVYDfVWvPNE4oXBogw55ZfNEBM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378419008"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378419008"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636053071"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636053071"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:21 +0200
Message-Id: <c1e12ffe47916204dfad866d4dedb83bebb75e78.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/12] drm/i915/gmbus: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 46 ++++++++--------------
 1 file changed, 17 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index a5840a28a69d..0bc4f6b48e80 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -255,14 +255,12 @@ static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
 static u32 get_reserved(struct intel_gmbus *bus)
 {
 	struct drm_i915_private *i915 = bus->i915;
-	struct intel_uncore *uncore = &i915->uncore;
 	u32 reserved = 0;
 
 	/* On most chips, these bits must be preserved in software. */
 	if (!IS_I830(i915) && !IS_I845G(i915))
-		reserved = intel_uncore_read_notrace(uncore, bus->gpio_reg) &
-			   (GPIO_DATA_PULLUP_DISABLE |
-			    GPIO_CLOCK_PULLUP_DISABLE);
+		reserved = intel_de_read_notrace(i915, bus->gpio_reg) &
+			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
 
 	return reserved;
 }
@@ -270,37 +268,31 @@ static u32 get_reserved(struct intel_gmbus *bus)
 static int get_clock(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->i915->uncore;
+	struct drm_i915_private *i915 = bus->i915;
 	u32 reserved = get_reserved(bus);
 
-	intel_uncore_write_notrace(uncore,
-				   bus->gpio_reg,
-				   reserved | GPIO_CLOCK_DIR_MASK);
-	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_CLOCK_DIR_MASK);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
 
-	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
-		GPIO_CLOCK_VAL_IN) != 0;
+	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_CLOCK_VAL_IN) != 0;
 }
 
 static int get_data(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->i915->uncore;
+	struct drm_i915_private *i915 = bus->i915;
 	u32 reserved = get_reserved(bus);
 
-	intel_uncore_write_notrace(uncore,
-				   bus->gpio_reg,
-				   reserved | GPIO_DATA_DIR_MASK);
-	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_DATA_DIR_MASK);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
 
-	return (intel_uncore_read_notrace(uncore, bus->gpio_reg) &
-		GPIO_DATA_VAL_IN) != 0;
+	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_DATA_VAL_IN) != 0;
 }
 
 static void set_clock(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->i915->uncore;
+	struct drm_i915_private *i915 = bus->i915;
 	u32 reserved = get_reserved(bus);
 	u32 clock_bits;
 
@@ -310,16 +302,14 @@ static void set_clock(void *data, int state_high)
 		clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
 			     GPIO_CLOCK_VAL_MASK;
 
-	intel_uncore_write_notrace(uncore,
-				   bus->gpio_reg,
-				   reserved | clock_bits);
-	intel_uncore_posting_read(uncore, bus->gpio_reg);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved | clock_bits);
+	intel_de_posting_read(i915, bus->gpio_reg);
 }
 
 static void set_data(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct intel_uncore *uncore = &bus->i915->uncore;
+	struct drm_i915_private *i915 = bus->i915;
 	u32 reserved = get_reserved(bus);
 	u32 data_bits;
 
@@ -329,8 +319,8 @@ static void set_data(void *data, int state_high)
 		data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
 			GPIO_DATA_VAL_MASK;
 
-	intel_uncore_write_notrace(uncore, bus->gpio_reg, reserved | data_bits);
-	intel_uncore_posting_read(uncore, bus->gpio_reg);
+	intel_de_write_notrace(i915, bus->gpio_reg, reserved | data_bits);
+	intel_de_posting_read(i915, bus->gpio_reg);
 }
 
 static int
@@ -439,9 +429,7 @@ gmbus_wait_idle(struct drm_i915_private *i915)
 	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
 	intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
 
-	ret = intel_wait_for_register_fw(&i915->uncore,
-					 GMBUS2(i915), GMBUS_ACTIVE, 0,
-					 10);
+	ret = intel_de_wait_for_register_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10);
 
 	intel_de_write_fw(i915, GMBUS4(i915), 0);
 	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
-- 
2.34.1

