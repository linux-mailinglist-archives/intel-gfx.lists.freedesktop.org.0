Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AA05B5E96
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB74B10E43E;
	Mon, 12 Sep 2022 16:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3039C10E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001688; x=1694537688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bW3zftFQq/2FrKzU1bqgS+0hQNDzC7n0CzJFexGmRNk=;
 b=InKsxye7db0poUS3rDyYiqilR1PE8QB7WMzZOKTid2/EpMxatNFJ5pGt
 L/082ZZFFE9GL6rFLs/G7rVgwaolmYqu8u4Ndi3jT7EUe7nFdVpvV0OoS
 6346IfHfm71WcWtMvNYWOxVxrZuRLGSr9m2nwlGOXV1EQqvz7LWBhNf6C
 wRRLygVVht01dpAz8IJuSGmoOmOcTQkH2eOwdqYy00oCiVPSFF4nt8SuV
 E4sj6D3wL29/ODRcS61upkSmlPLfWwKwaSe7hrTHf7ktbAdwdjHbDg1m5
 X6OhnLXg7c8+rQBKEQq9WvSmalL8vrLXqgosa0HHTuQoqp6mhact8K6Ev A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="324152745"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324152745"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678174224"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:23 +0300
Message-Id: <7830b4a93d16829d726eae3ed47535e6f31f29f6.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/15] drm/i915/gmbus: move GPIO enum to gmbus
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

The GPIO enum is only used in intel_gmbus.c, hide it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 18 ------------------
 drivers/gpu/drm/i915/display/intel_gmbus.c   | 20 +++++++++++++++++++-
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 884e8e67b17c..85395c8e58f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -61,24 +61,6 @@ struct intel_remapped_info;
 struct intel_rotation_info;
 struct pci_dev;
 
-enum i915_gpio {
-	GPIOA,
-	GPIOB,
-	GPIOC,
-	GPIOD,
-	GPIOE,
-	GPIOF,
-	GPIOG,
-	GPIOH,
-	__GPIOI_UNUSED,
-	GPIOJ,
-	GPIOK,
-	GPIOL,
-	GPIOM,
-	GPION,
-	GPIOO,
-};
-
 /*
  * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
  * rest have consecutive values and match the enum values of transcoders
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 6f6cfccad477..86817b56095e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -49,9 +49,27 @@ struct intel_gmbus {
 	struct drm_i915_private *i915;
 };
 
+enum gmbus_gpio {
+	GPIOA,
+	GPIOB,
+	GPIOC,
+	GPIOD,
+	GPIOE,
+	GPIOF,
+	GPIOG,
+	GPIOH,
+	__GPIOI_UNUSED,
+	GPIOJ,
+	GPIOK,
+	GPIOL,
+	GPIOM,
+	GPION,
+	GPIOO,
+};
+
 struct gmbus_pin {
 	const char *name;
-	enum i915_gpio gpio;
+	enum gmbus_gpio gpio;
 };
 
 /* Map gmbus pin pairs to names and registers. */
-- 
2.34.1

