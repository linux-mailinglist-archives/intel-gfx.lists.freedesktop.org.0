Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27AF8BAC66
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1801128CE;
	Fri,  3 May 2024 12:25:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKm+v/C9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32B21128CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739132; x=1746275132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YEwkVFcC70bRzk7zaKjhK7Yabht963D7RM3Rqdu19cM=;
 b=bKm+v/C9EHA6MmLFcg0mdPvIz2X+NQJrD10wooXURsOW4XZxRCM+eYzw
 NEMXW4QusXCjqHBPWwci3Ib+ZVbMVEs7C6/5c7oIYK4HH5/PtvAchQZ8W
 ccKJ20f8Ee7Rs9DAy0IglB83BbqHrmqWfrQwCI5pM1bJFqGUKaiU2ZBGr
 gNE2p+NiLLoL7OXkQL7uPMxVU60/m1tZkc4MAj2l74LlU0fprSHiLEJXu
 gyn6dT6f4uH1Lwpcx+VRul/p1DaEj67tFiOGeWmg/PJzK9wjKqH8JENM+
 Pky5tp70BW9JqEC7J9hGD9n9O/Y+fLiqu4a7I8ntGig7R5OBY4WN9fDq7 A==;
X-CSE-ConnectionGUID: ihiEEXsWS0WsSLLHgxOdOg==
X-CSE-MsgGUID: VE9Zjgf5TdqJdZ5KXK50Xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372758"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372758"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:31 -0700
X-CSE-ConnectionGUID: Gm0AywVnRRGWL2ov/mUCgQ==
X-CSE-MsgGUID: 3DKwZU+wS2Ggd5F0gwVpvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463729"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/35] drm/i915/bios: Define VBT block 12 (Driver Persistent
 Algorithm) contents
Date: Fri,  3 May 2024 15:24:28 +0300
Message-ID: <20240503122449.27266-15-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 12 (Driver Persistent Algorithm).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index d78523cd4214..2075d53ca317 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -778,6 +778,25 @@ struct bdb_driver_features {
 	u16 pc_feature_valid:1;					/* 159+ */
 } __packed;
 
+/*
+ * Block 13 - Driver Persistent Algorithm
+ */
+
+struct bdb_driver_persistence {
+	u16 hotkey_persistent_algorithm:1;
+	u16 lid_switch_persistent_algorithm:1;
+	u16 power_management_persistent_algorithm:1;
+	u16 hotkey_persistent_on_mds_twin:1;
+	u16 hotkey_persistent_on_refresh_rate:1;
+	u16 hotkey_persistent_on_restore_pipe:1;
+	u16 hotkey_persistent_on_mode:1;
+	u16 edid_persistent_on_mode:1;
+	u16 dvo_hotplug_persistent_on_mode:1;
+	u16 docking_persistent_algorithm:1;
+	u16 rsvd:6;
+	u8 persistent_max_config;
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

