Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D58B8BAC61
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C5A1128B9;
	Fri,  3 May 2024 12:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rk9aF6NX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25FD1128B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739118; x=1746275118;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CLDgG/EIpa/UMcY1EsygWHPr8Fcgmu9qIcVaGW20D1Q=;
 b=Rk9aF6NX2cGz02kCUIer9zMw7uGFq3c1g+jENNOnLwTWAQahIyxa08Xl
 wsndMjpnxAq9yfDLLC9mHsmjVr9Uaj9ncLE4sOdOqHFf1hWtg3s+Bk5GB
 0e8RCU64sBHvfX9Dwk9uC2dzHVgFolj1ZfJ1Yn8IkEtKxNWXN+hIOh4kI
 YREdDAKky53KvE/A1tBnhQt4rmn7Bdq9I3jvbEdf988IECqrTk8BvPkL+
 ebamncK3qUnaMqaXzKisv7c5iOvnAF4aqLZOieesFUL3mf6ePE+5/sPpE
 /lvntZ0ZXXjsYWNXL+qw5TQnSpMINQV3pYF1K/Sq483W91lGOcPupES/b Q==;
X-CSE-ConnectionGUID: 4J3raIvyTAa+t6NZbFwvDQ==
X-CSE-MsgGUID: Rpd0altaRRqJHbpbb5xNiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372746"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372746"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:25:17 -0700
X-CSE-ConnectionGUID: FeMNDGRySTmj5TrQHaJ18Q==
X-CSE-MsgGUID: zI2Al6ryThq0mJTytGnf2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:25:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:25:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/35] drm/i915/bios: Define VBT block 3 (Display Toggle
 Option) contents
Date: Fri,  3 May 2024 15:24:23 +0300
Message-ID: <20240503122449.27266-10-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 3 (Display Toggle Option).

On modern VBTs this is just a single byte, but on ALM there is
also some extra to do with toggle lists or something.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 18f54311a6e8..7df0a6044425 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -141,7 +141,7 @@ struct bdb_header {
 enum bdb_block_id {
 	BDB_GENERAL_FEATURES		= 1,
 	BDB_GENERAL_DEFINITIONS		= 2,
-	BDB_OLD_TOGGLE_LIST		= 3,
+	BDB_DISPLAY_TOGGLE		= 3,
 	BDB_MODE_SUPPORT_LIST		= 4,
 	BDB_GENERIC_MODE_TABLE		= 5,
 	BDB_EXT_MMIO_REGS		= 6, /* VBIOS only */
@@ -561,6 +561,16 @@ struct bdb_general_definitions {
 	u8 devices[];
 } __packed;
 
+/*
+ * Block 3 - Display Toggle Option Block
+ */
+
+struct bdb_display_toggle {
+	u8 feature_bits;
+	u16 num_entries;					/* ALM only */
+	u16 list[];						/* ALM only */
+} __packed;
+
 /*
  * Block 9 - SRD Feature Block
  */
-- 
2.43.2

