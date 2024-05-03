Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C718BAC79
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 14:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82AF1128E2;
	Fri,  3 May 2024 12:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAfGWU0V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1431128E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 12:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714739181; x=1746275181;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aVUrtHaIn73xfOQmMtQKUf4rHAWuggr9MBAMQxJ30Tg=;
 b=IAfGWU0V06ZeNGdQfx0VWG5OLGSn7EVImMdxm3BjXeQp71+50lRcPzJj
 rxNX3+DTH2B+DbwBLdRUMxGMnNRyTPNiojx0v9wM7oPBFPII4jp6sDvWW
 P2ACdMWIE0jIsxys2r7DOUBlsAs6q48sdrt5aCQ93G6c+YBhTlF/7zUV4
 cvnswLYhhwjFE/kczQB+kmCQ1kXGiWT2l++VKHD6Z/QOeNUgZpQHO4Lnc
 dJRR0bFwCJBaHSrop21dQn4QEByCZXQQneN3ZbWPIWr4BzN15gyc4xl4U
 pQZe6noCpXGLTNEz4Mh47/uTOC6MUglY5z7lu4itWZWFdKPYajP/C3vl/ A==;
X-CSE-ConnectionGUID: WZuKf6MGQkqd2OJlEc1O8A==
X-CSE-MsgGUID: EbH/qqTOR2S1nM+DHyLC0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10372796"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="10372796"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 05:26:21 -0700
X-CSE-ConnectionGUID: pYvCYlzVQMaZjt5X1hQYZQ==
X-CSE-MsgGUID: 4gM0rjR8S9CqsyHtmALA5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="27463932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 May 2024 05:26:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2024 15:26:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 31/35] drm/i915/bios: Define VBT block 57 (Vswing PreEmphasis
 Table) contents
Date: Fri,  3 May 2024 15:24:45 +0300
Message-ID: <20240503122449.27266-32-ville.syrjala@linux.intel.com>
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

Define the contents of VBT block 57 (Vswing PreEmphasis Table).

The contents is highly platform specific. The columns of the
table corresponding to some set of PHY/etc registers. The rows
corresponding to all legal vswing+pre-emphasis combinations
(ie. should be 10 rows in each table). And each table
corresponds to a platform specific (mostly undocumented)
mapping based on link rate/eDP low-vswing/etc. parameters.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index 50d0d96fca67..0e5a2bf429f4 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -184,6 +184,7 @@ enum bdb_block_id {
 	BDB_MIPI_SEQUENCE		= 53, /* 177+ */
 	BDB_RGB_PALETTE			= 54, /* 180+ */
 	BDB_COMPRESSION_PARAMETERS	= 56, /* 213+ */
+	BDB_VSWING_PREEMPH		= 57, /* 218+ */
 	BDB_GENERIC_DTD			= 58, /* 229+ */
 	BDB_SKIP			= 254, /* VBIOS only */
 };
@@ -1486,6 +1487,16 @@ struct bdb_compression_parameters {
 	struct dsc_compression_parameters_entry data[16];
 } __packed;
 
+/*
+ * Block 57 -  Vswing PreEmphasis Table
+ */
+
+struct bdb_vswing_preemph {
+	u8 num_tables;
+	u8 num_columns;
+	u32 tables[];
+} __packed;
+
 /*
  * Block 58 - Generic DTD Block
  */
-- 
2.43.2

