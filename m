Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB848BAC6A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F6C1128D1;
	Fri,  3 May 2024 12:25:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JI5GqL7I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D081128D1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739140; x=1746275140;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ExcdkURlyZLBzqCYZEpI0midmF70YeYdbY2bah7mPLM=;
 b=JI5GqL7IIisZiT3BOJc5fH9rz+O5yqkMlsOF4Lt+a5iEK2msyWIBqdiA
 GXhXAFI+Q0Htgr3tPvM7CJ2md59zfok+h3tvXtOnPF6cpr3TIhGNyL5hT
 2ljwGWLq5HdmYtjgfljsF+JrhzsUaSgvj+O2eNhGYzfV3RXl3t8Srfo5u
 y3GqBL6eetF/+kxJDrHPAoCK7QihcA/2yfv1eKfIKmcfcRJzX7PxTS2Y7
 w5UjSgT9OhcCy6EZa9HrB8Fja3PV/GR0/UjvrbltRrGf73zv3FvEi9I+P
 yP9/OIURvQswAUzQ4Ay2wAts/+CsqlVBq28M+EOnC2vlogj8HbdCru1Ah g==;
X-CSE-ConnectionGUID: M4YLwU0jQfyl19pM5vUhzw==
X-CSE-MsgGUID: W3WmbwuxTH+7ejzO5wUJbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372766"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372766"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:40 -0700
X-CSE-ConnectionGUID: N6Pa+0K4S2aGza8nRPd9Yw==
X-CSE-MsgGUID: L9RCwd6HS2GbUmLCw1URrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463751"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/35] drm/i915/bios: Define VBT block 17 (SV Test Functions)
 contents
Date: Fri,  3 May 2024 15:24:31 +0300
Message-ID: <20240503122449.27266-18-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 17 (SV Test Functions).
Nothing real here for us, but might as well define it for
completeness.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index b836dee09f59..c97bca5d12d1 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -156,6 +156,7 @@ enum bdb_block_id {
 	BDB_EXT_TABLE_PTRS		= 14, /* VBIOS only */
 	BDB_DOT_CLOCK_OVERRIDE		= 15,
 	BDB_DISPLAY_SELECT		= 16,
+	BDB_SV_TEST_FUNCTIONS		= 17,
 	BDB_DRIVER_ROTATION		= 18,
 	BDB_DISPLAY_REMOVE		= 19,
 	BDB_OEM_CUSTOM			= 20,
@@ -836,6 +837,14 @@ struct bdb_dot_clock_override {
 	struct dot_clock_override_entry_gen3 table[]; /* or _gen2 */
 } __packed;
 
+/*
+ * Block 17 - SV Test Functions
+ */
+
+struct bdb_sv_test_functions {
+	u8 sv_bits[8];
+} __packed;
+
 /*
  * Block 22 - SDVO LVDS General Options
  */
-- 
2.43.2

