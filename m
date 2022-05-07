Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA4C51E774
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785F1113354;
	Sat,  7 May 2022 13:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6816711276E
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930154; x=1683466154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GCnC3YYmqcFtjbJniIo6qA3goB0+TH7fvrw48O3Cuzk=;
 b=SNrbaMgEAcmqFVwQ82xvyvBKE31GivgvkHGJhP4OdB9MEYMMx09XUO7A
 /d6GDVE/ygN0uDAUP1iXkidKYO6UTJ9eKH1tVVcpfPwiiMlgg/HODqN5T
 KSi4gjvgFM8mmVv00SuoVcovtN78reh8kRbm5amiFcIIh+bOH9TiyUfAq
 Bm8yAWxrs9DsGV2Rt624CWxIIJJjGpuqwQoC2RbEZZZZ+QHj9uNP6D+9C
 WWfQCA5r+/JMPzRjA/ezCsZB2jhQS5aizO3DsVFGOV6y/Q7TBmEb/eh3N
 TYASE+KBtIGHG4xBhdzvAT5gY1uAaLkJMAttiKr1TdwU6WdPMrox/ivx8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334292"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334292"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292988"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:45 -0700
Message-Id: <20220507132850.10272-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/16] drm/i915: Drop has_pxp from device info
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
as all integrated platforms with graphics version 12 or newer supports
this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 4 +---
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6daf4b82c131f..29e5017e64d70 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1368,7 +1368,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(GRAPHICS_VER(dev_priv) >= 12)
 
 #define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
-			    INTEL_INFO(dev_priv)->has_pxp) && \
+			    (!IS_DGFX(dev_priv) && GRAPHICS_VER(dev_priv) >= 12) && \
 			    VDBOX_MASK(to_gt(dev_priv)))
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 48cfb0ee56bf3..e8afaa0344134 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -834,8 +834,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET, \
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
-	TGL_CURSOR_OFFSETS, \
-	.has_pxp = 1
+	TGL_CURSOR_OFFSETS
 
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
@@ -859,7 +858,6 @@ static const struct intel_device_info rkl_info = {
 
 #define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
-	.has_pxp = 0, \
 	.has_snoop = 1, \
 	.is_dgfx = 1, \
 	.has_heci_gscfi = 1
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index a199031b5a6ec..edbd76aa31a9c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -148,7 +148,6 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_contexts); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
-	func(has_pxp); \
 	func(has_rps); \
 	func(has_runtime_pm); \
 	func(has_snoop); \
-- 
2.36.0

