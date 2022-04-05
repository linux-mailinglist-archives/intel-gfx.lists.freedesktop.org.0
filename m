Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC64F3CE8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B28510EDA9;
	Tue,  5 Apr 2022 17:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB39110EDA9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180087; x=1680716087;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lv/AZxBapHNsFo8SoHxGvYqmRPMpEscMm4vl6UXYMLw=;
 b=C89qUxL2bcVCBS65i2YcRc9+nI1+VVuhNMTN5gVA2LlpHSuY8yGKzDEi
 i5E4iEmU5BS5zHcKiaWtDQZPCr6IJ9r7rbOwpLA8RJW1g4MGn9pfBIGXj
 IkWWpLNrjMhbp+3JxVFUUlDCHUhJOkD0CoNpm9m4PVN3jpfhBhhMqxbpb
 7oDgkUNS0wJXD1C85My8qbYqh8+s+/qEBLBBGvid1IIoVwxjO36rou67e
 Nc1JniK5FzITxCBj3y6Ij6JYYXtAxCmkyfPb1VLHNehIZTHuTQ0VyP2Se
 JQiE/lChygFtqENiZQ6YynQDQWUtA9IPRadEkCz9F1yu+8Fg5/y7Ke/az A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="259648375"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="259648375"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="556610785"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 05 Apr 2022 10:34:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:59 +0300
Message-Id: <20220405173410.11436-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/22] drm/i915/bios: Split
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We use the "driver features" block for two different kinds
of data: global data, and per panel data. Split the function
into two parts along that line so that we can start doing the
parsing in two different locations.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 502d4c679198..1a7f1aa79827 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1097,6 +1097,16 @@ parse_driver_features(struct drm_i915_private *i915)
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
@@ -2883,6 +2893,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_lfp_backlight(i915);
 	parse_sdvo_panel_data(i915);
 	parse_driver_features(i915);
+	parse_panel_driver_features(i915);
 	parse_power_conservation_features(i915);
 	parse_edp(i915);
 	parse_psr(i915);
-- 
2.35.1

