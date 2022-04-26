Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76868510921
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E097E10E558;
	Tue, 26 Apr 2022 19:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA3310E5F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001613; x=1682537613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TEqOLHI2aDhu43kNO6fzGfaPjCGKtnUNywAuP9TDl0U=;
 b=crhNBbMbGkyWOFwBzJpSC14l/fibw1bwTCbL/XfhOPLRUDW+xKoEOqDn
 EX9OSN6Sy0FkJdbzyyqmB2TBttPi8onc7jPiRBlo8rSQ/kW9YlFwheeZt
 vzxzYbKXmi5x7SnmI5kzicsxvLvTPCf7s3M8yvmdMfv5AqpBwQ9RE29UV
 lWlp6FogEgA55QDURr2pCoATUF/tlR8uK/CAyMPFIqPD7A+NatQP6F04C
 zweiTEBILWTO6RpyD7QznBlHVdwuYwE0i8qIsFsI7oXCt1Z03lKHV2S/1
 Giu5QgUMOxod3qzkBT1+CX0pQUGcDrFptxN7mn6k2irqQSIhDH7bQdGU8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="352140238"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="352140238"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="617152917"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 26 Apr 2022 12:33:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:33:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:19 +0300
Message-Id: <20220426193222.3422-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/18] drm/i915/bios: Parse the seamless DRRS
 min refresh rate
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

Extract the seamless DRRS min refresh rate from the VBT.

v2: Do a version check

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 ++++++++-
 drivers/gpu/drm/i915/i915_drv.h           | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1b84c0e55497..f1afc267b5f9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -833,6 +833,7 @@ parse_lfp_data(struct drm_i915_private *i915)
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_tail *tail;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
+	int panel_type = i915->vbt.panel_type;
 
 	ptrs = find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
 	if (!ptrs)
@@ -849,7 +850,13 @@ parse_lfp_data(struct drm_i915_private *i915)
 	if (!tail)
 		return;
 
-	(void)tail;
+	if (i915->vbt.version >= 188) {
+		i915->vbt.seamless_drrs_min_refresh_rate =
+			tail->seamless_drrs_min_refresh_rate[panel_type];
+		drm_dbg_kms(&i915->drm,
+			    "Seamless DRRS min refresh rate: %d Hz\n",
+			    i915->vbt.seamless_drrs_min_refresh_rate);
+	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 24111bf42ce0..c2a31ca56232 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -327,6 +327,7 @@ struct intel_vbt_data {
 	bool override_afc_startup;
 	u8 override_afc_startup_val;
 
+	u8 seamless_drrs_min_refresh_rate;
 	enum drrs_type drrs_type;
 
 	struct {
-- 
2.35.1

