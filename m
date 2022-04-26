Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 663AF51090F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9060010E59F;
	Tue, 26 Apr 2022 19:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C06210E59F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001564; x=1682537564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BolxKaRrS/oLWjdfaWRpCbhurvPt4m8wHdSgiCJ4HPQ=;
 b=DvbrUoWd6LN44RXOBJzDb6ePVF/4upzsKcLlwQNwQQ6H0wxxQ4eRc74Q
 tEHTpTWFKf0jvn2376GtUpjxBSSXwp5omAgWEsnKW/FXBmPC3kXA9koZw
 fX6lqkW9Twf8U6p7BXHRV4tLDFNNpuWV/BbKNKKNBjvUwXTX2HkT1972P
 DNsfBE5t2drvlLa52/2g+AzuafPkjqmpE2fZMLfey12jLGETWjwObDI6V
 vaj5wJOc+QxzJWfvfuejxiSQLeM809WWvBwCKRxFuq3NRQPDy+FX6FL6B
 Iaq5KjG44Ykc/tJJ6jv5TkPKKfE4abueJRymyd1sx6DtRiVl/fc5doVPv Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="264546048"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="264546048"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="660843129"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 26 Apr 2022 12:32:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:10 +0300
Message-Id: <20220426193222.3422-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/18] drm/i915/bios: Split
 parse_driver_features() into two parts
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

We use the "driver features" block for two different kinds
of data: global data, and per panel data. Split the function
into two parts along that line so that we can start doing the
parsing in two different locations.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 53a7a16df231..f4bcbdd9f37a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1114,6 +1114,16 @@ parse_driver_features(struct drm_i915_private *i915)
 		    driver->lvds_config != BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
 			i915->vbt.int_lvds_support = 0;
 	}
+}
+
+static void
+parse_panel_driver_features(struct drm_i915_private *i915)
+{
+	const struct bdb_driver_features *driver;
+
+	driver = find_section(i915, BDB_DRIVER_FEATURES);
+	if (!driver)
+		return;
 
 	if (i915->vbt.version < 228) {
 		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
@@ -2891,6 +2901,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
+	parse_panel_driver_features(i915);
 	parse_power_conservation_features(i915);
 	parse_edp(i915);
 	parse_psr(i915);
-- 
2.35.1

