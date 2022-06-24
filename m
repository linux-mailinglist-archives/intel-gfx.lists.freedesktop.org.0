Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AEA559DE9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF6010E6FA;
	Fri, 24 Jun 2022 16:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4DF10E341
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086400; x=1687622400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IXzjNzDg9BSVMmKsKwb+Hbde3/IATqJ4twpfTpI1FIk=;
 b=bR3UzH03simOVRuhAm0IjjZTcGkHassrR1zmgWnLNMt54oX+L3tPLsrv
 odRvPpMOnDyAMWQUPdF9iV+nm5SzWCyytbZBHhJO9mKvQmauhXkg9sG/4
 uRAuglzXxC8kjgDloKgtnjOAb6jwvDXZd/63QR+YOmA9ZmruyhMRJba2z
 tvtlhmEoBqsVvZRuv/5dyZFUGjWnJV7WQ+SlPmvvaSCjdtwNNCqWbo2PB
 Hh9x/xEHUc2Yh3DfTfCAgClKDoMGZLd9KXfkq86x6t5suReSYQaso1jFS
 WeINb+fiC42WsQBR2i+roGeMhDMOv+TzIg/s68ZwJLyTmBT2b95zKEowY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762317"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762317"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170277"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:52 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:18 +0530
Message-Id: <20220624155922.7435-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/9] drm/i915/dgfx: Add has_lmem_sr
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add has_lmem_sr platform specific flag to know,
whether platform has VRAM self refresh support.
As of now both DG1 and DG2 client platforms supports VRAM self refresh
with D3Cold but let it enable first on DG2 as primary lead platform
for D3Cold support. Let it get enable on DG1 once this feature
is stable.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 1 +
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a68777948db9..80de5b2eaf53 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1301,6 +1301,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
+#define HAS_LMEM_SR(i915) (INTEL_INFO(i915)->has_lmem_sr)
 
 /*
  * Platform has the dedicated compression control state for each lmem surfaces
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5e51fc29bb8b..04aad54033dd 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -917,6 +917,7 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
+	.has_lmem_sr = 0,
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.platform_engine_mask =
@@ -1074,6 +1075,7 @@ static const struct intel_device_info xehpsdv_info = {
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
+	.has_lmem_sr = 1,
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	.require_force_probe = 1,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 6c9564429509..0b2dde67b8f8 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -155,6 +155,7 @@ enum intel_ppgtt_type {
 	func(has_l3_ccs_read); \
 	func(has_l3_dpf); \
 	func(has_llc); \
+	func(has_lmem_sr); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
 	func(has_media_ratio_mode); \
-- 
2.26.2

