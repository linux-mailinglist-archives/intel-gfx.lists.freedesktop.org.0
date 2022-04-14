Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4D7501BC6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3D410E1F8;
	Thu, 14 Apr 2022 19:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF3210E220
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964158; x=1681500158;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aZGh+ZeuMX/Zr6I5IYRlIEPZCmwc1Mf4bwLlcwBfKpk=;
 b=gB7ORVC0l5l0Tx4l1wEiICSisYQSoe+ZsHNFA4w+pqgbyc9yhullB7No
 aSAIXfSNuu9475iLXark/jlyg65Nlt0Ckqsvsi8cRlZj2CgBB/w4O+whU
 cPPmPl5nwmOt6HcDg0MjY9GzGoYuweiUcUms1AVYLBJ1Wl6nxmx/cjR0u
 /skh0t43gTlV3uoZxT7+U1GOJNSANQBPVX4Qrar9OvZ7Miv4Jr4H1vTVU
 OS32xGG5tsYeAgzHbpsXRT9kSaGNa+oaKXQQ1LAmovcFgUqkyfz73F6tq
 32TuxZKov7+/rHpFo9L0m7iD28SNb2dCXWYsdG3x1YZWXHEXes494hksN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="244899951"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="244899951"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527521433"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 12:22:28 -0700
Message-Id: <20220414192230.749771-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220414192230.749771-1-matthew.d.roper@intel.com>
References: <20220414192230.749771-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/i915/doc: Convert perf UAPI comments to
 kerneldoc
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

Convert the comments for  drm_i915_query_perf_config and
drm_i915_perf_oa_config to kerneldoc so that they will show up in the
generated documentation.  Also correct a couple places that referred to
query_id when they actually meant to refer to query_item.flags.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Francisco Jerez <currojerez@riseup.net>
---
 include/uapi/drm/i915_drm.h | 116 ++++++++++++++++++++++++++----------
 1 file changed, 86 insertions(+), 30 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 73e1c6180ddb..787dab98f7b0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2657,24 +2657,65 @@ enum drm_i915_perf_record_type {
 	DRM_I915_PERF_RECORD_MAX /* non-ABI */
 };
 
-/*
+/**
+ * struct drm_i915_perf_oa_config
+ *
  * Structure to upload perf dynamic configuration into the kernel.
  */
 struct drm_i915_perf_oa_config {
-	/** String formatted like "%08x-%04x-%04x-%04x-%012x" */
+	/**
+	 * @uuid:
+	 *
+	 * String formatted like "%\08x-%\04x-%\04x-%\04x-%\012x"
+	 */
 	char uuid[36];
 
+	/**
+	 * @n_mux_regs:
+	 *
+	 * Number of mux regs in &mux_regs_ptr.
+	 */
 	__u32 n_mux_regs;
+
+	/**
+	 * @n_boolean_regs:
+	 *
+	 * Number of boolean regs in &boolean_regs_ptr.
+	 */
 	__u32 n_boolean_regs;
+
+	/**
+	 * @n_flex_regs:
+	 *
+	 * Number of flex regs in &flex_regs_ptr.
+	 */
 	__u32 n_flex_regs;
 
-	/*
-	 * These fields are pointers to tuples of u32 values (register address,
-	 * value). For example the expected length of the buffer pointed by
-	 * mux_regs_ptr is (2 * sizeof(u32) * n_mux_regs).
+	/**
+	 * @mux_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_mux_regs).
 	 */
 	__u64 mux_regs_ptr;
+
+	/**
+	 * @boolean_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_boolean_regs).
+	 */
 	__u64 boolean_regs_ptr;
+
+	/**
+	 * @flex_regs_ptr:
+	 *
+	 * Pointer to tuples of u32 values (register address, value) for mux
+	 * registers.  Expected length of buffer is (2 * sizeof(u32) *
+	 * &n_flex_regs).
+	 */
 	__u64 flex_regs_ptr;
 };
 
@@ -3001,52 +3042,67 @@ struct drm_i915_query_engine_info {
 	struct drm_i915_engine_info engines[];
 };
 
-/*
- * Data written by the kernel with query DRM_I915_QUERY_PERF_CONFIG.
+/**
+ * struct drm_i915_query_perf_config
+ *
+ * Data written by the kernel with query %DRM_I915_QUERY_PERF_CONFIG.
  */
 struct drm_i915_query_perf_config {
 	union {
-		/*
-		 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_LIST, i915 sets
-		 * this fields to the number of configurations available.
+		/**
+		 * @n_configs:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_LIST, i915 sets this fields to
+		 * the number of configurations available.
 		 */
 		__u64 n_configs;
 
-		/*
-		 * When query_id == DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID,
-		 * i915 will use the value in this field as configuration
-		 * identifier to decide what data to write into config_ptr.
+		/**
+		 * @config:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_ID, i915 will use the
+		 * value in this field as configuration identifier to decide
+		 * what data to write into config_ptr.
 		 */
 		__u64 config;
 
-		/*
-		 * When query_id == DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID,
-		 * i915 will use the value in this field as configuration
-		 * identifier to decide what data to write into config_ptr.
+		/**
+		 * @uuid:
+		 *
+		 * When &drm_i915_query_item.flags ==
+		 * %DRM_I915_QUERY_PERF_CONFIG_DATA_FOR_UUID, i915 will use the
+		 * value in this field as configuration identifier to decide
+		 * what data to write into config_ptr.
 		 *
 		 * String formatted like "%08x-%04x-%04x-%04x-%012x"
 		 */
 		char uuid[36];
 	};
 
-	/*
+	/**
+	 * @flags:
+	 *
 	 * Unused for now. Must be cleared to zero.
 	 */
 	__u32 flags;
 
-	/*
-	 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_LIST, i915 will
-	 * write an array of __u64 of configuration identifiers.
+	/**
+	 * @data:
+	 *
+	 * When &drm_i915_query_item.flags == %DRM_I915_QUERY_PERF_CONFIG_LIST,
+	 * i915 will write an array of __u64 of configuration identifiers.
 	 *
-	 * When query_item.flags == DRM_I915_QUERY_PERF_CONFIG_DATA, i915 will
-	 * write a struct drm_i915_perf_oa_config. If the following fields of
-	 * drm_i915_perf_oa_config are set not set to 0, i915 will write into
-	 * the associated pointers the values of submitted when the
+	 * When &drm_i915_query_item.flags == %DRM_I915_QUERY_PERF_CONFIG_DATA,
+	 * i915 will write a struct drm_i915_perf_oa_config. If the following
+	 * fields of struct drm_i915_perf_oa_config are not set to 0, i915 will
+	 * write into the associated pointers the values of submitted when the
 	 * configuration was created :
 	 *
-	 *         - n_mux_regs
-	 *         - n_boolean_regs
-	 *         - n_flex_regs
+	 *  - &drm_i915_perf_oa_config.n_mux_regs
+	 *  - &drm_i915_perf_oa_config.n_boolean_regs
+	 *  - &drm_i915_perf_oa_config.n_flex_regs
 	 */
 	__u8 data[];
 };
-- 
2.34.1

