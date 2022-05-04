Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEA251AD89
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF9310E91A;
	Wed,  4 May 2022 19:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F8B510E91A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691248; x=1683227248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M2Bsm++rY4QqyA/Ena1ZOQLq2bl5nnG1I1Gs1AAg5Fs=;
 b=ekZiBxYWJiGfO21xOyScbFLoWOuXxE5O2eYvNzGbD8m9ll7gVlXJjRKO
 NQ5gNr3QCmEhsTg2+ZjV6nhPlwxBM/fZGAEqhQHP+tGp90gcntKFzfvY/
 Ag3h4xjPk6NfSSVB/3EG5UrKNu0vOYHJxW394azEi/FkjWBjswSQpxb8p
 Lq9aCtuRvcpVd8J0Wgv9OEZEox+LoWntoK0mkk+TApm4SArbCJSq+p3vF
 WoxnQ+8CZQEG6ZrOYEK1HEouLIsmmTVBHuaQz+qPF3dwLtAgftGpLm/QE
 cq30M/xkmCowZmPSQBPLoGg1cucGBJNZiMtVsvQDG8xUX/7m8ptMO5kCE A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854504"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854504"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162871"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:26 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:55 -0700
Message-Id: <20220504190756.466270-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/12] drm/i915: Drop has_psr_hw_tracking from
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No need to have this parameter in intel_device_info struct
as this feature was only supported by display 9, display 11, tigerlake
and DG1, no newer platform will have this feature.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 6 ++++--
 drivers/gpu/drm/i915/i915_pci.c          | 5 -----
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d8fa1d09cc828..d866287c663a2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1304,8 +1304,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
-#define HAS_PSR_HW_TRACKING(dev_priv) \
-	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
+#define HAS_PSR_HW_TRACKING(dev_priv)	 ((DISPLAY_VER(dev_priv) >= 9 && \
+					   DISPLAY_VER(dev_priv) <= 11) || \
+					  IS_TIGERLAKE(dev_priv) || \
+					  IS_DG1(dev_priv))
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 098d47cc47b44..c6e99305e24d0 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -631,7 +631,6 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.display.has_hdcp = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.dbuf.slice_mask = BIT(DBUF_S1)
 
@@ -679,7 +678,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
-	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
 	.has_rps = true, \
@@ -865,7 +863,6 @@ static const struct intel_device_info rkl_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
@@ -897,7 +894,6 @@ static const struct intel_device_info adl_s_info = {
 	PLATFORM(INTEL_ALDERLAKE_S),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
@@ -955,7 +951,6 @@ static const struct intel_device_info adl_p_info = {
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
-	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.ppgtt_size = 48,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 5c17257f3f44b..bea9f92e2264c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -174,7 +174,6 @@ enum intel_ppgtt_type {
 	func(has_hti); \
 	func(has_modular_fia); \
 	func(has_overlay); \
-	func(has_psr_hw_tracking); \
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
-- 
2.36.0

