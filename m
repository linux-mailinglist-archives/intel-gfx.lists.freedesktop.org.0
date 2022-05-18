Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8580C52BB55
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F4910EE5D;
	Wed, 18 May 2022 13:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079A810EE5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879272; x=1684415272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QgmF85vseYXmTS8Yd08fZ57uDk7shmgUQ3D34D6a1sk=;
 b=niAEe22AHGvaolHcZV5SlB64zpe29A2axomgnEabPJmsZ8XN2i6GL5LY
 s0gkDPYOTXgZqNkQ9+77ecrvp9+ANLz8ttYUizEWnzyM7e9C7BN6Wamd/
 jbbDak2sO/2LI+C4L+oyRMaqrZO0AZfbJGDQK4XQk4Joe14jGs7W4e2pZ
 ZE1Ka+NmT0CD94YYIdYulIBE7+neMn/8cOhHCt6GFxrqbtM9NYtjYxdrE
 DlCfTKEdmR7V1hqYgf6s8Kynx+aa8G1cYt3XH/9MbZjSI6WaduTlEtHzV
 hEuyjSgNdkCesRpN59LjCSAA2+iyicgSAJ/VAyTCEQdgbcIQvhYNg2+T+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071741"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071741"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314303"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:13 +0530
Message-Id: <20220518130716.10936-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/dgfx: Add has_lmem_sr
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
index c5ecc490dced..42463dc2979f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1360,6 +1360,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
+#define HAS_LMEM_SR(i915) (INTEL_INFO(i915)->has_lmem_sr)
 
 /*
  * Platform has the dedicated compression control state for each lmem surfaces
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d8d893bafa51..3347e3cce0a8 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -889,6 +889,7 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
+	.has_lmem_sr = 0,
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.platform_engine_mask =
@@ -1036,6 +1037,7 @@ static const struct intel_device_info xehpsdv_info = {
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
+	.has_lmem_sr = 1,
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	.require_force_probe = 1,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 60fc35ae81df..44bd993ef7fb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -151,6 +151,7 @@ enum intel_ppgtt_type {
 	func(has_l3_ccs_read); \
 	func(has_l3_dpf); \
 	func(has_llc); \
+	func(has_lmem_sr); \
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
-- 
2.26.2

