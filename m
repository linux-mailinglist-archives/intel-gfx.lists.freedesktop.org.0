Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978FC879637
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D11112E6B;
	Tue, 12 Mar 2024 14:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dCfFSRBi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A460112E6E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253777; x=1741789777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CgJqulsVllFXk6oCjVMCMfdWBaAj4oad0XR23dlv9uI=;
 b=dCfFSRBihM0c89UkWYuRsRRPX6oU9Njr67LDNsq4ecBXSyvRRxDmzR4A
 k2Txf+W3g2jJlF+iyrj7mb0r74qVi9lyNMPQPTbnucrxKomBs5r7B5WSA
 CzLOvgssAoSW760+oi1OztfCmfwIGeuk6rVDoZ38YVMjyv2YLytHyixQ6
 U1HnqzmlxZPl6y+7kEAWEFaPVWq6+tFa+2H8fJBlVFmnyK0rA7Ho8yQ18
 hnoSdjN1TY7xmZdnk4eK2wvnYSWQWTVYJ/FFBmq24gXEKFlmRn6WUpGF3
 gtntfaruK/HLGeSA86q6ioIH6rgpX6VgntPugj+/l25AcTHHnwNVQexG/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4818354"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4818354"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11612495"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 6/7] drm/i915/cx0: remove intel_is_c10phy()
Date: Tue, 12 Mar 2024 16:29:01 +0200
Message-Id: <0a226cdbc1016fb7a84bb223ed6b0ad1d6f38b3a.1710253533.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
References: <cover.1710253533.git.jani.nikula@intel.com>
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

Unused.

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

