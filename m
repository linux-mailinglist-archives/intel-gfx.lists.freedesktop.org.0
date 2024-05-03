Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4CF8BAC67
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE2D1127E9;
	Fri,  3 May 2024 12:25:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JhXpXX5S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFFBF1128CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739135; x=1746275135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8E52rKznnFm+ODkSacENvKAVPORpfdyIuxoLCQYtHtU=;
 b=JhXpXX5Sno6+1pM6c0Hs0RFi0KITZLvvIv3Ervs6975ne5eOe9Lspmx0
 AoB7GHrnztZgWhN6aN1fwqHCMsZNrkiI59U/5X4UoZAdG0fiGGghsQjBU
 zmXBPCVCZnnAOBaP4HWQU2VDQ0PgLgY4YgQN2Bfkqo6xQaGEsvs06bKBh
 XCEJUDSG3N2Zh9miqZ46eoLiMlJ1r9ZWSBCZ8mFx59ibgFYlDqdZegRR+
 WEBwuRg+eelQS2/S4SvIvPNDjxfZ+5H4ARzuuZJ3D9g8KLwpYnblHL5RJ
 Pv7PG18wslTBVSSokC+n5Nlk28egLuwbNTc2+6OZlEz6E7jEnGdNI7Qbe Q==;
X-CSE-ConnectionGUID: 66u0K1WRSKSRriMXp6UIpg==
X-CSE-MsgGUID: QLEc9ch1TYWaJVaaCBbaBw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372762"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372762"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:34 -0700
X-CSE-ConnectionGUID: oJXuF3FvRqucmbMIq3aVrQ==
X-CSE-MsgGUID: l6kmhyS6TP+VhIQ8PAEblg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463745"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/35] drm/i915/bios: Define VBT block 15 (Dot Clock Override
 Table) contents
Date: Fri,  3 May 2024 15:24:29 +0300
Message-ID: <20240503122449.27266-16-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 15 (Dot Clock Override Table)

The contents were reverse engineered by intuition. The gen2 stuff
seems solid as I can verify that against real world VBT data. The
gen3 stuff less so as all the gen3+ VBTs I have just filla the
entire block with zeroes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 2075d53ca317..c2f73c7d9412 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -797,6 +797,36 @@ struct bdb_driver_persistence {
 	u8 persistent_max_config;
 } __packed;
 
+/*
+ * Block 15 - Dot Clock Override Table
+ */
+
+struct dot_clock_override_entry_gen2 {
+	u32 dotclock;
+	u8 n;
+	u8 m1;
+	u8 m2;
+	u8 p1:5;
+	u8 p1_div_by_2:1;
+	u8 reserved:1;
+	u8 p2_div_by_4:1;
+} __packed;
+
+struct dot_clock_override_entry_gen3 {
+	u32 dotclock;
+	u8 n;
+	u8 m1;
+	u8 m2;
+	u8 p1;
+	u8 p2;
+} __packed;
+
+struct bdb_dot_clock_override {
+	u8 row_size; /* 8 == gen2, 9 == gen3+ */
+	u8 num_rows;
+	struct dot_clock_override_entry_gen3 table[]; /* or _gen2 */
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

