Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D750C4CC537
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 19:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C1C10EE40;
	Thu,  3 Mar 2022 18:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D4210EE40
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 18:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646332127; x=1677868127;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KTycG5R6ce9jGeNE/p866+ryiz4D94Ni1In3y4hSL3A=;
 b=gZp1rhZl6oeOmtXxM0T86bnznm9esrM434fTe3dsD0DzVGrmQGeAIsZY
 BGzd6oClxpcTVzhr4AEna0zyHEmpgggMV1LRlnWri+jLV9TSsWgNTldwr
 8eHQbByAdM9Et4uz16sZh/D3/E/ITwwV2jSc5ni/Vfa2paDT6566s2FP8
 AuR1qejYPofunely12UKqFi/XInRLW/h7IzDe8+r8Y4JwBH/DBEBX6A9B
 G0eP4XndfOy8qDDTecD/fZ/uQw6K4jiU1Id8dRCTud2T7w31e5J5omCAX
 DvkdsoRslqGFEckn/lP6kUnYJqE4FnmY74yq/JnyVpwTIA/pY7TDxdyql A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="278454547"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="278454547"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:13 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="551866300"
Received: from bjoseph-mobl.ger.corp.intel.com (HELO localhost) ([10.252.1.89])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:19:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:19:27 +0200
Message-Id: <20220303181931.1661767-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gmbus: combine gmbus pin lookups
 to one function
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

Combine the platform specific if ladders for array lookup and size
checks into one. This is cleaner and avoids duplication, but hopefully
also helps any static analyzers that seem to have trouble with the
bounds checks.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 62 ++++++++++------------
 1 file changed, 29 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 2fad03250661..9cbf7f9a1e2e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -106,51 +106,47 @@ static const struct gmbus_pin gmbus_pins_dg2[] = {
 	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
 };
 
-/* pin is expected to be valid */
-static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *dev_priv,
+static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 					     unsigned int pin)
 {
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG2)
-		return &gmbus_pins_dg2[pin];
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
-		return &gmbus_pins_dg1[pin];
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		return &gmbus_pins_icp[pin];
-	else if (HAS_PCH_CNP(dev_priv))
-		return &gmbus_pins_cnp[pin];
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		return &gmbus_pins_bxt[pin];
-	else if (DISPLAY_VER(dev_priv) == 9)
-		return &gmbus_pins_skl[pin];
-	else if (IS_BROADWELL(dev_priv))
-		return &gmbus_pins_bdw[pin];
-	else
-		return &gmbus_pins[pin];
-}
-
-bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
-			      unsigned int pin)
-{
-	unsigned int size;
+	const struct gmbus_pin *pins;
+	size_t size;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG2)
+	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
+		pins = gmbus_pins_dg2;
 		size = ARRAY_SIZE(gmbus_pins_dg2);
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
+		pins = gmbus_pins_dg1;
 		size = ARRAY_SIZE(gmbus_pins_dg1);
-	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
+		pins = gmbus_pins_icp;
 		size = ARRAY_SIZE(gmbus_pins_icp);
-	else if (HAS_PCH_CNP(dev_priv))
+	} else if (HAS_PCH_CNP(i915)) {
+		pins = gmbus_pins_cnp;
 		size = ARRAY_SIZE(gmbus_pins_cnp);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
+		pins = gmbus_pins_bxt;
 		size = ARRAY_SIZE(gmbus_pins_bxt);
-	else if (DISPLAY_VER(dev_priv) == 9)
+	} else if (DISPLAY_VER(i915) == 9) {
+		pins = gmbus_pins_skl;
 		size = ARRAY_SIZE(gmbus_pins_skl);
-	else if (IS_BROADWELL(dev_priv))
+	} else if (IS_BROADWELL(i915)) {
+		pins = gmbus_pins_bdw;
 		size = ARRAY_SIZE(gmbus_pins_bdw);
-	else
+	} else {
+		pins = gmbus_pins;
 		size = ARRAY_SIZE(gmbus_pins);
+	}
+
+	if (pin >= size || !pins[pin].name)
+		return NULL;
 
-	return pin < size && get_gmbus_pin(dev_priv, pin)->name;
+	return &pins[pin];
+}
+
+bool intel_gmbus_is_valid_pin(struct drm_i915_private *i915, unsigned int pin)
+{
+	return get_gmbus_pin(i915, pin);
 }
 
 /* Intel GPIO access functions */
-- 
2.30.2

