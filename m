Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A2E51E778
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E11E113358;
	Sat,  7 May 2022 13:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A360C113355
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930160; x=1683466160;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P5EDW4svGoWdZrKFrKSAWx817CIGqs2mduz7PRDdJhg=;
 b=NdZ0U7vs6fHuPpMwfeoOC05EJ1e/pk4/ufQTt5UaHURe2RDTUawlSGo2
 H3wwugRYBLcvGdBfST1weG1opwkbMKx6bP/ln1tYYMmmx4sUufQJxRGp3
 zSRyAlI6ILMJES9SWzNQ5XmNo8IWSpdzrqfKhPxhkUGKqtiLc/ua3CHe4
 ABPZS7XfMSWFep2uIJBP99n+oMN0g2YR2QIGEkUV7EW92dkg2Nj3dpQYf
 fEEids5EtVpgQ3wFDIvqeH8v2el61D5aIxLK49V2sn+xYstkN4Dd4WYM5
 +xITb5zKWnCiy7Ub9UJCK8c+aOl/SX7A5JGsXPSrk3hSPhB4AcdnUfi0O w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334315"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334315"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564293015"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:19 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:50 -0700
Message-Id: <20220507132850.10272-16-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db from
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
as this feature is supported by Broadwell, Haswell all platforms with
display version 9 or newer.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4b1025dbaab2a..4a1edf48d37b9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1306,7 +1306,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 					  IS_BROADWELL(dev_priv) || \
 					  IS_HASWELL(dev_priv))
 #define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
-#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
+#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (DISPLAY_VER(dev_priv) >= 9 || \
+					  IS_BROADWELL(dev_priv) || \
+					  IS_HASWELL(dev_priv))
 #define HAS_PSR(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5a42acb162a15..6a5b70b3ea2d7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -523,7 +523,6 @@ static const struct intel_device_info vlv_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
-	.display.has_fpga_dbg = 1, \
 	HSW_PIPE_OFFSETS
 
 #define HSW_PLATFORM \
@@ -657,7 +656,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
-	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
 	.display.has_dmc = 1, \
@@ -894,7 +892,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dmc = 1,							\
 	.display.has_dsc = 1,							\
 	.display.fbc_mask = BIT(INTEL_FBC_A),					\
-	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
 	.display.ver = 13,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 7581ef4a68f94..e61a334b611ac 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -157,7 +157,6 @@ enum intel_ppgtt_type {
 	func(has_cdclk_crawl); \
 	func(has_dmc); \
 	func(has_dsc); \
-	func(has_fpga_dbg); \
 	func(has_gmch); \
 	func(has_hdcp); \
 	func(has_hotplug); \
-- 
2.36.0

