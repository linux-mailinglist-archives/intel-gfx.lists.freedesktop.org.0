Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35B681A8EA
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EAA10E64B;
	Wed, 20 Dec 2023 22:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4208E10E649
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110514; x=1734646514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=okIAl2U+8vYyLqN7PFKgNhPhpq4ebkIJZBUMAITUWtw=;
 b=XCiFXywqgaq8KWHMMCdsCE+jhDim63m9K6YyQFn5fyDPD1khEsisq+kN
 GlRzL5DliUElRFFM6aCfCNqrQRSAv281/sJWm55MztODuYaTPckPGgL8m
 a7f5ljmDdooViec+Y3PCyf5u71GW6m7SSWGENy0hwaQSwr9ioaIQXJyiv
 xarAuAyEsoFyUjFN0LpKU2Jur7kj2e/XbJ8SIbyNqB9TxvlWoXazCtMb4
 5lA+yl0kKVvnsuNnR8PLvs/Y0nOBiQ1Tzockxuz/t3JVoahRvs8nG1zc9
 6bJA1sEsR30Of/KRG2hMAFZE28ebP3Yie9ueRy0Xo39a9VXEwL/evvHa/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="460220634"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="460220634"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="920106972"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="920106972"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915: Rename intel_bios_encoder_data_lookup as a
 port variant
Date: Wed, 20 Dec 2023 14:13:39 -0800
Message-Id: <20231220221341.3248508-3-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
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

intel_bios_encoder_data_lookup takes enum port as an argument. A variant
based out of phy based lookup is required to be used out of vbt code which
will be introduced in a later patch. Hence indicate the current variant as
intel_bios_encoder_port_data_lookup.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 drivers/gpu/drm/i915/display/intel_bios.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index dfe0b07a122d..ecfa55d6f9f5 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1298,7 +1298,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	devdata = intel_bios_encoder_port_data_lookup(dev_priv, port);
 
 	/* FIXME bail? */
 	if (!devdata)
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8096492b3fad..3aedbb6f13c8 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -697,7 +697,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!assert_hdmi_port_valid(dev_priv, port))
 		return;
 
-	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+	devdata = intel_bios_encoder_port_data_lookup(dev_priv, port);
 
 	/* FIXME bail? */
 	if (!devdata)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aa169b0055e9..febc607267f0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3636,7 +3636,7 @@ bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata
 }
 
 const struct intel_bios_encoder_data *
-intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
+intel_bios_encoder_port_data_lookup(struct drm_i915_private *i915, enum port port)
 {
 	struct intel_bios_encoder_data *devdata;
 
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 49e24b7cf675..a296aad7f545 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -255,7 +255,7 @@ bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port
 bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
 
 const struct intel_bios_encoder_data *
-intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
+intel_bios_encoder_port_data_lookup(struct drm_i915_private *i915, enum port port);
 
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3dfca8d88a6f..76f1b8828df8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6155,7 +6155,7 @@ static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
 bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 {
 	const struct intel_bios_encoder_data *devdata =
-		intel_bios_encoder_data_lookup(i915, port);
+		intel_bios_encoder_port_data_lookup(i915, port);
 
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
-- 
2.34.1

