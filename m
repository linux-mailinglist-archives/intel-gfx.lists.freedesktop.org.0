Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0828D8BAC63
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9979D1128C9;
	Fri,  3 May 2024 12:25:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mybjbzjF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5FC1128C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739123; x=1746275123;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7XXt68sQvFPITStFo7QqrwfVdiLVTpP+IEfg0ZLeXc4=;
 b=mybjbzjF/bPZYkzs/djGyt9VzTfEH7Qi1OpZUxT6C8qMezOwYo3Xzt+O
 gPvI3J6QbcfMaf5E0zOXMyA79tJL/EuiG5wcD9TH6am9IprSH9L7dAKrF
 s7PpdMklkKTeHVLUeYRy1cxyZ9FG8P8mzZ3/4RZKj87tk5/sQiTPQzCy7
 WEJq/cW7mR2cSQ2duBGD506upKew6ZKAhCQBfT3WqpRl0E7XdIyzhv7ch
 rlNsRHrJMzC/lHfQuYgvrYWUj8vZ7YX3g+OM1lFHOyDxeJCM6CbD+CSGe
 8UCg9NLdMs/E8Lg3od1M4Ts8ExHi2RBPNKZaupMoHYPyA2FXEwStVFrQp w==;
X-CSE-ConnectionGUID: JsTQ99YvRfWcp1j7Qlr0pg==
X-CSE-MsgGUID: S2cW6dyLRcWZ0zJDcOKi6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372750"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372750"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:23 -0700
X-CSE-ConnectionGUID: J88IDdY1Se6jrMY5Ad47DA==
X-CSE-MsgGUID: UL92fgjvT8yiBN1Md/dEXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463716"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/35] drm/i915/bios: Define VBT block 5 (Generic Mode Table)
Date: Fri,  3 May 2024 15:24:25 +0300
Message-ID: <20240503122449.27266-12-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 5 (Generic Mode Table).

Details were mostly gleaned from some VBIOS sources.

There are apparently two variants of the block: ALM only
vs. MGM, defined here as bdb_generic_mode_table_alm
and bdb_generic_mode_table_mgm. And those are the only two
platforms where I've seen this block.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index c9ecf3b48999..f3478a20ff16 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -580,6 +580,60 @@ struct bdb_mode_support_list {
 	u16 mode_list_length;
 } __packed;
 
+/*
+ * Block 5 - Generic Mode Table
+ */
+
+struct generic_mode_table {
+	u16 x_res;
+	u16 y_res;
+	u8 color_depths;
+	u8 refresh_rate[3];
+	u8 reserved;
+	u8 text_cols;
+	u8 text_rows;
+	u8 font_height;
+	u16 page_size;
+	u8 misc;
+} __packed;
+
+struct generic_mode_timings {
+	u32 dotclock_khz;
+	u16 hdisplay;
+	u16 htotal;
+	u16 hblank_start;
+	u16 hblank_end;
+	u16 hsync_start;
+	u16 hsync_end;
+	u16 vdisplay;
+	u16 vtotal;
+	u16 vblank_start;
+	u16 vblank_end;
+	u16 vsync_start;
+	u16 vsync_end;
+} __packed;
+
+struct generic_mode_timings_alm {
+	struct generic_mode_timings timings;
+	u8 wm_8bpp;
+	u8 burst_8bpp;
+	u8 wm_16bpp;
+	u8 burst_16bpp;
+	u8 wm_32bpp;
+	u8 burst_32bpp;
+} __packed;
+
+struct bdb_generic_mode_table_alm {
+	struct generic_mode_table table;
+	struct generic_mode_timings_alm timings[3];
+} __packed;
+
+struct bdb_generic_mode_table_mgm {
+	u16 mode_flag;
+	struct generic_mode_table table;
+	struct generic_mode_timings timings[3];
+} __packed;
+
 /*
  * Block 9 - SRD Feature Block
  */
-- 
2.43.2

