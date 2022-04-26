Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C2550ED88
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 02:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4005A10EEF3;
	Tue, 26 Apr 2022 00:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D6D10EF3E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 00:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650932465; x=1682468465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pOM1uYJcdvtDDyraRM5noF712bCT2SKFI35EMarnDV8=;
 b=X6ZW9o4+37gnHaj1x3hYNIhShTIguYxPZnhgiur3ZaFx/4CB1N7ChZd0
 wfOgHJLe/uKjSw3gilDhL4jFDhHnJn9doHUl+Gu1TGi89AZTtKlBVScHH
 5BHkuC18MS5PGOpULWGXukUKVu22qsecJavrB3WKf2EOUxfg+8BxQVuN6
 VoeQyhvA3E7V1MfXSbe5hNVR2Vp+EaY4IDth2oLmIxs0oSuLvzA80cex2
 8zrINiQpvqDUdcSJxweCZV62VjfYBZeX5z54XPLX5Sq2fKIrWByAqxHUx
 0/tv4dUFI1bIUGFbfaq0vH53cNpEQ/19pve1WXhWSrRvKdNAVH3GRx+SY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="262997457"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="262997457"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:21:04 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="564318292"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 17:21:04 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Apr 2022 17:20:55 -0700
Message-Id: <60341b1630544c86a4aa31cbbf15a83e8f469219.1650931855.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650931855.git.ashutosh.dixit@intel.com>
References: <cover.1650931855.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Introduce has_media_ratio_mode
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Media ratio mode (the ability for media IP to work at a different frequency
from the GT) is available for a subset of dGfx platforms supporting
GuC/SLPC. Introduce 'has_media_ratio_mode' flag in intel_device_info to
identify these platforms and set it for XEHPSDV and DG2/ATS-M.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 24111bf42ce0..96625eabb244 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1227,6 +1227,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CCS_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
+#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
+
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b60492826478..3ea1e11cc2a7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1033,6 +1033,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.display = { },
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
+	.has_media_ratio_mode = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1053,6 +1054,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
+	.has_media_ratio_mode = 1, \
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 20c351c8d5bd..2bd67b3457f1 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -153,6 +153,7 @@ enum intel_ppgtt_type {
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
+	func(has_media_ratio_mode); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.34.1

