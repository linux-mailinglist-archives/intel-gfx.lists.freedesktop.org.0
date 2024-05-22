Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F338CC597
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DFC10E29C;
	Wed, 22 May 2024 17:34:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4OAjgi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD1910E29C;
 Wed, 22 May 2024 17:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399247; x=1747935247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fremv7aANX/DrTGJTOuzxl38LKrfOcuucmamjy7lQ2E=;
 b=b4OAjgi2CizEH560O2C5eF6hsCI4IFK4vud1fIBvAQuD2MUGRp0I6qVE
 5XUUPTd6kYj5Tnf9je5w8Mbw+rsEm4d/mW6CxkmucsjiEWcW8FcRPci9V
 4bZ5NLMg07BPnwzEN4C5Ys29Qec/F/TpQ1PNYiWDpAv96TPHE1IcTVcY5
 8MvK/8D13KFW9HO59NxaVNIxJ9ZGH3UpUYBw5i5XlbIErDyn+wEbNhiCn
 SSuACJoieoWITjvIuY5g05P0eIqNI6c1qdnvJAk+a4gE0W5RuNYKteh/p
 fnFxc7PgLjSc8HkyWFTrKSFu85m/vQVc4ZLBin96CTMA3156tOlzMnnMC Q==;
X-CSE-ConnectionGUID: 5dLDBzGmT56zgtILzmK9zg==
X-CSE-MsgGUID: bDcRgVj2QpWtzykUMliLRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053804"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053804"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:07 -0700
X-CSE-ConnectionGUID: KKnnG2nfS6ee8AVHkzqhQQ==
X-CSE-MsgGUID: m+9x8JmWQmac72w9Ew57tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425177"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 02/10] drm/i915/display: change probe for no display case
Date: Wed, 22 May 2024 20:33:39 +0300
Message-Id: <8dfac3532a72ca6494c9955987166d9c6e0919bd.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Return NULL for errors, and handle the no display case in one
location. This will make subsequent changes easier.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c    | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 9edadc7270f6..03181bb79d21 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -881,7 +881,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
 	if (!addr) {
 		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
-		return &no_display;
+		return NULL;
 	}
 
 	val = ioread32(addr);
@@ -889,7 +889,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 
 	if (val == 0) {
 		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
-		return &no_display;
+		return NULL;
 	}
 
 	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
@@ -903,7 +903,7 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 
 	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
 		*ver, *rel);
-	return &no_display;
+	return NULL;
 }
 
 static const struct intel_display_device_info *
@@ -914,7 +914,7 @@ probe_display(struct drm_i915_private *i915)
 
 	if (has_no_display(pdev)) {
 		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
-		return &no_display;
+		return NULL;
 	}
 
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
@@ -925,7 +925,7 @@ probe_display(struct drm_i915_private *i915)
 	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
 		pdev->device);
 
-	return &no_display;
+	return NULL;
 }
 
 void intel_display_device_probe(struct drm_i915_private *i915)
@@ -943,6 +943,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	else
 		info = probe_display(i915);
 
+	if (!info)
+		goto no_display;
+
 	DISPLAY_INFO(i915) = info;
 
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
@@ -954,6 +957,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
 		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
 	}
+
+	return;
+
+no_display:
+	DISPLAY_INFO(i915) = &no_display;
 }
 
 void intel_display_device_remove(struct drm_i915_private *i915)
-- 
2.39.2

