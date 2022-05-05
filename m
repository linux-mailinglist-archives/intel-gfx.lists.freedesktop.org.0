Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B1A51C946
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 21:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0451710EEFA;
	Thu,  5 May 2022 19:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3100A10EEFA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 19:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651779286; x=1683315286;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=efkgSh+9vSYDS+2DTStwZVlMHikSdx+Mp2r+8QDQTAY=;
 b=Qc22KK+et0/C6/qrKGUhf4rZu6oYR8JYoOZipQj3oLbhcxWyU2g+Tfac
 p6h18KmhtvKwVqIqhnjHVFMs2VYCSlUDbebIolqYgRCdBQkKdYU3LTUQM
 irgu77NGAOnKaF/rlGXMEqiT87gUcwtxYETyhuAsWKkwN54/fncE41SdV
 ZvhRrbYyYPbD2E3Ej8uJoxm6bSK2PCjmaVCJVdMZrADlfYMPRe98ZjNUT
 +cgoOXgOL4zRhPGqzhdzRsZKT57lA/S26+uXY4qhY9QBTyAnjld0KwMc8
 ZcdmepbVVjviPBQLdpuTjMNUna+rPSFwbl69tNV/MNR06MBfugUZj17pI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="265823131"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="265823131"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:46 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="665116685"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.139])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 12:34:44 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 May 2022 12:35:22 -0700
Message-Id: <20220505193524.276400-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220505193524.276400-1-jose.souza@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device info
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
as all platforms with display version 9 or newer, haswell or broadwell
supports it.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5538564bc1d25..600d8cee272da 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1298,7 +1298,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
 
 #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
-#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
+#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
+					  IS_BROADWELL(dev_priv) || \
+					  IS_HASWELL(dev_priv))
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 2dc0284629d30..a0693d9ff9cee 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -535,7 +535,6 @@ static const struct intel_device_info vlv_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
-	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
@@ -683,7 +682,6 @@ static const struct intel_device_info skl_gt4_info = {
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_64bit_reloc = 1, \
-	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.display.fbc_mask = BIT(INTEL_FBC_A), \
 	.display.has_hdcp = 1, \
@@ -932,7 +930,6 @@ static const struct intel_device_info adl_s_info = {
 	.dbuf.size = 4096,							\
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
 		BIT(DBUF_S4),							\
-	.display.has_ddi = 1,							\
 	.display.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bef65e3f02c55..bc71ce48763ad 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -167,7 +167,6 @@ enum intel_ppgtt_type {
 	func(cursor_needs_physical); \
 	func(has_cdclk_crawl); \
 	func(has_dmc); \
-	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
 	func(has_dsc); \
-- 
2.36.0

