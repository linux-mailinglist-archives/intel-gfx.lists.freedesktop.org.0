Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7708BAC65
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B2F1128CD;
	Fri,  3 May 2024 12:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bya/slRp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E9C1128CD
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739129; x=1746275129;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QJrbDqlJY+3QwepUSRV+2WJUFLjxVW3GtvHz9yvIi9Q=;
 b=Bya/slRpbeyL/NaroSVatQo9R6LaKkxvoFwo6e8tsIUdhFQV/Y99Q13+
 QNrlfCK5g3dKycarpuiEcZ3tVbo/BZX9hnMziOGVu+AE0tOpKFIXnMul2
 BZ1vJUXqptMx4dFUpV3ZdS+NgqFEzml1qNEd49yswxElero2/euAtetwr
 FXXt5QhcDBymkCF2512n487ssLJANalMVKrU3VY5UvphgJXamd6uEOhgH
 cTuMR8SXAFWPqiioCnQ1T0ROdtT0FmApPRxudG8W/ZxvdQG4ZateUej/j
 kq1gfwdO8FC3qCxHbBA2IOjz5N3visht1ZViioG9JG52PByZzzkjTYEz0 A==;
X-CSE-ConnectionGUID: B7Ka6CfTQUOW8bwzhjhsQA==
X-CSE-MsgGUID: XHXQtXl4RLiMZp5fCfNtBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372755"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372755"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:29 -0700
X-CSE-ConnectionGUID: MMt8KVydRRab5KXMUGodqw==
X-CSE-MsgGUID: 4JyTFLybQSW/74QkhE/YZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463726"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/35] drm/i915/bios: Define VBT block 10 (Mode Removal Table)
 contents
Date: Fri,  3 May 2024 15:24:27 +0300
Message-ID: <20240503122449.27266-14-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 10 (Mode Removal Table).

There seem to be two variants:
- 8 byte entries for desktop systems
- 10 byte entries for mobile systems, with the extra
  panel_flags being a bitmask of LFPs

It seems starting from HSW only the mobile variant is
used anymore.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 4f0b8be3034c..d78523cd4214 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -677,6 +677,29 @@ struct bdb_psr {
 	u32 psr2_tp2_tp3_wakeup_time;				/* 226+ */
 } __packed;
 
+/*
+ * Block 10 - Mode Removal Table
+ */
+
+struct mode_removal_table {
+	u16 x_res;
+	u16 y_res;
+	u8 bpp;
+	u16 refresh_rate;
+	u8 removal_flags;
+	u16 panel_flags;
+} __packed;
+
+struct bdb_mode_removal {
+	u8 row_size; /* 8 or 10 bytes */
+	/*
+	 * VBT spec says this is always 20 entries,
+	 * but ALM seems to have only 15 entries.
+	 */
+	struct mode_removal_table modes[];
+	/* u16 terminator; 0x0000 */
+} __packed;
+
 /*
  * Block 12 - Driver Features Data Block
  */
-- 
2.43.2

