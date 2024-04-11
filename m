Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D58A081E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B0110EE46;
	Thu, 11 Apr 2024 06:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GUuMLpbm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9539910EE48
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Apr 2024 06:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712815919; x=1744351919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s/gFAiml0wV3HKHJgADB5BEAFQvl+p16ZvuLu+VEsog=;
 b=GUuMLpbmu08Ijy5wXWj3F5Bf2szsTkFvBByQGHCOiU+8zwpBf7h/kpVN
 WEoiqjtxalZSDV11gxfyAufmNpU4oLJ+ncrV6asZim4qM5pytJdRe96F+
 ALtBAAx6q7GYlttYmrXlh0sr5odQ85zertPVsubQ/6Ym5FO6jxkO/kuDs
 kLZ1ExcgSyQgVgBeo6yvyjEnP4g27jVUOV+xrIvhd3ymmvIAslFNulLPI
 bAiFjRou+msPHFFbL/MNg19EkPUCuwBK6B+R/Nqhe24EKEoEdutrLiwBi
 vus5hcKxHkNC5macHp/GDFgnkJ0pBj9jd+e4rO2pqQH+uYvzOVQDkCMpu g==;
X-CSE-ConnectionGUID: CXmoUfqYQGGkhdeYcfuMAw==
X-CSE-MsgGUID: so0mXkmfT6uPaSPBuzGNqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8384954"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8384954"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 23:11:58 -0700
X-CSE-ConnectionGUID: BIYhPVvxTNSIRNnXm9nMFQ==
X-CSE-MsgGUID: HGzBBwxsTTuv2XIXbmWOIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="58226411"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa001.jf.intel.com with ESMTP; 10 Apr 2024 23:11:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 naveen1.kumar@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/6] drm/i915/dp: Make has_gamut_metadata_dip() non static
Date: Thu, 11 Apr 2024 11:39:20 +0530
Message-ID: <20240411060925.475456-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240411060925.475456-1-suraj.kandpal@intel.com>
References: <20240411060925.475456-1-suraj.kandpal@intel.com>
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
at other places eg in intel_dp_aux_backlight.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 163da48bc406..8b105efd4de9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6365,8 +6365,8 @@ bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
 
-static bool
-has_gamut_metadata_dip(struct intel_encoder *encoder)
+bool
+intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -6413,7 +6413,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
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

