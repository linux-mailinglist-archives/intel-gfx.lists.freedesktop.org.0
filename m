Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C39C51090D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8964110E56A;
	Tue, 26 Apr 2022 19:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3C910E585
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001558; x=1682537558;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ouPL5Cktrh2EIQ6uU5NZgsieqFlVDTkC5R83+Zdzv80=;
 b=Sm5nTk6NAfLUJCNnndA0FJpX5VURRi3Bon4CICbDZy9Rq25q711zgH4Z
 95yJiJ2lLTZiYdBjhFuHI9a2Ma2d8ua51kcL5fgETaiDXzK9lZRDzq1sS
 uUVHaMdxO/I7mNQBN3Ff5I/B4uVJ3Y2SluC1LpoO2lnwNgj2/nBtuWSb4
 cxh7lwhwvkOxJev8O/93fKyH2uBmsi5MQaASfbxNAarL8k+EmbcAGAoNi
 NZJyoK76ItgW0S20fKv+P6V6/yojTM6xdoXJLZCmG+YitkVMVmNW6GkmH
 5v5+difq7USmbqFbbrigjeeMkhxLPL8e6wiK5TEMi1TIBPm51wrRzZy2H Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265506195"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265506195"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="650358203"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 26 Apr 2022 12:32:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:08 +0300
Message-Id: <20220426193222.3422-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/18] drm/i915/bios: Document the mess
 around the LFP data tables
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

Document the fact that struct lvds_lfp_data_entry can't be used
directly and instead must be accessed via the data table pointers.

Also remove the bogus comment implying that there might be a
variable number of panel entries in the table. There are always
exactly 16.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 64551d206aeb..294e74c3289d 100644
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

