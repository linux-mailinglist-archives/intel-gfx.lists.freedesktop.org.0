Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 127B351E76C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A30C10EC22;
	Sat,  7 May 2022 13:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB10C10E529
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930141; x=1683466141;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DBGHQfLx6vZf/qlzkM5MJHa7vXGEBK4VcLJgRbcPHT0=;
 b=UMWiEDEoCIWGOlGRvXxXB1mrh+COF0cmOvQBgnqW58+CUxGBscsjOyj9
 6DMdccGechBEcXWuykOhxt9ps8/1bgYAgzEKlt9JUqvOTn6XvXtSKdnWt
 FW+ZdvH/8wZK30evQeQ/Xxn/0fl4RoKGYQAYEnzx9cL4TY7Ya7zUryC/g
 VGui7GKlhkktRqx1aolyZgx3F9OCiqy/HWBbvIusDg5ux4VmofqY5eDFy
 uKlJOs5IXJbFdvgSn3Uk2VXHbm2keP3HPzi932aXyPmwoEqBFXw6cpezj
 Bae+sHQIVKw33xotwVSoUU5QHD3L55TFG8c3fNYR2j9Cano9Ut21JiDdn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334253"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334253"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292944"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:00 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:36 -0700
Message-Id: <20220507132850.10272-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/16] drm/i915: Drop has_ipc from device info
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
as all platforms with display version 9 or newer supports this
feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

v2:
- making this available to all platforms 9 and newer

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 3 ---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fd5269845e9ad..8d00d24e16dc5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1350,7 +1350,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
 
-#define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
+#define HAS_IPC(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 30a32a5d0e3c9..8a7f7aad1a5d2 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -632,7 +632,6 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.display.has_hdcp = 1, \
-	.display.has_ipc = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.dbuf.size = 896 - 4, /* 4 blocks for bypass path allocation */ \
 	.dbuf.slice_mask = BIT(DBUF_S1)
@@ -691,7 +690,6 @@ static const struct intel_device_info skl_gt4_info = {
 	.ppgtt_size = 48, \
 	.has_snoop = true, \
 	.has_coherent_ggtt = false, \
-	.display.has_ipc = 1, \
 	HSW_PIPE_OFFSETS, \
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
@@ -930,7 +928,6 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_fpga_dbg = 1,						\
 	.display.has_hdcp = 1,							\
 	.display.has_hotplug = 1,						\
-	.display.has_ipc = 1,							\
 	.display.ver = 13,							\
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.pipe_offsets = {							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e8d53c7a1bd83..f614f29267273 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -173,7 +173,6 @@ enum intel_ppgtt_type {
 	func(has_hdcp); \
 	func(has_hotplug); \
 	func(has_hti); \
-	func(has_ipc); \
 	func(has_modular_fia); \
 	func(has_overlay); \
 	func(has_psr_hw_tracking); \
-- 
2.36.0

