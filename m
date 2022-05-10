Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2072521274
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF6A10F6B4;
	Tue, 10 May 2022 10:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DF210F7D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179398; x=1683715398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h+DZ9a/kkMy/xFXNDmiHCqY+1EyeL6YpdxEH9F0T/lU=;
 b=JT2PqhSPUBsLKCS/8qbywuJqXwLOvqDCArYkTcTTDSdlXyWRbHHWxWY9
 lpiiGDnbQRysifLLMP+I+7uHU/oPaNBXa2Hb67NiwxfhUxZb/gUG9N4Hg
 BebYP6cO6yJF/uBOoCFR0Ov9jQgcNbvSQP+AbBO4+qIUAHJQnk9Sq3rmA
 yBimRum7rRkEZeOj9SY+bQ/5ptqyqwhfxR5rhcUGMkKj8qy152Gt54x+o
 A2Xbj8Pavj8s61zT4wXvkdMQIKolGcFPlBazk7IOYDBZq2nVEm0F+VIOb
 +anYpLf0Jadq5/4P5LA1LH+dfmUvVgxRjjgMzxM54k4W5XFic1Mwz59IM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269471605"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="269471605"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="552774804"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 10 May 2022 03:43:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:43:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:37 +0300
Message-Id: <20220510104242.6099-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915/bios: Split
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
index 0c5638f5b72b..2ac0e91a5587 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1181,6 +1181,16 @@ parse_driver_features(struct drm_i915_private *i915)
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
@@ -2958,6 +2968,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
+	parse_panel_driver_features(i915);
 	parse_power_conservation_features(i915);
 	parse_edp(i915);
 	parse_psr(i915);
-- 
2.35.1

