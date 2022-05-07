Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 186F151E773
	for <lists+intel-gfx@lfdr.de>; Sat,  7 May 2022 15:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060A1112775;
	Sat,  7 May 2022 13:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF01112775
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 May 2022 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651930151; x=1683466151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yYiNnGP0Z8iCB4dTaNj3gP2K7S7fhqYIWjxioGCcuLk=;
 b=LBYQxxxkV9LQonvJsciYgJbWq1zm3gMBLA/8bUzZJ3O7sysu4p/hJ3V+
 uZc6T8wZ1+bMrJG24OhKmsnC5NuFIAfkVzeAgCbeUodCgWwmZy86AAYXT
 38evRmb/wDYfwlbRZNLtoBsXTNl9Gb6gaQfoy8FwwsRYbLVeljm2DYTnR
 ZUb4fe5lfX+1DBo8Kf/iKb6M8/XXq/hLHQCyJDEaSno3xvPfMsVB3fJ2R
 OjSsAIVuCqgEryg/OdQm+YOfwOvIqMmI6yDbcpGTXOrDiYXsAVJzJqiQT
 C/mmxKxTpwaADbBMZ1s9QTVTsZ0TxL+HmKGyZ/sSto4LHZpNWn+w9bFHJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10340"; a="268334288"
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="268334288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,207,1647327600"; d="scan'208";a="564292978"
Received: from henrypet-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.212.61.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2022 06:29:10 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 May 2022 06:28:43 -0700
Message-Id: <20220507132850.10272-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/16] drm/i915: Drop has_global_mocs from
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
as all platforms with graphics version 12 or newer has this feature.

As a side effect of the of removal this flag, it will not be printed
in dmesg during driver load anymore and developers will have to rely
on to check the macro and compare with platform being used and IP
versions of it.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 2 --
 drivers/gpu/drm/i915/intel_device_info.h | 1 -
 3 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1552a44a1fafe..cf896cbf107e5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1365,7 +1365,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
 
-#define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
+#define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(GRAPHICS_VER(dev_priv) >= 12)
 
 #define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
 			    INTEL_INFO(dev_priv)->has_pxp) && \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 0e326b5ccf10f..e03c640ff05d5 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -835,7 +835,6 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
-	.has_global_mocs = 1, \
 	.has_pxp = 1
 
 static const struct intel_device_info tgl_info = {
@@ -960,7 +959,6 @@ static const struct intel_device_info adl_p_info = {
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
 	.has_flat_ccs = 1, \
-	.has_global_mocs = 1, \
 	.has_logical_ring_contexts = 1, \
 	.has_mslices = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e0b9a7547acc2..bf192b9498d4b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -142,7 +142,6 @@ enum intel_ppgtt_type {
 	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
 	func(has_flat_ccs); \
-	func(has_global_mocs); \
 	func(has_heci_pxp); \
 	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
-- 
2.36.0

