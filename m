Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28C58814E1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8CA10F793;
	Wed, 20 Mar 2024 15:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kpe4i4RU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9F810F793
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949735; x=1742485735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R3VKwIkhlfxtzU+0zjiS3iI4cTqsH69YTzdBxozubOs=;
 b=Kpe4i4RUjE5Z4M7+jYyOd47ncqUCWh6awz1XQaGs8WBaB8g36faanVw5
 APwolo0kaX2NC9ozyLBhr1QSL/WWKUdG0tc5VXHe7c0tMMZCwx4I1FCDw
 1IX675h5clc+xEj9vLF6UwTibVlnP3yylkVNn/j58rqUovyYp5hUhsn/u
 QGytSYrAcf+N+nBfJJOnWEfJU1EP+/5JI5c+5BtDIFg5wPd8Hm62PrbyF
 +V3Rlg3CizWbiFTp685Z5ZCUTDhmUcwT22dbqd9tB2YQWpjizLqal4v8M
 EDsDDXaW8tpQGTyUrvCj/ivtIOik8TEiOCoTgqon34gGLV/ay6+v82fD8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6005668"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="6005668"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14265146"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 6/7] drm/i915/cx0: remove the unused intel_is_c10phy()
Date: Wed, 20 Mar 2024 17:48:03 +0200
Message-Id: <486ad2832c567ae491726c6c0cd7144e14469a2f.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The intel_is_c10phy() is now unused. Remove.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++----------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 --
 2 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f893db353f91..b88ffc75cf4a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -29,21 +29,15 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
-/* Prefer intel_encoder_is_c10phy() */
-bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
-{
-	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
-		return true;
-
-	return false;
-}
-
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
-	return intel_is_c10phy(i915, phy);
+	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
+		return true;
+
+	return false;
 }
 
 static int lane_mask_to_lane(u8 lane_mask)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 2be474877fdc..3e03af3e006c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -11,7 +11,6 @@
 #include <linux/bits.h>
 
 enum icl_port_dpll_id;
-enum phy;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_c10pll_state;
@@ -22,7 +21,6 @@ struct intel_crtc_state;
 struct intel_encoder;
 struct intel_hdmi;
 
-bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
-- 
2.39.2

