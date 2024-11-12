Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344969C55DA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 12:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88F610E5CA;
	Tue, 12 Nov 2024 11:11:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ie3abxe7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D7E10E5C4;
 Tue, 12 Nov 2024 11:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731409871; x=1762945871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cj3Vx509+8Uu4BGinhdDbSj1+D+0z4ZwPjpyJ+P9i9I=;
 b=Ie3abxe7HkGEkmCUBfL9RnARcN4ls+GvCuHZCTKFvqtf6UXZ0T4LKyVa
 42n5h1CCr3m2QAqhM+RA8oOJuTPR1Q4xzRgy2ssIRfevV5sGQgg/23riM
 Wcd2GODx6PMzi5l/oJxi0+ZccWbH2iBiPFRdbtOpHDtxOhL4ACNiF4ZyL
 W+lZW9QsCbYzHRgO0DQCLLZcPh60yNKXVM1PR5yaz+/qT162witZ9HVCP
 iec4cYb1jmxrWEkhLbGSL9aMFz+UfoG+sOhH2+fA+EZpHpNrCYjMyH+TO
 ZDswGFFxgSsmES4Cr27SfpPgLbGe/Urz7MbYyPeufXmU4uHVJFpqC8pZG w==;
X-CSE-ConnectionGUID: Dqo5m+xqQ1yBQ85q3kiZ4A==
X-CSE-MsgGUID: pprGfbKwSlCOWmvUM4KRJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31094666"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31094666"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:11 -0800
X-CSE-ConnectionGUID: lF/MERdrQvqzizK5U0TCWw==
X-CSE-MsgGUID: IOqnctzEQGyg83CmSbaijw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="92362919"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 03:11:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI v2 4/8] drm/i915/mst: use primary_encoder in fake mst encoder
 creation
Date: Tue, 12 Nov 2024 13:10:40 +0200
Message-Id: <7c9ad1db97550b7eacb1f010521704f623b0c689.1731409802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
References: <cover.1731409802.git.jani.nikula@intel.com>
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

Use a primary_encoder local variable in
intel_dp_create_fake_mst_encoder() for clarity.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 037f71eac5e8..7641ced64610 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1790,6 +1790,7 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
 static struct intel_dp_mst_encoder *
 intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
 {
+	struct intel_encoder *primary_encoder = &dig_port->base;
 	struct intel_dp_mst_encoder *intel_mst;
 	struct intel_encoder *encoder;
 	struct drm_device *dev = dig_port->base.base.dev;
@@ -1807,8 +1808,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
 			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
 
 	encoder->type = INTEL_OUTPUT_DP_MST;
-	encoder->power_domain = dig_port->base.power_domain;
-	encoder->port = dig_port->base.port;
+	encoder->power_domain = primary_encoder->power_domain;
+	encoder->port = primary_encoder->port;
 	encoder->cloneable = 0;
 	/*
 	 * This is wrong, but broken userspace uses the intersection
-- 
2.39.5

