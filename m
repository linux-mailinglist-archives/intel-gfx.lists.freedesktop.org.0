Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF128501BC8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38B910E284;
	Thu, 14 Apr 2022 19:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D7710E1F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964158; x=1681500158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mO538aeWEnO0siNI/D8lw8r0yIC+bL5qmrw2s3N3+Wo=;
 b=GF8OluGGDaJG7wo4iIz7HwFxErWqj1Vif1JmdnDot1Xk7FYEtUavItBk
 maguvXLbVf+fruj9VBG+Y1urmtF1Mv+r1NrvEpGNzINA9WGsKEPCxMVnE
 WIJWLc2loA/mFZbTHOoUDDu/1VWlLUGR8Cmv9DSHfLvj3JY/G69BV49dM
 jSyS320AgDzA6L3H8wSodq1DuE6P+9Uijmu2C5UfjKoOVOKSAWGT64vg7
 F+E2SLaStm8GdwAlep+xGVdy3EQPV3gY0QD1aN3q2nhxp5/i9WaUh6PtB
 gq6ejfPzEYdXNL9EpnX9q+TuT4t6qdRZYBhN3fQWOUkw2cdjq8WOGXRdV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="244899952"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="244899952"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527521437"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 12:22:29 -0700
Message-Id: <20220414192230.749771-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220414192230.749771-1-matthew.d.roper@intel.com>
References: <20220414192230.749771-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/4] drm/i915/doc: Link query items to their uapi
 structs
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

Document the possible options for drm_i915_query_item.query_id with
links to the corresponding uapi structures.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Francisco Jerez <currojerez@riseup.net>
---
 include/uapi/drm/i915_drm.h | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 787dab98f7b0..097a7935a510 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2724,18 +2724,24 @@ struct drm_i915_perf_oa_config {
  *
  * The behaviour is determined by the @query_id. Note that exactly what
  * @data_ptr is also depends on the specific @query_id.
- *
- * For specific queries see:
- *  * `GuC HWCONFIG blob uAPI`_
  */
 struct drm_i915_query_item {
-	/** @query_id: The id for this query */
+	/**
+	 * @query_id:
+	 *
+	 * The id for this query.  Currently accepted query IDs are:
+	 *  - %DRM_I915_QUERY_TOPOLOGY_INFO (see struct drm_i915_query_topology_info)
+	 *  - %DRM_I915_QUERY_ENGINE_INFO (see struct drm_i915_engine_info)
+	 *  - %DRM_I915_QUERY_PERF_CONFIG (see struct drm_i915_query_perf_config)
+	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_regions)
+	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
+	 */
 	__u64 query_id;
-#define DRM_I915_QUERY_TOPOLOGY_INFO    1
-#define DRM_I915_QUERY_ENGINE_INFO	2
-#define DRM_I915_QUERY_PERF_CONFIG      3
-#define DRM_I915_QUERY_MEMORY_REGIONS   4
-#define DRM_I915_QUERY_HWCONFIG_BLOB	5
+#define DRM_I915_QUERY_TOPOLOGY_INFO		1
+#define DRM_I915_QUERY_ENGINE_INFO		2
+#define DRM_I915_QUERY_PERF_CONFIG		3
+#define DRM_I915_QUERY_MEMORY_REGIONS		4
+#define DRM_I915_QUERY_HWCONFIG_BLOB		5
 /* Must be kept compact -- no holes and well documented */
 
 	/**
@@ -2751,14 +2757,14 @@ struct drm_i915_query_item {
 	/**
 	 * @flags:
 	 *
-	 * When query_id == DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
+	 * When &query_id == %DRM_I915_QUERY_TOPOLOGY_INFO, must be 0.
 	 *
-	 * When query_id == DRM_I915_QUERY_PERF_CONFIG, must be one of the
+	 * When &query_id == %DRM_I915_QUERY_PERF_CONFIG, must be one of the
 	 * following:
 	 *
-	 *	- DRM_I915_QUERY_PERF_CONFIG_LIST
-	 *      - DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
-	 *      - DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
+	 *	- %DRM_I915_QUERY_PERF_CONFIG_LIST
+	 *      - %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID
+	 *      - %DRM_I915_QUERY_PERF_CONFIG_FOR_UUID
 	 */
 	__u32 flags;
 #define DRM_I915_QUERY_PERF_CONFIG_LIST          1
-- 
2.34.1

