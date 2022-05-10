Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79959521275
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ADA89CC9;
	Tue, 10 May 2022 10:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C4910F741
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179400; x=1683715400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EWrXKJZWvwWAIwj33HMW+//7HOmM4Wk2K1YPXQzj7IA=;
 b=DGIPwvSCXq4Dp90jDYjSvuYthRzFU48LTPM0PMcIHD3tS6wTgOi5ymVx
 Nr8MD/YEIgj5xzC7p/AqHpnEldrv0VDi42fNiyiPc4xJohydjgpLjZ+CN
 6vHlExWbAwjrdiFRDIZYldi+IiXkVfkOOIIgbbo1qm3EHx38gXkF2YHlt
 +rYSLNTgCzK3u4Qd3RzGdpqoJzCW3sgYozuTAEhSBmuYem+Zw1/tB1D1+
 7i4YxuB3C8Lq+G4eb2yMf9JnAVG5pYUik0h0EbQw0Bx1pONO6aSzy9+q8
 EE9F2yC4VXK1k9QKcSuuwloJlAQ8qpQJiXlXEfRQgkVbnNwlwJtt6O9ZS Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249236174"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="249236174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="657597321"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 10 May 2022 03:43:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:38 +0300
Message-Id: <20220510104242.6099-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/bios: Split VBT parsing to
 global vs. panel specific parts
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Parsing the panel specific data (anything that depends on panel_type)
from VBT is currently happening too early. Split the whole thing
into global vs. panel specific parts so that we can start doing
the panel specific parsing at a later time.

v2: Clarify that this is about panel_type (Jani)
    Split out the leak checks (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 26 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_bios.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 3 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2ac0e91a5587..b1e34b02fdc2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2962,18 +2962,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	/* Grab useful general definitions */
 	parse_general_features(i915);
 	parse_general_definitions(i915);
-	parse_panel_options(i915);
-	parse_generic_dtd(i915);
-	parse_lfp_data(i915);
-	parse_lfp_backlight(i915);
-	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
-	parse_panel_driver_features(i915);
-	parse_power_conservation_features(i915);
-	parse_edp(i915);
-	parse_psr(i915);
-	parse_mipi_config(i915);
-	parse_mipi_sequence(i915);
 
 	/* Depends on child device list */
 	parse_compression_parameters(i915);
@@ -2992,6 +2981,21 @@ void intel_bios_init(struct drm_i915_private *i915)
 	kfree(oprom_vbt);
 }
 
+void intel_bios_init_panel(struct drm_i915_private *i915)
+{
+	parse_panel_options(i915);
+	parse_generic_dtd(i915);
+	parse_lfp_data(i915);
+	parse_lfp_backlight(i915);
+	parse_sdvo_panel_data(i915);
+	parse_panel_driver_features(i915);
+	parse_power_conservation_features(i915);
+	parse_edp(i915);
+	parse_psr(i915);
+	parse_mipi_config(i915);
+	parse_mipi_sequence(i915);
+}
+
 /**
  * intel_bios_driver_remove - Free any resources allocated by intel_bios_init()
  * @i915: i915 device instance
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 4709c4d29805..c744d75fa435 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -230,6 +230,7 @@ struct mipi_pps_data {
 } __packed;
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
+void intel_bios_init_panel(struct drm_i915_private *dev_priv);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 806d50b302ab..e384db157f34 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9580,6 +9580,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
+	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
-- 
2.35.1

