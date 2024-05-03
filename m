Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0B38BAC6F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B861128D7;
	Fri,  3 May 2024 12:25:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2ADuye5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D5B1128D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739152; x=1746275152;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=X7bbtsz37ZO9LmRqQeBZRdBfYmZPUPq+tThQEcqvE1I=;
 b=I2ADuye5tJgy18ul8UyEuGaIE6leEs02KYx0Db2YKW2IWtIqrRXxxbAq
 n1F2z39SA+PJpvb8VWGmncDMSq55945CCBMhH4ZR55fvUdF9b47MxsMUJ
 pxvYodSSyZNTsGQqIInOFKPwObHz+6D8EQ6XYMip8U9gtw+aH98Igiv96
 xdT+LWW//fCWk1ZQdAALKLOavLnfKLsImNL1FtoEaxQA4G3uiCmutDn6i
 8NwPKMV4D73K7HrYneTdbB6IriE38f0SXi5PgpB+Rh9Dj0wVaux2pKGvd
 j8EGtBbPyWrhY5PszqvvCrtdTQQozYolPXxb0ru2Rs+s5ZXjHdLnBSz/t w==;
X-CSE-ConnectionGUID: CqNCFWvJScarWdn5eU/HYw==
X-CSE-MsgGUID: qeH7VedBSOy3IuM/YNFc6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372776"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372776"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:51 -0700
X-CSE-ConnectionGUID: HzZwV76/S9ObietCysLNFA==
X-CSE-MsgGUID: dJxfRoVSQpSFmhIDDkkZCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463800"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 21/35] drm/i915/bios: Define VBT block 20 (OEM Customizable
 Modes) contents
Date: Fri,  3 May 2024 15:24:35 +0300
Message-ID: <20240503122449.27266-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Define the contents of VBT block 20 (OEM Customizable Modes).
Each entry is either 26 or 28 bytes, depending on the BDB version.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 30d60835e4d0..a61ae39196b1 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -897,6 +897,30 @@ struct bdb_display_remove_old {
 	struct display_remove_entry_old table[];
 } __packed;
 
+/*
+ * Block 20 - OEM Customizable Modes
+ */
+
+struct oem_mode {
+	u8 enable_in_vbios:1;
+	u8 enable_in_os:1;
+	u8 enable_in_gop:1;					/* 207+ */
+	u8 reserved:5;
+	u8 display_flags;					/* ???-216 */
+	u16 x_res;
+	u16 y_res;
+	u8 color_depth;
+	u8 refresh_rate;
+	struct bdb_edid_dtd dtd;
+	u16 display_flags_2;					/* 217+ */
+} __packed;
+
+struct bdb_oem_custom {
+	u8 num_entries;
+	u8 entry_size;
+	struct oem_mode modes[];
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

