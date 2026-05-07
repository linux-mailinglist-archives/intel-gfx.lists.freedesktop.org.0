Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIwNGKDr+2llIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C254E1FBB
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F4910EF4D;
	Thu,  7 May 2026 01:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PkKbo49g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E63510EF4C;
 Thu,  7 May 2026 01:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117533; x=1809653533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6XT7gEdaIUaARB9D9sAc0fumjaYURF1WzJI+wp6DjpQ=;
 b=PkKbo49g/gLIMWhXtOgDpzHccRudUxxN63W5s/0J58gP1I6VdKQ3L27H
 y8/QZ9ueDGXQ2Wz9gXhbzs4cpb6tf6ijs2fKIU5cvd1GESCbXTONnaayR
 ITEj1G5TWN54M+xNjQnHKr1KeCDVtqELR1mg7Pw33uoUVLo4eJMHz6Q+8
 SziSkYiAHWr6IET4mI0WwK2YcS5utKMAy6aORajVSohvgfo1RU5d497c8
 hmHrG3VaE4UfnElnVbKl4ULaLLu0eVp5gVBCs9pDxZdztyZWmKEV93J4b
 8rp1fyozsHnL9VWSOO1mmKYg47XW2xCMM1RJgjCDQs8bFPraI2OED4f9J g==;
X-CSE-ConnectionGUID: DJQTW9YBTjCshgdqjxQ/Vg==
X-CSE-MsgGUID: bb4c919gRCOnyCbsenBKpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089038"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089038"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:13 -0700
X-CSE-ConnectionGUID: /NdUMU12QEePifeR4rdEpA==
X-CSE-MsgGUID: ZXQD5CDoS7yM6nYP0giJ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692805"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:13 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 16/31] drm/i915/bios: shrink all LT's VS/PE tables
Date: Thu,  7 May 2026 03:31:22 +0200
Message-ID: <20260507013137.527510-17-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260507013137.527510-1-michal.grzelak@intel.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 36C254E1FBB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Each value present in LT's VS/PE-O table is stored on u32. In order to
match values' size this causes xe3plpd_lt_phy_buf_trans to increase it's
size.

Nevertheless, the actual value from each LT's VS/PE-O table is fully
encoded in the lowest byte. Extract the lowest byte by casting to u8 and
using it as deparsed value. This way there is no need to inflate default
tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          |  6 +++---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 10 +++++-----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2328429b562df..1b14cffe641ae 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2202,9 +2202,9 @@ parse_vswing_preemph_lt(union intel_ddi_buf_trans_entry **bufs_mtrx,
 			vals = &tables[offset];
 
 			entry = &bufs_mtrx[idx][row];
-			entry->lt.main_cursor = vals[0];
-			entry->lt.pre_cursor = vals[1];
-			entry->lt.post_cursor = vals[2];
+			entry->lt.main_cursor = (u8) vals[0];
+			entry->lt.pre_cursor = (u8) vals[1];
+			entry->lt.post_cursor = (u8) vals[2];
 
 			offset += block->num_columns;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index bc4bc80ba6588..ac9acdec6d298 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,11 +51,11 @@ struct dg2_snps_phy_buf_trans {
 };
 
 struct xe3plpd_lt_phy_buf_trans {
-	u32 main_cursor;
-	u32 pre_cursor;
-	u32 post_cursor;
-	u32 txswing;
-	u32 txswing_level;
+	u8 main_cursor;
+	u8 pre_cursor;
+	u8 post_cursor;
+	u8 txswing;
+	u8 txswing_level;
 };
 
 union intel_ddi_buf_trans_entry {
-- 
2.45.2

