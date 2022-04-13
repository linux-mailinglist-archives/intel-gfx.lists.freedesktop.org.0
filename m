Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDCF4FFD90
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 20:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA9510E205;
	Wed, 13 Apr 2022 18:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E36110E19F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 18:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873478; x=1681409478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4IsB1ZlCcum/pDXrZE8Fx+3ff3Y4XsMhSZ/am1lGC3g=;
 b=ZrfhJQaR7oMQW2oUIdG/QW5yFv/YA+0hnic6KcQyl2+kJwaAIC+jdLTT
 XSlj/p3mKOWiA4GSpEJkgYr41gGHMZnVjpxeuFP1lx7/UkEllmC7ncrX6
 oOE08kuMNtI1rShHIyWIOsG0nQfLxU1xqDjPITlz58oaojgYsbDKPxBDQ
 TzC5/YSwsiDUDghqpm8WFiyxKH9Rjl6BDbQyS7jWuBHlqE17tSmcwIeh6
 5wK4mEwej/tj6EXT7uUHEubJ/3g8jfa0Z1OS2Duf3xSZfqi4hKTKLoURq
 Lg3QGJbY9UCoeXuUxzHZe2BdpSX7vsIKwA0jli8H1ZWAHrzziwwjzBWWm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323181897"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323181897"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="802788702"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:11:02 -0700
Message-Id: <8401d5f5a87035ce1dda28a663771cb867fdf928.1649871650.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Introduce has_media_ratio_mode
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
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/i915_pci.c          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 3 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9274417cd87a..1573769b516f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1222,6 +1222,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CCS_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
+#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
+
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 736e04078f56..ddc72bb07259 100644
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
index f9b955810593..bf4f2b27fd47 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -146,6 +146,7 @@ enum intel_ppgtt_type {
 	func(has_llc); \
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
+	func(has_media_ratio_mode); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
 	func(has_pxp); \
-- 
2.34.1

