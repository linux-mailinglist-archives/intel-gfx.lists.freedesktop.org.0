Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C25C86B9FA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACC410E26F;
	Wed, 28 Feb 2024 21:34:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CnwlQ3i0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F10410E36D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156049; x=1740692049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uaZeCg4qs7tXsglBTNiwB+kTCtzCjDwcRRjEZ3i5qsE=;
 b=CnwlQ3i09BpnRnwb9dy62wWrjN9OkKES5yv3idmF6LxZbQj8+ADz3A+A
 L+n+WZ1o/qe0A1Gdu0Wf1+xfpt/raDi8KbHMzc+nW+QpfH5H2rc5DOuZK
 AX1Kb151hQHLVfeAdSyI6UIfl8lLUUbRvQ3xOfgmlNFhHwZpnr0o1e4LB
 4jCT9McYXKeZ9aIpIjAtQuVj4BVaGZumlgSqUDvmWMvkMFL4Nl6UL9Mvq
 k+pY0J+pZ7CklXqzPonYUCn0BscDVRncw82/s8yW0cr5plQwD3prkZtLx
 hEMal9PUaUawwemz9ZMXwx53PRV+svFRATDCwWtgBVaEclxZjL6kMCdTk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753128"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753128"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623739"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 5/6] drm/i915: Duplicate opregion vbt memory
Date: Wed, 28 Feb 2024 13:32:34 -0800
Message-Id: <20240228213235.2495611-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
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

In the case of vbt residing in opregion, we simply remap the region
into the kernel and pass the memory reference. Instead duplicate the
memory to handle a saner cleanup in intel_bios_init.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 6 ++++--
 drivers/gpu/drm/i915/display/intel_opregion.c | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c283a5a07010..e5229c41dbf7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3144,8 +3144,10 @@ void intel_bios_init(struct drm_i915_private *i915)
 	oprom_vbt = firmware_get_vbt(i915, NULL);
 	vbt = oprom_vbt;
 
-	if (!vbt)
-		vbt = intel_opregion_get_vbt(i915, NULL);
+	if (!vbt) {
+		oprom_vbt = intel_opregion_get_vbt(i915, NULL);
+		vbt = oprom_vbt;
+	}
 
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 58dfecb617b0..68bd5101ec89 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1151,7 +1151,7 @@ const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 	if (size)
 		*size = opregion->vbt_size;
 
-	return opregion->vbt;
+	return kmemdup(opregion->vbt, opregion->vbt_size, GFP_KERNEL);
 }
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915)
-- 
2.34.1

