Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE3951E76F
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF1C112770;
	Sat,  7 May 2022 13:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03F9112769
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930146; x=1683466146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5jF25kxuMnLuaMJ+oBZwjRJK6wlaQYKKd/0TQAYfPvs=;
 b=Sfrrf+vA7mWQKb4N2lzeoQt32IHPagOjpDQ3/HmD9XOyOnckSHbuHLt0
 j7Y1/MuPdQlXaVvNoRsHKNNEkix+C2SOwJ4fvx9uQXR3L4posWVpnfGSg
 2CwlbnKB1pvh/dZhID9vYzjkVbfrR+Yrg8HxgYQul74tb9yrhXDNvOViY
 FYdiXtb0LvLG3Ri8D8RgNnZKuGPSX2dvGktRFxSExuhXyjMALu8PjIX2J
 VcZcApv0NAr3oaVqCIVT2Q62rcg4Y5ANsbkUuITUcKeWCSOMuJE6XGmaT
 tZqbfg/Hbb/DSkKgUKZYLOTDR7N7ElbY3jNc08Bc1etqW+eaiPst8V0wy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334260"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292959"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:05 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:39 -0700
Message-Id: <20220507132850.10272-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/16] drm/i915: Drop has_psr_hw_tracking from
 device info
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No need to have this parameter in intel_device_info struct
as this feature was only supported by display 9, 10 and 11, tigerlake
and DG1, no newer platforms will have this feature.

While at it also moving it to intel_psr.c as this is the only place
were it is used.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

v2:
- moved macro to intel_psr.c

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
 drivers/gpu/drm/i915/i915_drv.h          | 2 --
 drivers/gpu/drm/i915/i915_pci.c          | 5 -----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749f..9521360440748 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -84,6 +84,11 @@
  * use page flips.
  */
 
+#define HAS_PSR_HW_TRACKING(dev_priv) ((DISPLAY_VER(dev_priv) >= 9 && \
+					DISPLAY_VER(dev_priv) <= 11) || \
+					IS_TIGERLAKE(dev_priv) || \
+					IS_DG1(dev_priv))
+
 static bool psr_global_enabled(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 27dccddfadd84..98160fe2bc074 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1308,8 +1308,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
-#define HAS_PSR_HW_TRACKING(dev_priv) \
-	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 41bcc692e54c7..00c61e3b49c97 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -629,7 +629,6 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.display.has_hdcp = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.dbuf.slice_mask = BIT(DBUF_S1)
 
@@ -677,7 +676,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
@@ -863,7 +861,6 @@ static const struct intel_device_info rkl_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
@@ -894,7 +891,6 @@ static const struct intel_device_info adl_s_info = {
 	PLATFORM(INTEL_ALDERLAKE_S),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
@@ -952,7 +948,6 @@ static const struct intel_device_info adl_p_info = {
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.ppgtt_size = 48,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 5bc866de9b17c..5a39e42029877 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,7 +173,6 @@ enum intel_ppgtt_type {
 	func(has_hti); \
 	func(has_modular_fia); \
 	func(has_overlay); \
-	func(has_psr_hw_tracking); \
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
-- 
2.36.0

