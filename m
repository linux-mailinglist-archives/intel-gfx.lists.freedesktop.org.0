Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC08BAC78
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27AB1128DA;
	Fri,  3 May 2024 12:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4rYqJyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C4C1128DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739177; x=1746275177;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wQ6PNAOFZaFpuhPVffF1+QixX3YgzvFbRhsvTRjHuMI=;
 b=Y4rYqJyWlSfV8ak4Pp0RGfrX8ZzXddOCJ+YWin+V2UE7mbN7tmZIrOn1
 TJryo2dwXFnsvA308GRihOkUsg9ngCyQWc+EXy5bDlJXluwfqAqJVyulQ
 e62Zn91Nh3m5l5Ycf3I6sZl6zlRcHifvKLAJsFk4e1EjPtlPgK/F/43b0
 rDODnEsHddFigfSjbsLCyfCV+0kBYnlq8lqIhl1EfJytaCdv1cZ2cs0Tn
 6J+CIcYSW/5PuoWyPqdzF54WwNkzd+Sue19stLt8rAzoyYkgrcTExwhkV
 TwMc38aHMBVTsSJ/Hg1sJBURnJJgwLLzrH+gYdC//3V1pDqT18BeWJzdj w==;
X-CSE-ConnectionGUID: 6zQxmMUVQheTkmddXgZypA==
X-CSE-MsgGUID: e/6azeMmQTiP8dn+/fWDTw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372794"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372794"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:17 -0700
X-CSE-ConnectionGUID: 6lX9nHbxSeqoNVqVoSs3IA==
X-CSE-MsgGUID: hNfb7InaRaOg5StVG707xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 30/35] drm/i915/bios: Define VBT block 55 (RGB Palette Table)
 contents
Date: Fri,  3 May 2024 15:24:44 +0300
Message-ID: <20240503122449.27266-31-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 55 (RGB Palette Table).

Note that I've not actually seen any real world VBTs with this
block.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 8b4f76c54829..50d0d96fca67 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -182,6 +182,7 @@ enum bdb_block_id {
 	BDB_FIXED_SET_MODE		= 51, /* 172+ */
 	BDB_MIPI_CONFIG			= 52, /* 175+ */
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
+	BDB_RGB_PALETTE			= 54, /* 180+ */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
 	BDB_GENERIC_DTD			= 58, /* 229+ */
 	BDB_SKIP			= 254, /* VBIOS only */
@@ -1423,6 +1424,17 @@ struct bdb_mipi_sequence {
 	u8 data[]; /* up to 6 variable length blocks */
 } __packed;
 
+/*
+ * Block 55 - RGB Palette Table
+ */
+
+struct bdb_rgb_palette {
+	u8 is_enabled;
+	u8 red[256];
+	u8 blue[256];
+	u8 green[256];
+} __packed;
+
 /*
  * Block 56 - Compression Parameters
  */
-- 
2.43.2

