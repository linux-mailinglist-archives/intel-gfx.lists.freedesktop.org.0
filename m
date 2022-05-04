Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959E51AD88
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6E1E10E8BF;
	Wed,  4 May 2022 19:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C1F410E857
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691245; x=1683227245;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9/7urEOe9hj5X46e6wsSWw+RdGH5Tat3BBofopYwGfs=;
 b=k4TmS4ruHg2Hf+rGdMLEgsEQ5W5UD4IIEVLWvGFVHURDVXLBt3lUP4CD
 RbOQmm3H23wBmFWA8Mv/PO3NoulUfNMhGss0ilM7w/RGdaOg1Ct7NR6L0
 bcRw5ZoORNE/pNSeSSTK6wuKb9Hn0cxfezDtnHzXJN/yb/Og8XjdSdyXs
 KaooFj0lv7yd1xn+RS+C62q92cyl4/kpNpygQjzoLpK8TzqxSeu8mmyka
 90oRg6MnewP4zsBnn/EKtuvZiXDMqdFBX4VoXEeKvomgyac4pWMm3UOC5
 KcAfFXuKRpcbHX6xnFNTRazqQdwGs1CE7N+zfk9FDBwqJY4af1AxGIeB/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854499"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854499"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:25 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162855"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:53 -0700
Message-Id: <20220504190756.466270-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Drop has_dp_mst from device info
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

No need to have this parameter in intel_device_info struct
as the requirement to support it is the DDI support.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a354815445238..6b8a4e6649d9b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1295,13 +1295,13 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
-#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
 
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
 					  IS_HASWELL(dev_priv) || \
 					  IS_BROADWELL(dev_priv))
+#define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 96270c0ddf06c..d8b5e972109f9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -534,7 +534,6 @@ static const struct intel_device_info vlv_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_fpga_dbg = 1, \
-	.display.has_dp_mst = 1, \
 	HSW_PIPE_OFFSETS, \
 	.has_runtime_pm = 1
 
@@ -686,7 +685,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
-	.display.has_dp_mst = 1, \
 	.has_logical_ring_contexts = 1, \
 	.dma_mask_size = 39, \
 	.ppgtt_type = INTEL_PPGTT_FULL, \
@@ -925,7 +923,6 @@ static const struct intel_device_info adl_s_info = {
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
 	.display.has_dmc = 1,							\
-	.display.has_dp_mst = 1,						\
 	.display.has_dsc = 1,							\
 	.display.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d809d44098c63..c4e85976d8948 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -166,7 +166,6 @@ enum intel_ppgtt_type {
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
 	func(has_dmc); \
-	func(has_dp_mst); \
 	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
-- 
2.36.0

