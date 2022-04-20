Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EF7508084
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 07:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5480210F175;
	Wed, 20 Apr 2022 05:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8814B10F16E
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 05:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650432112; x=1681968112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TsAWy6BdX5Z0G/JczrYWZXC2q9936RGMJvxPW/E4e3c=;
 b=Eblt4qaOyi2pf3420mULw3caofvtC74BbSQzsTqLqVMa+0UkKerMoCwt
 hEYcW8E+6pN/r/lbKXtaFWrXoTNmFlD3RO6XAr7yWQdtkVfZtafXU+nFz
 A2HvETrJfVxJdZQpPVCJ/zG06wAIwsgGXH0v9YV8TJKjUF8UdmyatqxN9
 gYyEdSPwwhVSymqvWHA6YJmqA5s0i5jDTzoqqiLoq6N0AjISCIV4Sm7Fx
 9mFoN/XutbC4mL+UVfr5LOaBWVz6cwJthTb96drmVIftMNW3GDJvCcx8B
 W6guRfBGgf6pce5hU55K/KynaZUXtlEknYm6GyOZbecgcMamIwUw721Jx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263405520"
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="263405520"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,274,1643702400"; d="scan'208";a="555035714"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 22:21:51 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Apr 2022 22:21:25 -0700
Message-Id: <9432557dbc4629191884f5e85d6c8be92c2cc9e5.1650430271.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1650430271.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Introduce has_media_ratio_mode
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
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index edc1f45f4161..8ad321775e5a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1224,6 +1224,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CCS_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
+#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
+
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 09e115cdbd31..fe50e6286a36 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1032,6 +1032,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.display = { },
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
+	.has_media_ratio_mode = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1051,6 +1052,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_64k_pages = 1, \
 	.has_guc_deprivilege = 1, \
 	.needs_compact_pt = 1, \
+	.has_media_ratio_mode = 1, \
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 4053efaa55da..eb3a37808e1d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -151,6 +151,7 @@ enum intel_ppgtt_type {
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
+	func(has_media_ratio_mode); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.34.1

