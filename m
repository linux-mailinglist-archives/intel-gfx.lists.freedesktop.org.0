Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0B351AD83
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A66110E7CF;
	Wed,  4 May 2022 19:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FFED10E77B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691240; x=1683227240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JxS/VPXz5MoOGj8XbNAuHM315Xk9EoFWpBx7duN7CUY=;
 b=g/liYE5QTLKFGZfI1maBjzWfNUv8d42GEfJos6Zr523dAUluMX/n9Z8f
 lmTB2cF7fBRYGIZsbsYOaasNCb7HztgudOPVn9nRrZVejSIvu7rcGykvE
 QjxSMu/VN8QHKXVi4WtmaTuUI9VKiBHcbEOkLJmFmKP69WskNq1rOYalv
 uEh89gD04yOtqq+lg1izNTIUEAMnaH7tZA3+S9AnJer2cvWDz0lfrbQQn
 f7UtF3dnRrDEpravd3Z5LgxaA6s4ZZ3Zo16xBP4GLNPP5gSTWVEXrvyaE
 ETDeAx+6fiTrHqODNHxE+JnLYym4MWQ2aLlYLnEqB1iDA4Jwhg+Is2KLC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854481"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854481"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162833"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:19 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:49 -0700
Message-Id: <20220504190756.466270-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Drop has_rc6p from device info
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
as it was only supported in graphics version 6 and 7 not including
haswell.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d29dca83185ac..602e056edd314 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1310,7 +1310,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* ilk does support rc6, but we do not implement [power] contexts */
 #define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
-#define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
+#define HAS_RC6p(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6 && \
+					  GRAPHICS_VER(dev_priv) <= 7 && \
+					  !IS_HASWELL(dev_priv))
 #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
 
 #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 90584c462f225..516f28d4db611 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -405,7 +405,6 @@ static const struct intel_device_info ilk_m_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
-	.has_rc6p = 1, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
 	.ppgtt_type = INTEL_PPGTT_ALIASING, \
@@ -455,7 +454,6 @@ static const struct intel_device_info snb_m_gt2_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
 	.has_coherent_ggtt = true, \
 	.has_llc = 1, \
-	.has_rc6p = 1, \
 	.has_reset_engine = true, \
 	.has_rps = true, \
 	.dma_mask_size = 40, \
@@ -540,7 +538,6 @@ static const struct intel_device_info vlv_info = {
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.has_dp_mst = 1, \
-	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
 	.has_runtime_pm = 1
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b3244170c4638..599cb265946b8 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -156,7 +156,6 @@ enum intel_ppgtt_type {
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-	func(has_rc6p); \
 	func(has_rps); \
 	func(has_runtime_pm); \
 	func(has_snoop); \
-- 
2.36.0

