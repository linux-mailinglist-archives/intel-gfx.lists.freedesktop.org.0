Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C02F86B9F8
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDCB10E3C6;
	Wed, 28 Feb 2024 21:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQGiF9pi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD4D10E272
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156049; x=1740692049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vkQ0k/Wtb4CDVXQUvOyF9ROj6f9ZqOFIZ4sQiggKMLg=;
 b=XQGiF9pil6FWBJF4YeXBDI9UrHnYUpC+0j9YHm+Dfsm/DOACOnVqZF+8
 M6oq5jDxfSMvp/su80e8HJpFHY/hTiu0zX1X4gBFDPs3LzbW+AXjdP9ot
 gkjgT++Bv1FgyuSCA/sBYnx3r3pD52fkcOBNTa80itMbiiVS9KtZrggCV
 L3H1WttqGX0sN525faMgkz89XIdAQdLN/ruPPpO3a4OqAkjERvcyvTDUK
 mvlelrA4qIJKKdMpJJJaqhk4le638Kj6JpvUNNhzl0GRmjxQ4n5mX73I0
 tFSleTu4id3AzZabR7Qy8q6Rl38DBekAbqIlOpztRi5qvcrYF9TPMTWa4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753127"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753127"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623736"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 4/6] drm/i915: Extract opregion vbt presence check
Date: Wed, 28 Feb 2024 13:32:33 -0800
Message-Id: <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
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

We want to later change intel_opregion_get_vbt to duplicate the vbt
memory if present, which would be an overkill when we just want to
peek into the presence of opregion vbt. Carve out the presence check
into its own function to use in places where only the presence of vbt
is required.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  3 +--
 drivers/gpu/drm/i915/display/intel_opregion.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  1 +
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a66fc79466bd..c283a5a07010 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3364,8 +3364,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 		 * additional data.  Trust that if the VBT was written into
 		 * the OpRegion then they have validated the LVDS's existence.
 		 */
-		if (intel_opregion_get_vbt(i915, NULL))
-			return true;
+		return intel_opregion_vbt_present(i915);
 	}
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5d07a002edaa..58dfecb617b0 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1131,6 +1131,16 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
 	return drm_edid;
 }
 
+bool intel_opregion_vbt_present(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = i915->display.opregion;
+
+	if (!opregion || !opregion->vbt)
+		return false;
+
+	return true;
+}
+
 const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 {
 	struct intel_opregion *opregion = i915->display.opregion;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 0bec224f711f..63573c38d735 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -53,6 +53,7 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
 
+bool intel_opregion_vbt_present(struct drm_i915_private *i915);
 const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915);
-- 
2.34.1

