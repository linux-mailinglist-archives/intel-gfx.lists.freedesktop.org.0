Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DAB4CC50C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 19:24:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497B410E717;
	Thu,  3 Mar 2022 18:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755AC10E717
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 18:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646331854; x=1677867854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Lz5E++eyxFojbaeQ2L08Fjr6eF2fX2SpkRNoAqlorU=;
 b=j0XixFUi47DVFc8Nv29pUGEH2ptEvxWKXktF4JHCJxubEwJK9vMAxZQi
 /JEZmmOZvIVv6PqfelBiHLGIKogioav7cCi3oXGMOkhVbE7OwFV8halbb
 P0scfUS63h00E0y9SqNzPjb93Xlm8YtmLSt4gUujv5Mm/RtMCeYLxUgym
 NZ3LZCKD+fQJHiCHA4kShRE5tS+oRgg5t5hFkRwoAU81ovcJ0Sv1V+2Cx
 VQR/utAJMaehqCU55qabJg29q/IVT2L+J0HfaWt4vAWB8jR32j4SokRpJ
 BQQeH9IYid8FbUr9m045oHLGNYVSRXOJTzZ/rkKprjs0F4ooZypaSrSoN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="233730699"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="233730699"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:30 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="511549846"
Received: from bjoseph-mobl.ger.corp.intel.com (HELO localhost) ([10.252.1.89])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:19:29 +0200
Message-Id: <20220303181931.1661767-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303181931.1661767-1-jani.nikula@intel.com>
References: <20220303181931.1661767-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/gmbus: pass gpio reg to
 intel_gpio_setup()
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

Avoid the additional gmbus lookup on the pin.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 9dc66447d308..fd908e524875 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -322,14 +322,13 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 }
 
 static void
-intel_gpio_setup(struct intel_gmbus *bus, unsigned int pin)
+intel_gpio_setup(struct intel_gmbus *bus, i915_reg_t gpio_reg)
 {
-	struct drm_i915_private *dev_priv = bus->dev_priv;
 	struct i2c_algo_bit_data *algo;
 
 	algo = &bus->bit_algo;
 
-	bus->gpio_reg = GPIO(get_gmbus_pin(dev_priv, pin)->gpio);
+	bus->gpio_reg = gpio_reg;
 	bus->adapter.algo_data = algo;
 	algo->setsda = set_data;
 	algo->setscl = set_clock;
@@ -909,7 +908,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 		if (IS_I830(dev_priv))
 			bus->force_bit = 1;
 
-		intel_gpio_setup(bus, pin);
+		intel_gpio_setup(bus, GPIO(gmbus_pin->gpio));
 
 		ret = i2c_add_adapter(&bus->adapter);
 		if (ret)
-- 
2.30.2

