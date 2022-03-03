Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303084CC509
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 19:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513B110EE41;
	Thu,  3 Mar 2022 18:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8078210EE3D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 18:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646331802; x=1677867802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+oLP6521prQ31j/qgPLmijQKTEinNXtDnIXN+JKOMQ=;
 b=FF2TTEbYQzYxXVnIVDrqEjGzpyR+DC9nqA4LV1vCCr2lYUIxC1WmgZc1
 SzmZZ98bJ16R2cGtTWgNi9Gc6w2+PuKte+tLHlsztm2M/eGC4t8cfRFfA
 ho6w8owaiawFoleePoX0G9EvMvfpKLeMU287ZDOOjp4PuFAkH/T5I//5d
 XsxZxijPPQZhY1sJxI52a4nP2BNF1oAGm9mmifsa3spF+heOC1rB8MNhG
 Lgdm8M/06GneegpX+7ll7pl40vtqiCALUCFVf0oQ2mId40CO3FblYlrtL
 RgVXKX0zgDSDOBVohK+pgE9dOHp66VoWImsEByfrMLbTz6HaK072TykDf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253501426"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253501426"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:26 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="535948676"
Received: from bjoseph-mobl.ger.corp.intel.com (HELO localhost) ([10.252.1.89])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:19:28 +0200
Message-Id: <20220303181931.1661767-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303181931.1661767-1-jani.nikula@intel.com>
References: <20220303181931.1661767-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gmbus: reduce gmbus pin lookups in
 gmbus setup
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

Avoid separate pin lookups for validity and name.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 9cbf7f9a1e2e..9dc66447d308 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -876,7 +876,10 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 	init_waitqueue_head(&dev_priv->gmbus_wait_queue);
 
 	for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
-		if (!intel_gmbus_is_valid_pin(dev_priv, pin))
+		const struct gmbus_pin *gmbus_pin;
+
+		gmbus_pin = get_gmbus_pin(dev_priv, pin);
+		if (!gmbus_pin)
 			continue;
 
 		bus = &dev_priv->gmbus[pin];
@@ -885,8 +888,7 @@ int intel_gmbus_setup(struct drm_i915_private *dev_priv)
 		bus->adapter.class = I2C_CLASS_DDC;
 		snprintf(bus->adapter.name,
 			 sizeof(bus->adapter.name),
-			 "i915 gmbus %s",
-			 get_gmbus_pin(dev_priv, pin)->name);
+			 "i915 gmbus %s", gmbus_pin->name);
 
 		bus->adapter.dev.parent = &pdev->dev;
 		bus->dev_priv = dev_priv;
-- 
2.30.2

