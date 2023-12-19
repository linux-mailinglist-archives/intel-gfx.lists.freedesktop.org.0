Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6CD819240
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 22:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 956C610E1DE;
	Tue, 19 Dec 2023 21:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82AC10E1F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 21:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703021284; x=1734557284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=juiCeDb5F2Jw9pBJlfII033bxwSl5pGUNCcxgEbi78Q=;
 b=ZNc3gwYRbcr2R6Og5cf+74QQRN9hSjjtW2dI7cTGT16aGof9dAqEQowa
 KsSVURem6OM73HBR9tslDdfm6iXVXNGCiHcWvhLS6tBuEJZcbvUuIJ47n
 UXPx7eYR5UYrXkHSwgBELQKgGgW7GV0xnITHyjIi4LYqWdb2+g7JmlEOj
 1fP/rZjjoBAZIZywNQGF+xwO1f4nBb7uOehGOEVlN/wUa4K2UEYLBKDVI
 kBpiTq5GZNqFjQV6PAd+W1e2CCOUCkUyzXM0XupgWeSF40IC7F1/0719t
 bT3cFNc+cCNT2sZyLjIxzrKHqn9roVrEmVb0KuXlxRgwD3AdLvDVXjL2L g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="14413717"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="14413717"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 13:28:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949308582"
X-IronPort-AV: E=Sophos;i="6.04,289,1695711600"; d="scan'208";a="949308582"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 13:28:03 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Introduce intel_encoder_phy_data_lookup
Date: Tue, 19 Dec 2023 13:26:28 -0800
Message-Id: <20231219212629.136868-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
References: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch introduces phy version of intel_encoder_port_data_lookup.
Port based variant is dependent on vbt child data extraction and
conversion to port data to be used further. Port data is not immediately
available and is difficult to be determined from phy info.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  3 +++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index febc607267f0..0b21364b2bdf 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3648,6 +3648,19 @@ intel_bios_encoder_port_data_lookup(struct drm_i915_private *i915, enum port por
 	return NULL;
 }
 
+const struct intel_bios_encoder_data *
+intel_bios_encoder_phy_data_lookup(struct drm_i915_private *i915, enum phy phy)
+{
+	struct intel_bios_encoder_data *devdata;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		if (intel_port_to_phy(i915, intel_bios_encoder_port(devdata)) == phy)
+			return devdata;
+	}
+
+	return NULL;
+}
+
 void intel_bios_for_each_encoder(struct drm_i915_private *i915,
 				 void (*func)(struct drm_i915_private *i915,
 					      const struct intel_bios_encoder_data *devdata))
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index a296aad7f545..2861ebb13909 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -39,6 +39,7 @@ struct intel_crtc_state;
 struct intel_encoder;
 struct intel_panel;
 enum aux_ch;
+enum phy;
 enum port;
 
 enum intel_backlight_type {
@@ -254,6 +255,8 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
 bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
 
+const struct intel_bios_encoder_data *
+intel_bios_encoder_phy_data_lookup(struct drm_i915_private *i915, enum phy phy);
 const struct intel_bios_encoder_data *
 intel_bios_encoder_port_data_lookup(struct drm_i915_private *i915, enum port port);
 
-- 
2.34.1

