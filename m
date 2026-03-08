Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOTSM7x4rWlj3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82446230680
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0689410E175;
	Sun,  8 Mar 2026 13:25:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cvUXfGCC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7CB10E16A;
 Sun,  8 Mar 2026 13:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772976311; x=1804512311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=77GguEib28APOmW2j+aSmZsmHVQ7NzeQMDiehLwoKTM=;
 b=cvUXfGCCnjJaEJsTqdbMHULFye/I7q0uM8qWn/SwNMmrVsXeqhG8e39+
 1okqMCYZkQ2g+92sKlm6izGWq+Cwd5vMU6YX5qEVDt3g7/dHVssq3ARUE
 p9J6/z6iv3jgdBTkGtCkdKBb/X8rod0YcRU+VCl9Jk9mrFYMwEdTXnzqu
 cqIBO7fLASSx+azXtrYLELc343H4A2Q1fh2jwqxfi/1GPUeqP7/yXYxUV
 UL+rOFXsiE0lVCBimZSmOpqIIelUIpm0Bcg2PVuFFNW0Y8gsHROpWcYIA
 6ToEs1U6gXhiuAbXxH7zOsuTI3LX6i9WEPrj3g9ztf7/WKju+tFGi2Nn6 Q==;
X-CSE-ConnectionGUID: j0IoqD8TSZCSbhPLDiy7aQ==
X-CSE-MsgGUID: BKLKs0K6SrOBrNsEyPMCHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77871406"
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="77871406"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 06:25:10 -0700
X-CSE-ConnectionGUID: E79rjMiJRbWcHb26HQSUAQ==
X-CSE-MsgGUID: sWvR4xW3TIq4Mis/B1btGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="217598177"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2026 06:25:09 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC v1 07/11] drm/i915/lt: align xe3plpd with V/P Override layout
Date: Sun,  8 Mar 2026 14:24:42 +0100
Message-ID: <20260308132446.3320848-8-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260308132446.3320848-1-michal.grzelak@intel.com>
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 82446230680
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Align struct xe3plpd_lt_phy_buf_trans to match layout found in
vswing/preemphasis override tables.

Move txswing & txswing_level to the end of the struct. Keep order
between txswing & txswing_level columns in xe3plpd_lt_* tables.

Move post_cursor from third field to second.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 72 +++++++++----------
 .../drm/i915/display/intel_ddi_buf_trans.h    |  6 +-
 2 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 8b369535189c..528a0ccfe8a2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1118,50 +1118,50 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 
 /* DP1.4 */
 static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
-	{ .lt = { 1, 0, 0, 21, 0  } },
-	{ .lt = { 1, 1, 0, 24, 3  } },
-	{ .lt = { 1, 2, 0, 28, 7  } },
-	{ .lt = { 0, 3, 0, 35, 13 } },
-	{ .lt = { 1, 1, 0, 27, 0  } },
-	{ .lt = { 1, 2, 0, 31, 4  } },
-	{ .lt = { 0, 3, 0, 39, 9  } },
-	{ .lt = { 1, 2, 0, 35, 0  } },
-	{ .lt = { 0, 3, 0, 41, 7  } },
-	{ .lt = { 0, 3, 0, 48, 0  } },
+	{ .lt = { 21, 0, 0 , 1, 0 } },
+	{ .lt = { 24, 0, 3 , 1, 1 } },
+	{ .lt = { 28, 0, 7 , 1, 2 } },
+	{ .lt = { 35, 0, 13, 0, 3 } },
+	{ .lt = { 27, 0, 0 , 1, 1 } },
+	{ .lt = { 31, 0, 4 , 1, 2 } },
+	{ .lt = { 39, 0, 9 , 0, 3 } },
+	{ .lt = { 35, 0, 0 , 1, 2 } },
+	{ .lt = { 41, 0, 7 , 0, 3 } },
+	{ .lt = { 48, 0, 0 , 0, 3 } },
 };
 
 /* DP2.1 */
 static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
