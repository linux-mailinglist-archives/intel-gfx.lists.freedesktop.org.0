Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD77D510910
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4267610E585;
	Tue, 26 Apr 2022 19:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A28A10E585
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001567; x=1682537567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SifNguBoUNYTsqSHdREvsTIi6VbPJMmWmKkxKqTGAqE=;
 b=YuM/DNq0Z82NPgJ8Xuh7ljINh8Tyc8gLoybTWqgcbiAlE6dU9Tt9fWM4
 2ej/jIrh0FUDFVqG7+ne2mrzRem4gRCKEP49v/b8kSumaKb+48U7AwdnM
 cI2z5v1zH1HkkzJjLPV7IQ0Hqj0n9fLWBZh/BDDci1HW1eZ4dpte3p+5o
 47snAY0F2EDXGhVVY176JphwupqqfXf/ggUNLFZ12vQI1Y3P8in+zOSId
 Lzau69vQDeIZQMGz8IvFo5a5dEKR1Aa11miUZoj9+5UJAzrWP9LTRMin7
 cDnsHL1lAWqEtMQpjqeRO6PcuT3k+mxyBnWz81faBDPqThzBBUG89D4qR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265862427"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265862427"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="564732812"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 26 Apr 2022 12:32:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:11 +0300
Message-Id: <20220426193222.3422-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/18] drm/i915/bios: Split VBT parsing to
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
index f4bcbdd9f37a..b246a3a649a0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2895,18 +2895,7 @@ void intel_bios_init(struct drm_i915_private *i915)
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
@@ -2925,6 +2914,21 @@ void intel_bios_init(struct drm_i915_private *i915)
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
index 0decf3d24237..e33a70b980dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9579,6 +9579,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	}
 
 	intel_bios_init(i915);
+	intel_bios_init_panel(i915);
 
 	ret = intel_vga_register(i915);
 	if (ret)
-- 
2.35.1

