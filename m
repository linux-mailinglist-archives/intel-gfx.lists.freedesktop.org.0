Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C20B5242BA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 04:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B7C910FFF0;
	Thu, 12 May 2022 02:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A67A010FF37
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 02:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652322752; x=1683858752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ki6X6fIvPolvLmS1HXEawNlaveaS76TSkM+R7m1RVsA=;
 b=hAU088atmcSwy6Z3xbHQ6q0lAYI6Ri6Fu4H0ThppTz04LhPparOk16ci
 hkLcvs4WiHdJID+/b5U4gmoWmlg9ZAoB9KaX+pYPPiBE0blTUUgj3cArs
 rFF1aivC5w8Zh+DH1QywwmKZJRHwZ7/ZTEkUqQpi/IHqm0lJ3GyjLF4Hu
 G2XRAXqaGox7TrBX4CnASI6GNP0jaJ/aMNjPToNDoTzxdb02m/vxhipP8
 bDrAG+qf0+yTWxFABzuKrvVzGc6hJTZTIayBFtM3jv4zqxwPTyUV7x7aa
 BgHrBCrhQqjTrajMBCx/ju+UCjX3sMCxBePC09S5Ks1Q+afzsy3s2myI3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269540410"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="269540410"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="739484188"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 19:32:30 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 19:32:14 -0700
Message-Id: <3f43f5477456e538573a5f6f36dd7fabcb1b13cc.1652320806.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1652320806.git.ashutosh.dixit@intel.com>
References: <cover.1652320806.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Introduce has_media_ratio_mode
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

Media ratio mode (the ability for media IP to work at a different frequency
from the GT) is available for a subset of dGfx platforms supporting
GuC/SLPC. Introduce 'has_media_ratio_mode' flag in intel_device_info to
identify these platforms and set it for XEHPSDV and DG2/ATS-M.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 10f273800645..3897dcb5d68d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1230,6 +1230,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CCS_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
+#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
+
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d8d893bafa51..6e309595b1e7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1006,6 +1006,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.display = { },
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
+	.has_media_ratio_mode = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1027,6 +1028,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
+	.has_media_ratio_mode = 1, \
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 60fc35ae81df..ebfaa6bcd508 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -152,6 +152,7 @@ enum intel_ppgtt_type {
 	func(has_l3_dpf); \
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
+	func(has_media_ratio_mode); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.34.1

