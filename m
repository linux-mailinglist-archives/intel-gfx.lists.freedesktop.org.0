Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A00B51AD87
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 21:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C6610E931;
	Wed,  4 May 2022 19:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C921610E8BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 19:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651691246; x=1683227246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YLsTdx5jli23bQ+USQRTjy7aFIonqiAIzdDeHLQAU80=;
 b=XdUmqD9g5BP8HkGzUr2Iax4jQe72bd+K1t5gZAho13v58yUPM1SXo4pr
 YkBUic/TlpmNgibUW/somELe2xtA1usjjLdnaZOubRb90Cw77csuATPIP
 XqafHQHbNmRG/TuOvMf/xZkTxrfFJ58MW+LYqSEDQ7CNtZ7q6CNokWv3i
 26QxGlFFB8oAMF3VaIIM5E+2/HH+7x3QYa7JL5FC5PInhHWbOcD1fMNUW
 X/WbE00yq81gblQDzHQrt2LkLweCWvOt/oytlBW8eYk0vF0UvR9qDo5xk
 wdm2HhWFlGubLmMLW8dCJs2AsrOpHrM3876/HTDSFZ/AFXBK3jN66B8NO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="249854501"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="249854501"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="517162864"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.139])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 12:07:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 12:07:54 -0700
Message-Id: <20220504190756.466270-10-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504190756.466270-1-jose.souza@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Drop has_psr from device info
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
as all platforms with display version 9 or newer has this feature.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6b8a4e6649d9b..d8fa1d09cc828 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1303,7 +1303,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 					  IS_BROADWELL(dev_priv))
 #define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-#define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
+#define HAS_PSR(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d8b5e972109f9..098d47cc47b44 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -631,7 +631,6 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.display.has_hdcp = 1, \
-	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.dbuf.slice_mask = BIT(DBUF_S1)
@@ -680,7 +679,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
-	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
 	.display.has_dmc = 1, \
@@ -928,7 +926,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
-	.display.has_psr = 1,							\
 	.display.ver = 13,							\
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.pipe_offsets = {							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index c4e85976d8948..5c17257f3f44b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -174,7 +174,6 @@ enum intel_ppgtt_type {
 	func(has_hti); \
 	func(has_modular_fia); \
 	func(has_overlay); \
-	func(has_psr); \
 	func(has_psr_hw_tracking); \
 	func(overlay_needs_physical); \
 	func(supports_tv);
-- 
2.36.0

