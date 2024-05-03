Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBE28BAC7D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D44F11290B;
	Fri,  3 May 2024 12:26:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOI6Txwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEFC11290B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739192; x=1746275192;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WqUQx2hyTAbceSRswype6IxpgKGlX1DuC6HUsxgNDFc=;
 b=bOI6TxwrIDwJpfFTZDgdI2eLG902ICI3/iGtCbpYxfods6lDCpLu4zJU
 uz2slKLDjGSnbUkeTkUOTsyQIKUEM7qWp/MnT4fIn4NG/LAN8kbCwxeMd
 JvIF/V+N2ACtfzH7OGCXUMZ0aMSc7+leZrcmrwpQnIXh+5adhMjs1TLij
 r9mJhtGFfHfjjQF5AbBsaSTOKFvBpYFWjBMpIHEzoNhAae95Whtkhrsqb
 ZooaQFrXU3RY8NP1KPMGRG15bST6jnQpKpYfLkbCtLJMI5R4424icWSJK
 Asj5GmT3yn9itshT6HOMnMRXkj81Pe2CFuz62poFztOrWd7+Ev2km1sjx A==;
X-CSE-ConnectionGUID: y8HH/Ij4SCqPPUQQx69bIg==
X-CSE-MsgGUID: jF8gXtJQTsG4xryldyFwhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372805"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372805"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:31 -0700
X-CSE-ConnectionGUID: Mjy+E28PTMGaeXvVQofCBQ==
X-CSE-MsgGUID: TtGWKs7MSvy1+rkYMQ1R+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463970"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 35/35] drm/i915/bios: Define VBT block 253 (PRD Table) contents
Date: Fri,  3 May 2024 15:24:49 +0300
Message-ID: <20240503122449.27266-36-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 253 (PRD Table).

Unfortunately the block has two definitions, with the cutoff
supposedly happening on ICL vs. TGL. Also according to some
notes it might be that the VBIOS (if that's still a thing)
still uses the old definition even on TGL+. Quite the mess.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 338f6133bb1e..9d5b87ff1728 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -189,6 +189,7 @@ enum bdb_block_id {
 	BDB_VSWING_PREEMPH		= 57, /* 218+ */
 	BDB_GENERIC_DTD			= 58, /* 229+ */
 	BDB_INT15_HOOK			= 252, /* VBIOS only */
+	BDB_PRD_TABLE			= 253,
 	BDB_SKIP			= 254, /* VBIOS only */
 };
 
@@ -1576,4 +1577,29 @@ struct bdb_generic_dtd {
 	struct generic_dtd_entry dtd[];	/* up to 24 DTD's */
 } __packed;
 
+/*
+ * Block 253 - PRD Table
+ */
+
+struct prd_entry_old {
+	u8 displays_attached;
+	u8 display_in_pipe_a;
+	u8 display_in_pipe_b;
+} __packed;
+
+struct bdb_prd_table_old {
+	struct prd_entry_old list[0];				/* ???-216 */
+	u16 num_entries;					/* ???-216 */
+} __packed;
+
+struct prd_entry_new {
+	u16 primary_display;
+	u16 secondary_display;
+} __packed;
+
+struct bdb_prd_table_new {
+	u16 num_entries;					/* 217+ */
+	struct prd_entry_new list[];				/* 217+ */
+} __packed;
+
 #endif /* _INTEL_VBT_DEFS_H_ */
-- 
2.43.2

