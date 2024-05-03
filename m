Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFC78BAC77
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCA91128E5;
	Fri,  3 May 2024 12:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVwnYLeg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079051128E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739175; x=1746275175;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=miSOVHPdc2RUpSW5CuXVUu9sEmouadbKRzFpYLA1Rwg=;
 b=mVwnYLegSWG+P73Sg647x1YGall0Vwd8/SJykcx0kgt9u8IdbV64Vnj2
 hfc3jgKVr6BGeZKdUeZnQOtk2govtOA5pf5OT4W7ICgFvyuayZBj7s5DW
 VRgUpQHCQKXYzTqUCGa4pLXUoJS0YamzngatNJFjALxHtub88f9oYDOYL
 3WRV2iK0tu9XkibTWaVa8BLR3qAjNPaa3pOlwioVdNoxf03qqh/QEIyeG
 K74tHbxkPZIAOSmoFVFVXVzMyJoQ495kU8GhGzgChLcmam9OIveNqWfWl
 CnYmgN0s/HcJt77aoWAQogE0Qp+u3nqzUf2Bt0QAj9Ki2EXAlfGRjv2zS w==;
X-CSE-ConnectionGUID: Aa9UHIEzSMmTzAUP9zHY+A==
X-CSE-MsgGUID: N1Mjn5SrQniqoY8LEh2zPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372792"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372792"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:14 -0700
X-CSE-ConnectionGUID: YB2s7wDjQgOU1kIJ2RP05A==
X-CSE-MsgGUID: zbV7V+3QR223B4W7UDlH0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463901"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 29/35] drm/i915/bios: Define VBT block 51 (Fixed Set Mode
 Table) contents
Date: Fri,  3 May 2024 15:24:43 +0300
Message-ID: <20240503122449.27266-30-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 51 (Fixed Set Mode Table).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 5f1f485f8bf7..8b4f76c54829 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -179,6 +179,7 @@ enum bdb_block_id {
 	BDB_LFP_POWER			= 44,
 	BDB_EDP_BFI			= 45, /* 160+ */
 	BDB_CHROMATICITY		= 46, /* 169+ */
+	BDB_FIXED_SET_MODE		= 51, /* 172+ */
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
@@ -1390,6 +1391,16 @@ struct bdb_chromaticity {
 	struct chromaticity chromaticity[16];
 } __packed;
 
+/*
+ * Block 51 - Fixed Set Mode Table
+ */
+
+struct bdb_fixed_set_mode {
+	u8 enable;
+	u32 x_res;
+	u32 y_res;
+} __packed;
+
 /*
  * Block 52 - MIPI Configuration Block
  */
-- 
2.43.2

