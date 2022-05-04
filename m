Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B551A318
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8322A10ECC0;
	Wed,  4 May 2022 15:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1EF10ECC0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676697; x=1683212697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qGzAbFRULJ5Wsh5SlJFmQayFjV8Fc58FMseYsAU/nNI=;
 b=czPriWciw0VYNRzWvzoXgUzyP6VCKlIw3ZhqKLpmfXmfkC3BCmMhGykH
 VAIC/p6rGEOA/AJrw21tVp0VbUYH5uLfoJ5UiylAW/CYm1SPhy1WHFts8
 4U2evdpsNrf554NPzEejVwRRoSF1XWbIFYtEugkj5JFaYMrvUrL6T3ZIr
 j3N+82+9iv1mSXcV4zgDpN+PIrds8RTEGibbJKcQZfXGNSsZ78VtXElRj
 qukTYfWrMYzGiGKKyPs9wwlyeaXxW67h+kQP1uVuXSiRh66VcG4y2uaFB
 zcJjPoGqNtdUW+7lPy3E4Qk1Bj9lO48pe2bwvjO6DESEEZXe96txvvSr8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330779000"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="330779000"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="653753779"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 04 May 2022 08:04:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:04:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:35 +0300
Message-Id: <20220504150440.13748-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/bios: Document the mess around
 the LFP data tables
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Document the fact that struct lvds_lfp_data_entry can't be used
directly and instead must be accessed via the data table pointers.

Also remove the bogus comment implying that there might be a
variable number of panel entries in the table. There are always
exactly 16.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 2554f4b9b4da..4b98bab3b890 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -735,7 +735,7 @@ struct lvds_lfp_data_ptr {
 } __packed;
 
 struct bdb_lvds_lfp_data_ptrs {
-	u8 lvds_entries; /* followed by one or more lvds_data_ptr structs */
+	u8 lvds_entries;
 	struct lvds_lfp_data_ptr ptr[16];
 	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
 } __packed;
@@ -769,6 +769,11 @@ struct lvds_pnp_id {
 	u8 mfg_year;
 } __packed;
 
+/*
+ * For reference only. fp_timing has variable size so
+ * the data must be accessed using the data table pointers.
+ * Do not use this directly!
+ */
 struct lvds_lfp_data_entry {
 	struct lvds_fp_timing fp_timing;
 	struct lvds_dvo_timing dvo_timing;
-- 
2.35.1