-	{ .lt = { 0, 0, 0, 48, 0  } },
-	{ .lt = { 0, 0, 0, 43, 5  } },
-	{ .lt = { 0, 0, 0, 40, 8  } },
-	{ .lt = { 0, 0, 0, 37, 11 } },
-	{ .lt = { 0, 0, 0, 33, 15 } },
-	{ .lt = { 0, 0, 2, 46, 0  } },
-	{ .lt = { 0, 0, 2, 42, 4  } },
-	{ .lt = { 0, 0, 2, 38, 8  } },
-	{ .lt = { 0, 0, 2, 35, 11 } },
-	{ .lt = { 0, 0, 2, 33, 13 } },
-	{ .lt = { 0, 0, 4, 44, 0  } },
-	{ .lt = { 0, 0, 4, 40, 4  } },
-	{ .lt = { 0, 0, 4, 37, 7  } },
-	{ .lt = { 0, 0, 4, 33, 11 } },
-	{ .lt = { 0, 0, 8, 40, 0  } },
-	{ .lt = { 1, 0, 2, 26, 2  } },
+	{ .lt = { 48, 0, 0 , 0, 0 } },
+	{ .lt = { 43, 0, 5 , 0, 0 } },
+	{ .lt = { 40, 0, 8 , 0, 0 } },
+	{ .lt = { 37, 0, 11, 0, 0 } },
+	{ .lt = { 33, 0, 15, 0, 0 } },
+	{ .lt = { 46, 2, 0 , 0, 0 } },
+	{ .lt = { 42, 2, 4 , 0, 0 } },
+	{ .lt = { 38, 2, 8 , 0, 0 } },
+	{ .lt = { 35, 2, 11, 0, 0 } },
+	{ .lt = { 33, 2, 13, 0, 0 } },
+	{ .lt = { 44, 4, 0 , 0, 0 } },
+	{ .lt = { 40, 4, 4 , 0, 0 } },
+	{ .lt = { 37, 4, 7 , 0, 0 } },
+	{ .lt = { 33, 4, 11, 0, 0 } },
+	{ .lt = { 40, 8, 0 , 0, 0 } },
+	{ .lt = { 26, 2, 2 , 1, 0 } },
 };
 
 /* eDp */
 static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
-	{ .lt = { 1, 0, 0, 12, 0 } },
-	{ .lt = { 1, 1, 0, 13, 1 } },
-	{ .lt = { 1, 2, 0, 15, 3 } },
-	{ .lt = { 1, 3, 0, 19, 7 } },
-	{ .lt = { 1, 1, 0, 14, 0 } },
-	{ .lt = { 1, 2, 0, 16, 2 } },
-	{ .lt = { 1, 3, 0, 21, 5 } },
-	{ .lt = { 1, 2, 0, 18, 0 } },
-	{ .lt = { 1, 3, 0, 22, 4 } },
-	{ .lt = { 1, 3, 0, 26, 0 } },
+	{ .lt = { 12, 0, 0, 1, 0 } },
+	{ .lt = { 13, 0, 1, 1, 1 } },
+	{ .lt = { 15, 0, 3, 1, 2 } },
+	{ .lt = { 19, 0, 7, 1, 3 } },
+	{ .lt = { 14, 0, 0, 1, 1 } },
+	{ .lt = { 16, 0, 2, 1, 2 } },
+	{ .lt = { 21, 0, 5, 1, 3 } },
+	{ .lt = { 18, 0, 0, 1, 2 } },
+	{ .lt = { 22, 0, 4, 1, 3 } },
+	{ .lt = { 26, 0, 0, 1, 3 } },
 };
 
 static const struct intel_ddi_buf_trans xe3plpd_lt_trans_dp14 = {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index cec332090a20..7703c6c0a0cb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,11 +51,11 @@ struct dg2_snps_phy_buf_trans {
 };
 
 struct xe3plpd_lt_phy_buf_trans {
-	u8 txswing;
-	u8 txswing_level;
-	u8 pre_cursor;
 	u8 main_cursor;
+	u8 pre_cursor;
 	u8 post_cursor;
+	u8 txswing;
+	u8 txswing_level;
 };
 
 union intel_ddi_buf_trans_entry {
-- 
2.45.2

