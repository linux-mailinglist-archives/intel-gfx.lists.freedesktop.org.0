Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E73F551C943
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E556C10E897;
	Thu,  5 May 2022 19:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B54C10E775
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779282; x=1683315282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QQ1m96K81HWmmIDMEDXrsUnC68Y+lsvdBk2l29CjSjw=;
 b=GDtQGJRvZy8rOIxOIPb+UdRB9eM1N1i9Myhyxk0JFq4Gf+wGCnQIkFkP
 N7LoU3rBdqvUTYQ2kMOFfNq3CkP3iWPp/Hh64r/qoeYsGdjdveXFpNwan
 vTq+4YLUE+6TvdDdV3pu0Atzuy3d8+ouqcvvXtU4Qd69SZOeZvIrEJC0t
 hRZM79ByCEe886Hm5UkckCAr+aE6eH4xkx1YjZOHORMZT91FmlD8t9fRB
 HfO573nMT5n+GN3lKrvE0sd7Lxg766nH/p6kgGy5Bt/XauUOGGuDu/xEC
 LNrTRC9cJAzjLE7gGYXqVL1kXegkHbJEaSclIiUaiYsJvoe7sWyufF1US g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823119"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823119"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116662"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:19 -0700
Message-Id: <20220505193524.276400-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 2/7] drm/i915: Drop has_rc6 from device info
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
as all platforms with graphics version 6 or newer have software
support for this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
 drivers/gpu/drm/i915/i915_pci.c          | 8 --------
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index af3967149b2d2..806bd6328383b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1307,7 +1307,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
-#define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
+/* ilk does support rc6, but we do not implement [power] contexts */
+#define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
 #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
 #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6d4e2c4292f3b..e21d08375b25d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -376,8 +376,6 @@ static const struct intel_device_info gm45_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_snoop = true, \
 	.has_coherent_ggtt = true, \
-	/* ilk does support rc6, but we do not implement [power] contexts */ \
-	.has_rc6 = 0, \
 	.dma_mask_size = 36, \
 	I9XX_PIPE_OFFSETS, \
 	I9XX_CURSOR_OFFSETS, \
@@ -407,7 +405,6 @@ static const struct intel_device_info ilk_m_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
-	.has_rc6 = 1, \
 	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
@@ -458,7 +455,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
-	.has_rc6 = 1, \
 	.has_rc6p = 1, \
 	.has_reset_engine = true, \
 	.has_rps = true, \
@@ -518,7 +514,6 @@ static const struct intel_device_info vlv_info = {
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
-	.has_rc6 = 1,
 	.has_reset_engine = true,
 	.has_rps = true,
 	.display.has_gmch = 1,
@@ -617,7 +612,6 @@ static const struct intel_device_info chv_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
 	.has_64bit_reloc = 1,
 	.has_runtime_pm = 1,
-	.has_rc6 = 1,
 	.has_rps = true,
 	.has_logical_ring_contexts = 1,
 	.display.has_gmch = 1,
@@ -700,7 +694,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
-	.has_rc6 = 1, \
 	.has_rps = true, \
 	.display.has_dp_mst = 1, \
 	.has_logical_ring_contexts = 1, \
@@ -1010,7 +1003,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_logical_ring_contexts = 1, \
 	.has_logical_ring_elsq = 1, \
 	.has_mslices = 1, \
-	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
 	.has_runtime_pm = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index dcc8c63ae6ed4..ab283d88461e0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -156,7 +156,6 @@ enum intel_ppgtt_type {
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-	func(has_rc6); \
 	func(has_rc6p); \
 	func(has_rps); \
 	func(has_runtime_pm); \
-- 
2.36.0

