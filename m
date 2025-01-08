Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FF0A05FD0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 16:18:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A16410E42D;
	Wed,  8 Jan 2025 15:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdTENjZY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB2310E8E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 15:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736349508; x=1767885508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VXTGgl1K9SXx+dHPVWRFKxdDWNT6igKTtOBzy0IkRh4=;
 b=kdTENjZYngraDL0j7NMFCSkaNPbYl3rktD87ZL8FDsSQeyEkGa0nEWzG
 UXQsYZZax2MvaC6VEg57olIdiEUQihQuazWVELBV04RuDa19uSXyWwLWR
 8WRECYeMuB0AKInsChU1kWTWt8nuWhdlZcs+sRLZXFJC2lf/aHgoTt+q7
 jfxVv1XffULv11WtjjzpxS7FExqecdTZH5h9+uBRSQwcFL7aqLBRABQtd
 1fNUPzZkBj4H3GW1ygRKIb83bbmsUniF/owLWlqoedB7LW8oo97KcqZpZ
 8+o7cFr42rXMqjLCLzN9Wq0mkM70IAub0GsRsv3ABGOM9kKmQOnlRVDFN w==;
X-CSE-ConnectionGUID: 0XSNb759TyWLVxtZqPRP9g==
X-CSE-MsgGUID: BZiU5YA3QLaaZ88yvv2GEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694387"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36694387"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:28 -0800
X-CSE-ConnectionGUID: nK1xYYhRSZ2kpvtbBM+qDA==
X-CSE-MsgGUID: Dbk5ETwjTTWDk1SteE/kww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103626812"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 1/5] drm/i915/dp_mst: Fix error handling while adding a
 connector
Date: Wed,  8 Jan 2025 17:19:12 +0200
Message-ID: <20250108151916.491113-2-imre.deak@intel.com>
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

After an error during adding an MST connector the MST port and the
intel_connector object could be leaked, fix this up.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 227bd2783e641..7ecd639d6f25b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1717,11 +1717,8 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 
 	ret = drm_connector_dynamic_init(display->drm, connector, &mst_connector_funcs,
 					 DRM_MODE_CONNECTOR_DisplayPort, NULL);
-	if (ret) {
-		drm_dp_mst_put_port_malloc(port);
-		intel_connector_free(intel_connector);
-		return NULL;
-	}
+	if (ret)
+		goto err_put_port;
 
 	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
 	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
@@ -1736,12 +1733,12 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 
 		ret = drm_connector_attach_encoder(&intel_connector->base, enc);
 		if (ret)
-			goto err;
+			goto err_cleanup_connector;
 	}
 
 	ret = mst_topology_add_connector_properties(intel_dp, connector, pathprop);
 	if (ret)
-		goto err;
+		goto err_cleanup_connector;
 
 	ret = intel_dp_hdcp_init(dig_port, intel_connector);
 	if (ret)
@@ -1750,8 +1747,12 @@ mst_topology_add_connector(struct drm_dp_mst_topology_mgr *mgr,
 
 	return connector;
 
-err:
+err_cleanup_connector:
 	drm_connector_cleanup(connector);
+err_put_port:
+	drm_dp_mst_put_port_malloc(port);
+	intel_connector_free(intel_connector);
+
 	return NULL;
 }
 
-- 
2.44.2

