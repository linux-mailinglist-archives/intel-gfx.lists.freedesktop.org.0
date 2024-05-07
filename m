Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D938BD9FE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5ABC10E8BF;
	Tue,  7 May 2024 04:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PM8ewp63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9500810E8BF
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054796; x=1746590796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2zA1z08/xyX+OBJabSQOw4aTCY3ozGQqB1r0wzeCIag=;
 b=PM8ewp63yeNiVby3GUv00h5bMPiHyYRI/vZHbLQL+Jo3RtESnJgFsOzQ
 ZtjGCHAkeAf6Cv0gRqX6PRvlBx4+5lvwQ9VPEpdxAIu+Cnd4wZMzNXGOk
 vQlYOW/e0NHz88Cu2mvMj0Y7bOERttG4TgYY9iud5tadpTTivzRrIVB0W
 LSl2KRP1bI4+snrgvCeYj4eJnzecvMykFB8aUMqUB4ulC3RMEFs86lvOs
 tdn6KuNDTHmECVDllef+mQvfrQa1Mjtpi3ty1Ei3KsnpRTC/iNG7P2wtu
 6+3TnjO5nMllrh1i1E92USVfdNHsIYX2lX9h/b1HSViCzExDiH/46rG5E A==;
X-CSE-ConnectionGUID: YlHHkgE5RDeBJ/fwHoldUA==
X-CSE-MsgGUID: cwJ1wpMcR4mCkES6M8H9Fw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645337"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645337"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:36 -0700
X-CSE-ConnectionGUID: NXUbtQ89S92pI+QDqfRJvA==
X-CSE-MsgGUID: pFAWU7EKQMevEaaQ1L+3tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468322"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:35 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/7] drm/i915/dp: Make has_gamut_metadata_dip() non static
Date: Tue,  7 May 2024 09:34:01 +0530
Message-ID: <20240507040407.1056061-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Make has_gamut_metadata_dip() non static so it can also be used to
at other places eg in intel_dp_aux_backlight. So that we can check
if HW is capable of sending SDP which helps us decide if we use
AUX based HDR control or via SDP.

--v2
-State reason the function is needed [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 486361eb0070..6b8a94d0ca99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6364,8 +6364,8 @@ bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
 
-static bool
-has_gamut_metadata_dip(struct intel_encoder *encoder)
+bool
+intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -6412,7 +6412,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
+	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
 	if (HAS_VRR(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 106ecfde36d9..aad2223df2a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -196,5 +196,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.43.2

