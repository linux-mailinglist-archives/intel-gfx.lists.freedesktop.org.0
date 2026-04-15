Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHaBDJ4j4GmtcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E2E40914E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E1510E7F5;
	Wed, 15 Apr 2026 23:47:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kvx5+cbG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9E710E7DA;
 Wed, 15 Apr 2026 23:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296836; x=1807832836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+EoBrmoXPiWQJLqYGHYiMwFgZfUMmNnMrSf3FBkmUx8=;
 b=Kvx5+cbGd/RiHprNzQ/3MO+dRqoSedJILbQW3KHuWtl1Mbro8pTSkEZp
 L1StlbCZvJ9K+U7RO1T0Z8eVmug5MF0mPsmISFMc3YZhHobH3CxTm2ie4
 GyS4z+kiWWgHZz9W52MZ/4Wbq0OTvd6EmOmyAEM4kMJCe5G29jCCT/8BQ
 cVFgETJN+l97gQJkHgDClfstpKc7F+loQpDD2OICLHIN1K8P3r4AMl58c
 vHLhjM0d79ZjundPrOtDqQM2EyzGCn9n6kGAMCncce3j0a5GllaPKRVGw
 8ERcLpXKqnIf+YOXg3LA3bANB+2gHTbpPgE89hZhHBbU1xHKH41xdIRSf g==;
X-CSE-ConnectionGUID: GgOzE82MSmuNkacCn9Aq7A==
X-CSE-MsgGUID: cxVahdRAQLWs4sxpLQPsCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403506"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403506"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:16 -0700
X-CSE-ConnectionGUID: OgLAdfwmTjWcKjN5pCHYsA==
X-CSE-MsgGUID: QFWQti39Te+lwzMidNUm9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511198"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:15 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 17/32] drm/i915/bios: shrink all LT's VS/PE tables
Date: Thu, 16 Apr 2026 01:46:24 +0200
Message-ID: <20260415234639.3577774-18-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 05E2E40914E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index f7cfdfa76db59..2d307300a7dcb 100644
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

