Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF968645FF5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DB410E409;
	Wed,  7 Dec 2022 17:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 059A310E40C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433496; x=1701969496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hfY72uXrE45V34tEWsnyqFYih5IbhTA5//xWMzTegn0=;
 b=VqBe0EC/BPoc2DZf+8EfpdtmAGSDAdWc1qrD8DogJD7vwJLhHOOzJFCV
 VxjqyBCxsUb4z94X/GyAlJG2M4S4GkEon2CGoniduyPXi5hy5rb4gSXmw
 YYP7Kckuq/yev+WxQRiVsV5ncHe1sJ8JIjeGi6YwowaOVEVSRn4WK45zi
 TnSSLpBp6OR02orVSnhoC70822LtS5qYQ9SI3030GSgYfoDa84Gtao2t+
 qAwvO4YUtnhRRb6wJP5L49aUTmmhYZwBD77ZxTO+GTlAX+EJt33tEpy/2
 viqFILUwOqw3rsgcMGFCWwThDuTlqBHw64UdYRDeb6FsP5wnNUZEH8i9S w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318087560"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318087560"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="715260903"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715260903"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:18:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:25 +0200
Message-Id: <05690286d1521ec9c82d680122cca9a90a75b8dd.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/11] drm/i915/gmbus: switch to intel_de_*
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

