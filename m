Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F18FCFEE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 15:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E40310E467;
	Wed,  5 Jun 2024 13:48:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkhJ+rLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CB010E467
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 13:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717595293; x=1749131293;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h6IihCrTzSwhWZoP0Mkf+nm3fhrpcINdZHPqzMvKn3c=;
 b=NkhJ+rLgnr5t7cbYFA0/JfLpBxGEAuZ13OyY9uo7idMcCkZPMVB58cLl
 /8TGqZqlkxh/iatuTSmWb5+3mWZq9eausN0ISAeBv9VXmGTK4OAvNzDwC
 faMYumiiWezE5Va+mLa5i8kFdM+yq4x5oawB8F8zpSJfcTQ9G5VcKhO1I
 ILRKAKVWo1Ezr0SZG3ZW8VjOUxUtw0OXdn04PJGclya8dQL3dC4nQ+MIl
 xqxg31AVH4mJlhpL0X4UjpGNt7qb3lc5Ph8LaDrcGLOYgFWGuDm6AoVOJ
 tDDnbJSDdVZczSsLBq+EUrP/17YvGep2qUCq7Y3U8W0hx2ZfI+OUcoF3A A==;
X-CSE-ConnectionGUID: Mk0atlclSuyJ/WrxeYZvHA==
X-CSE-MsgGUID: AHFjQTzmTJ+ODTRaScP8Ug==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="39608280"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="39608280"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 06:47:59 -0700
X-CSE-ConnectionGUID: NCZAmHDPRQiyCbFo0Quthw==
X-CSE-MsgGUID: lTWuojNzTkefqTPKpUmPrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37605037"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 06:47:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 16:47:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/bios: Define block 46 chromaticity coordinates
 properly
Date: Wed,  5 Jun 2024 16:47:55 +0300
Message-ID: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

The VBT spec does a very poor job of defining how the chromaticity
coordinates in block 46 are laid out. After double checking the
Windows implementation it turns out these more or less match the
EDID definition, where the 10bit values are split into 2bit + 8bit
chunks. Adjust our struct definition to reflect that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 27 ++++++++++++-------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 862c5923b83d..da8694771f69 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -1376,16 +1376,23 @@ struct chromaticity {
 	u8 chromaticity_from_edid_base_block:1;
 	u8 rsvd:6;
 
-	u8 red_green;
-	u8 blue_white;
-	u8 red_x;
-	u8 red_y;
-	u8 green_x;
-	u8 green_y;
-	u8 blue_x;
-	u8 blue_y;
-	u8 white_x;
-	u8 white_y;
+	u8 green_y_lo:2;
+	u8 green_x_lo:2;
+	u8 red_y_lo:2;
+	u8 red_x_lo:2;
+	u8 white_y_lo:2;
+	u8 white_x_lo:2;
+	u8 blue_y_lo:2;
+	u8 blue_x_lo:2;
+
+	u8 red_x_hi;
+	u8 red_y_hi;
+	u8 green_x_hi;
+	u8 green_y_hi;
+	u8 blue_x_hi;
+	u8 blue_y_hi;
+	u8 white_x_hi;
+	u8 white_y_hi;
 } __packed;
 
 struct bdb_chromaticity {
-- 
2.44.1

