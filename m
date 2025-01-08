Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC95DA05FD3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 16:18:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0D410EBEF;
	Wed,  8 Jan 2025 15:18:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSWuxYLj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBE110EBEB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 15:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736349512; x=1767885512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OmAxzj+rSMTldinbiEIEjpkSz/Eip3QaqG42G2Uoy3c=;
 b=GSWuxYLjGqzEfN1WqIXGbnxxN03mkeywYe0v+5JgetKi8UD79hqF06zN
 jHkm6LT1a7Z5U/FOK3PPYxro/1kXYgLjpTstDPrRgISx2doR/cM+Tludg
 aA4tJT8ecnarQe/jbbUTCbDgcAIlOkZhG+v16BIvF6EfE8xE0YM1sQQv/
 dgS4+GNU1Vl5MYG7sxT1ESB18Ytl08PUxOXF/u766eVF0OLm/sscMmIeP
 Zy7DgD7dmr6OO3eHnEvyAJAzjks8z447H2H6vAmwbwiiDuaY1S0Mz+Sby
 uKqRFQzSTP5SsYeqxQmmZwFf/63gRbkBcTNEkNbDofBWzbe/rUS0ce/8u w==;
X-CSE-ConnectionGUID: TPVcKBsCSqiCqqBqYkvKGg==
X-CSE-MsgGUID: GKe5rYYCTfagHJRlbrKa/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694392"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36694392"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:31 -0800
X-CSE-ConnectionGUID: VnsZk2O7Ti2T/o8BSwRyxA==
X-CSE-MsgGUID: epepRH01SJyeu/i05y6+kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103626828"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:30 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 4/5] drm/i915/dp_mst: Simplify getting a drm_device pointer
 needed by to_i915()
Date: Wed,  8 Jan 2025 17:19:15 +0200
Message-ID: <20250108151916.491113-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250108151916.491113-1-imre.deak@intel.com>
References: <20250108151916.491113-1-imre.deak@intel.com>
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

Simplify getting a drm_device pointer when using to_i915() in
intel_dp_mst.c from the already available intel_display object, instead
of getting it from a DRM KMS object.

While at it rename dev_priv to i915, following the driver's standard
terminology.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 85f451c986ae8..fbc504037a969 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1423,7 +1423,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dp *intel_dp = connector->mst_port;
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
 	struct drm_dp_mst_port *port = connector->port;
@@ -1442,7 +1442,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	*status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	*status = intel_cpu_transcoder_mode_valid(i915, mode);
 	if (*status != MODE_OK)
 		return 0;
 
@@ -1526,7 +1526,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
+	*status = intel_mode_valid_max_plane_size(i915, mode, num_joined_pipes);
 	return 0;
 }
 
-- 
2.44.2

