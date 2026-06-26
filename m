Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bqCGB44OP2ojOgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B99D36D08F3
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2026 01:43:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=J3R8ONq8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C32910F73A;
	Fri, 26 Jun 2026 23:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D342310F735;
 Fri, 26 Jun 2026 23:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782517385; x=1814053385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4F5kN7pBsiuOW94COCzpE7Jgwiww3nl+EUIYz/yuxs=;
 b=J3R8ONq8koH1xz6WGyKTclzUlXEVM+xnBi1w8DwBPfYnxGRlZRU6qfr4
 L/NtWdpE6whMYBqrDmLGB5SAsP1IZ5dEUhnk6/D/AixA3/zQ6PuWGJi4J
 lMix6obPPkUvK7h6pd7KV0CaEWYaZBgh8Rq/5ZoIUXw4sMFdtNuqp8gbY
 +3PWH4OHZ5iLD1MGNOi6JBUExKFh1/wubz6Was6Ss5ghxZrn+HGFSA+h9
 y8LZGcgMI3sRmYLNITaqMhx8ifMWRVinz5vrWn/KuCzxj668uQgdmKXoP
 kKnAMbVTP4IrMuCV6uIw7AXLgZoayCB/J9m+kECeErydx20B1JGHiR1r5 A==;
X-CSE-ConnectionGUID: Vthir3bZSfa53DIa9VZ7Pw==
X-CSE-MsgGUID: 00m6u11aTHyWRYSUl/3L4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="85861089"
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="85861089"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 16:43:05 -0700
X-CSE-ConnectionGUID: urP4soafS5K/uskkRvyRGA==
X-CSE-MsgGUID: NfiQtaQ/T2CX83S8jv941Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,227,1774335600"; d="scan'208";a="248073749"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa007.fm.intel.com with ESMTP; 26 Jun 2026 16:43:03 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v9 5/8] drm/i915/buf_trans: deconstify
 intel_ddi_buf_trans_entry
Date: Sat, 27 Jun 2026 01:42:43 +0200
Message-ID: <20260626234246.2446451-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260626234246.2446451-1-michal.grzelak@intel.com>
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B99D36D08F3

Current implementation of Vswing / Pre-emphasis Override allocates
ddi_buf_trans_entry on intel_bios_init() and overwrites it with deparsed
data from VBT#57 on each encoder->get_buf_trans() call. Remove const
qualifier from definition of struct intel_ddi_buf_trans_entry in order
to avoid discarding const qualifier by casting to (void *). Doing so
requires deconstifying DDI tables as well.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 120 +++++++++---------
 .../drm/i915/display/intel_ddi_buf_trans.h    |   2 +-
 2 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 4cd1e4d76c7af..2fad9909c78bd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -16,7 +16,7 @@
  * them for both DP and FDI transports, allowing those ports to
  * automatically adapt to HDMI connections as well
  */
-static const union intel_ddi_buf_trans_entry _hsw_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _hsw_trans_dp[] = {
 	{ .hsw = { 0x00FFFFFF, 0x0006000E, 0x0 } },
 	{ .hsw = { 0x00D75FFF, 0x0005000A, 0x0 } },
 	{ .hsw = { 0x00C30FFF, 0x00040006, 0x0 } },
@@ -33,7 +33,7 @@ static const struct intel_ddi_buf_trans hsw_trans_dp = {
 	.num_entries = ARRAY_SIZE(_hsw_trans_dp),
 };
 
-static const union intel_ddi_buf_trans_entry _hsw_trans_fdi[] = {
+static union intel_ddi_buf_trans_entry _hsw_trans_fdi[] = {
 	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },
 	{ .hsw = { 0x00D75FFF, 0x000F000A, 0x0 } },
 	{ .hsw = { 0x00C30FFF, 0x00060006, 0x0 } },
@@ -50,7 +50,7 @@ static const struct intel_ddi_buf_trans hsw_trans_fdi = {
 	.num_entries = ARRAY_SIZE(_hsw_trans_fdi),
 };
 
-static const union intel_ddi_buf_trans_entry _hsw_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _hsw_trans_hdmi[] = {
 							/* Idx	NT mV d	T mV d	db	*/
 	{ .hsw = { 0x00FFFFFF, 0x0006000E, 0x0 } },	/* 0:	400	400	0	*/
 	{ .hsw = { 0x00E79FFF, 0x000E000C, 0x0 } },	/* 1:	400	500	2	*/
@@ -72,7 +72,7 @@ static const struct intel_ddi_buf_trans hsw_trans_hdmi = {
 	.hdmi_default_entry = 6,
 };
 
-static const union intel_ddi_buf_trans_entry _bdw_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _bdw_trans_edp[] = {
 	{ .hsw = { 0x00FFFFFF, 0x00000012, 0x0 } },
 	{ .hsw = { 0x00EBAFFF, 0x00020011, 0x0 } },
 	{ .hsw = { 0x00C71FFF, 0x0006000F, 0x0 } },
@@ -89,7 +89,7 @@ static const struct intel_ddi_buf_trans bdw_trans_edp = {
 	.num_entries = ARRAY_SIZE(_bdw_trans_edp),
 };
 
-static const union intel_ddi_buf_trans_entry _bdw_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _bdw_trans_dp[] = {
 	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },
 	{ .hsw = { 0x00D75FFF, 0x000E000A, 0x0 } },
 	{ .hsw = { 0x00BEFFFF, 0x00140006, 0x0 } },
@@ -106,7 +106,7 @@ static const struct intel_ddi_buf_trans bdw_trans_dp = {
 	.num_entries = ARRAY_SIZE(_bdw_trans_dp),
 };
 
-static const union intel_ddi_buf_trans_entry _bdw_trans_fdi[] = {
+static union intel_ddi_buf_trans_entry _bdw_trans_fdi[] = {
 	{ .hsw = { 0x00FFFFFF, 0x0001000E, 0x0 } },
 	{ .hsw = { 0x00D75FFF, 0x0004000A, 0x0 } },
 	{ .hsw = { 0x00C30FFF, 0x00070006, 0x0 } },
@@ -123,7 +123,7 @@ static const struct intel_ddi_buf_trans bdw_trans_fdi = {
 	.num_entries = ARRAY_SIZE(_bdw_trans_fdi),
 };
 
-static const union intel_ddi_buf_trans_entry _bdw_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _bdw_trans_hdmi[] = {
 							/* Idx	NT mV d	T mV df	db	*/
 	{ .hsw = { 0x00FFFFFF, 0x0007000E, 0x0 } },	/* 0:	400	400	0	*/
 	{ .hsw = { 0x00D75FFF, 0x000E000A, 0x0 } },	/* 1:	400	600	3.5	*/
@@ -144,7 +144,7 @@ static const struct intel_ddi_buf_trans bdw_trans_hdmi = {
 };
 
 /* Skylake H and S */
-static const union intel_ddi_buf_trans_entry _skl_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _skl_trans_dp[] = {
 	{ .hsw = { 0x00002016, 0x000000A0, 0x0 } },
 	{ .hsw = { 0x00005012, 0x0000009B, 0x0 } },
 	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
@@ -162,7 +162,7 @@ static const struct intel_ddi_buf_trans skl_trans_dp = {
 };
 
 /* Skylake U */
-static const union intel_ddi_buf_trans_entry _skl_u_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _skl_u_trans_dp[] = {
 	{ .hsw = { 0x0000201B, 0x000000A2, 0x0 } },
 	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
 	{ .hsw = { 0x80007011, 0x000000CD, 0x1 } },
@@ -180,7 +180,7 @@ static const struct intel_ddi_buf_trans skl_u_trans_dp = {
 };
 
 /* Skylake Y */
-static const union intel_ddi_buf_trans_entry _skl_y_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _skl_y_trans_dp[] = {
 	{ .hsw = { 0x00000018, 0x000000A2, 0x0 } },
 	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
 	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
@@ -198,7 +198,7 @@ static const struct intel_ddi_buf_trans skl_y_trans_dp = {
 };
 
 /* Kabylake H and S */
-static const union intel_ddi_buf_trans_entry _kbl_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _kbl_trans_dp[] = {
 	{ .hsw = { 0x00002016, 0x000000A0, 0x0 } },
 	{ .hsw = { 0x00005012, 0x0000009B, 0x0 } },
 	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
@@ -216,7 +216,7 @@ static const struct intel_ddi_buf_trans kbl_trans_dp = {
 };
 
 /* Kabylake U */
-static const union intel_ddi_buf_trans_entry _kbl_u_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _kbl_u_trans_dp[] = {
 	{ .hsw = { 0x0000201B, 0x000000A1, 0x0 } },
 	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
 	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
@@ -234,7 +234,7 @@ static const struct intel_ddi_buf_trans kbl_u_trans_dp = {
 };
 
 /* Kabylake Y */
-static const union intel_ddi_buf_trans_entry _kbl_y_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _kbl_y_trans_dp[] = {
 	{ .hsw = { 0x00001017, 0x000000A1, 0x0 } },
 	{ .hsw = { 0x00005012, 0x00000088, 0x0 } },
 	{ .hsw = { 0x80007011, 0x000000CD, 0x3 } },
@@ -255,7 +255,7 @@ static const struct intel_ddi_buf_trans kbl_y_trans_dp = {
  * Skylake/Kabylake H and S
  * eDP 1.4 low vswing translation parameters
  */
-static const union intel_ddi_buf_trans_entry _skl_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _skl_trans_edp[] = {
 	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
 	{ .hsw = { 0x00004013, 0x000000A9, 0x0 } },
 	{ .hsw = { 0x00007011, 0x000000A2, 0x0 } },
@@ -277,7 +277,7 @@ static const struct intel_ddi_buf_trans skl_trans_edp = {
  * Skylake/Kabylake U
  * eDP 1.4 low vswing translation parameters
  */
-static const union intel_ddi_buf_trans_entry _skl_u_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _skl_u_trans_edp[] = {
 	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
 	{ .hsw = { 0x00004013, 0x000000A9, 0x0 } },
 	{ .hsw = { 0x00007011, 0x000000A2, 0x0 } },
@@ -299,7 +299,7 @@ static const struct intel_ddi_buf_trans skl_u_trans_edp = {
  * Skylake/Kabylake Y
  * eDP 1.4 low vswing translation parameters
  */
-static const union intel_ddi_buf_trans_entry _skl_y_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _skl_y_trans_edp[] = {
 	{ .hsw = { 0x00000018, 0x000000A8, 0x0 } },
 	{ .hsw = { 0x00004013, 0x000000AB, 0x0 } },
 	{ .hsw = { 0x00007011, 0x000000A4, 0x0 } },
@@ -318,7 +318,7 @@ static const struct intel_ddi_buf_trans skl_y_trans_edp = {
 };
 
 /* Skylake/Kabylake U, H and S */
-static const union intel_ddi_buf_trans_entry _skl_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _skl_trans_hdmi[] = {
 	{ .hsw = { 0x00000018, 0x000000AC, 0x0 } },
 	{ .hsw = { 0x00005012, 0x0000009D, 0x0 } },
 	{ .hsw = { 0x00007011, 0x00000088, 0x0 } },
@@ -339,7 +339,7 @@ static const struct intel_ddi_buf_trans skl_trans_hdmi = {
 };
 
 /* Skylake/Kabylake Y */
-static const union intel_ddi_buf_trans_entry _skl_y_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _skl_y_trans_hdmi[] = {
 	{ .hsw = { 0x00000018, 0x000000A1, 0x0 } },
 	{ .hsw = { 0x00005012, 0x000000DF, 0x0 } },
 	{ .hsw = { 0x80007011, 0x000000CB, 0x3 } },
@@ -359,7 +359,7 @@ static const struct intel_ddi_buf_trans skl_y_trans_hdmi = {
 	.hdmi_default_entry = 8,
 };
 
-static const union intel_ddi_buf_trans_entry _bxt_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _bxt_trans_dp[] = {
 						/* Idx	NT mV diff	db  */
 	{ .bxt = { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
 	{ .bxt = { 78,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
@@ -378,7 +378,7 @@ static const struct intel_ddi_buf_trans bxt_trans_dp = {
 	.num_entries = ARRAY_SIZE(_bxt_trans_dp),
 };
 
-static const union intel_ddi_buf_trans_entry _bxt_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _bxt_trans_edp[] = {
 					/* Idx	NT mV diff	db  */
 	{ .bxt = { 26, 0, 0, 128, } },	/* 0:	200		0   */
 	{ .bxt = { 38, 0, 0, 112, } },	/* 1:	200		1.5 */
@@ -400,7 +400,7 @@ static const struct intel_ddi_buf_trans bxt_trans_edp = {
 /* BSpec has 2 recommended values - entries 0 and 8.
  * Using the entry with higher vswing.
  */
-static const union intel_ddi_buf_trans_entry _bxt_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _bxt_trans_hdmi[] = {
 						/* Idx	NT mV diff	db  */
 	{ .bxt = { 52,  0x9A, 0, 128, } },	/* 0:	400		0   */
 	{ .bxt = { 52,  0x9A, 0, 85,  } },	/* 1:	400		3.5 */
@@ -421,7 +421,7 @@ static const struct intel_ddi_buf_trans bxt_trans_hdmi = {
 };
 
 /* icl_combo_phy_trans */
-static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
+static union intel_ddi_buf_trans_entry _icl_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -440,7 +440,7 @@ static const struct intel_ddi_buf_trans icl_combo_phy_trans_dp_hbr2_edp_hbr3 = {
 	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_dp_hbr2_edp_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_edp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _icl_combo_phy_trans_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x0, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
 	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
@@ -459,7 +459,7 @@ static const struct intel_ddi_buf_trans icl_combo_phy_trans_edp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _icl_combo_phy_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _icl_combo_phy_trans_hdmi[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x60, 0x3F, 0x00, 0x00 } },	/* 450   450      0.0   */
 	{ .icl = { 0xB, 0x73, 0x36, 0x00, 0x09 } },	/* 450   650      3.2   */
@@ -476,7 +476,7 @@ static const struct intel_ddi_buf_trans icl_combo_phy_trans_hdmi = {
 	.hdmi_default_entry = ARRAY_SIZE(_icl_combo_phy_trans_hdmi) - 1,
 };
 
-static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] = {
+static union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_dp[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x33, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x47, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
@@ -495,7 +495,7 @@ static const struct intel_ddi_buf_trans ehl_combo_phy_trans_dp = {
 	.num_entries = ARRAY_SIZE(_ehl_combo_phy_trans_dp),
 };
 
-static const union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_edp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _ehl_combo_phy_trans_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
 	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
@@ -514,7 +514,7 @@ static const struct intel_ddi_buf_trans ehl_combo_phy_trans_edp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_ehl_combo_phy_trans_edp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr[] = {
+static union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
 	{ .icl = { 0x8, 0x7F, 0x38, 0x00, 0x07 } },	/* 200   250      1.9   */
@@ -533,7 +533,7 @@ static const struct intel_ddi_buf_trans jsl_combo_phy_trans_edp_hbr = {
 	.num_entries = ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _jsl_combo_phy_trans_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   200      0.0   */
 	{ .icl = { 0x8, 0x7F, 0x3F, 0x00, 0x00 } },	/* 200   250      1.9   */
@@ -552,7 +552,7 @@ static const struct intel_ddi_buf_trans jsl_combo_phy_trans_edp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_jsl_combo_phy_trans_edp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_rbr_hbr[] = {
+static union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_rbr_hbr[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
@@ -571,7 +571,7 @@ static const struct intel_ddi_buf_trans dg1_combo_phy_trans_dp_rbr_hbr = {
 	.num_entries = ARRAY_SIZE(_dg1_combo_phy_trans_dp_rbr_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _dg1_combo_phy_trans_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x48, 0x35, 0x00, 0x0A } },	/* 350   500      3.1   */
@@ -590,7 +590,7 @@ static const struct intel_ddi_buf_trans dg1_combo_phy_trans_dp_hbr2_hbr3 = {
 	.num_entries = ARRAY_SIZE(_dg1_combo_phy_trans_dp_hbr2_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_rbr_hbr[] = {
+static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_rbr_hbr[] = {
 					/* Voltage swing  pre-emphasis */
 	{ .mg = { 0x18, 0x00, 0x00 } },	/* 0              0   */
 	{ .mg = { 0x1D, 0x00, 0x05 } },	/* 0              1   */
@@ -609,7 +609,7 @@ static const struct intel_ddi_buf_trans icl_mg_phy_trans_rbr_hbr = {
 	.num_entries = ARRAY_SIZE(_icl_mg_phy_trans_rbr_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hbr2_hbr3[] = {
 					/* Voltage swing  pre-emphasis */
 	{ .mg = { 0x18, 0x00, 0x00 } },	/* 0              0   */
 	{ .mg = { 0x1D, 0x00, 0x05 } },	/* 0              1   */
@@ -628,7 +628,7 @@ static const struct intel_ddi_buf_trans icl_mg_phy_trans_hbr2_hbr3 = {
 	.num_entries = ARRAY_SIZE(_icl_mg_phy_trans_hbr2_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _icl_mg_phy_trans_hdmi[] = {
 					/* HDMI Preset	VS	Pre-emph */
 	{ .mg = { 0x1A, 0x0, 0x0 } },	/* 1		400mV	0dB */
 	{ .mg = { 0x20, 0x0, 0x0 } },	/* 2		500mV	0dB */
@@ -648,7 +648,7 @@ static const struct intel_ddi_buf_trans icl_mg_phy_trans_hdmi = {
 	.hdmi_default_entry = ARRAY_SIZE(_icl_mg_phy_trans_hdmi) - 1,
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr[] = {
+static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr[] = {
 					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
 	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
 	{ .dkl = { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB */
@@ -667,7 +667,7 @@ static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_dp_hbr = {
 	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_dp_hbr2[] = {
 					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
 	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
 	{ .dkl = { 0x5, 0x0, 0x05 } },	/* 0	1	400mV		3.5 dB */
@@ -686,7 +686,7 @@ static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_dp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_tgl_dkl_phy_trans_dp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _tgl_dkl_phy_trans_hdmi[] = {
 					/* HDMI Preset	VS	Pre-emph */
 	{ .dkl = { 0x7, 0x0, 0x0 } },	/* 1		400mV	0dB */
 	{ .dkl = { 0x6, 0x0, 0x0 } },	/* 2		500mV	0dB */
@@ -706,7 +706,7 @@ static const struct intel_ddi_buf_trans tgl_dkl_phy_trans_hdmi = {
 	.hdmi_default_entry = ARRAY_SIZE(_tgl_dkl_phy_trans_hdmi) - 1,
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr[] = {
+static union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x32, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -725,7 +725,7 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_trans_dp_hbr = {
 	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_dp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -744,7 +744,7 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_trans_dp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_dp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_trans_dp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _tgl_uy_combo_phy_trans_dp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x36, 0x00, 0x09 } },	/* 350   500      3.1   */
@@ -767,7 +767,7 @@ static const struct intel_ddi_buf_trans tgl_uy_combo_phy_trans_dp_hbr2 = {
  * Cloned the HOBL entry to comply with the voltage and pre-emphasis entries
  * that DisplayPort specification requires
  */
-static const union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_edp_hbr2_hobl[] = {
+static union intel_ddi_buf_trans_entry _tgl_combo_phy_trans_edp_hbr2_hobl[] = {
 							/* VS	pre-emp	*/
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	0	*/
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 0	1	*/
@@ -785,7 +785,7 @@ static const struct intel_ddi_buf_trans tgl_combo_phy_trans_edp_hbr2_hobl = {
 	.num_entries = ARRAY_SIZE(_tgl_combo_phy_trans_edp_hbr2_hobl),
 };
 
-static const union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr[] = {
+static union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x2F, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -804,7 +804,7 @@ static const struct intel_ddi_buf_trans rkl_combo_phy_trans_dp_hbr = {
 	.num_entries = ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _rkl_combo_phy_trans_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x50, 0x38, 0x00, 0x07 } },	/* 350   500      3.1   */
@@ -823,7 +823,7 @@ static const struct intel_ddi_buf_trans rkl_combo_phy_trans_dp_hbr2_hbr3 = {
 	.num_entries = ARRAY_SIZE(_rkl_combo_phy_trans_dp_hbr2_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_dp_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _adls_combo_phy_trans_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -842,7 +842,7 @@ static const struct intel_ddi_buf_trans adls_combo_phy_trans_dp_hbr2_hbr3 = {
 	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_dp_hbr2_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x9, 0x73, 0x3D, 0x00, 0x02 } },	/* 200   200      0.0   */
 	{ .icl = { 0x9, 0x7A, 0x3C, 0x00, 0x03 } },	/* 200   250      1.9   */
@@ -861,7 +861,7 @@ static const struct intel_ddi_buf_trans adls_combo_phy_trans_edp_hbr2 = {
 	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr3[] = {
+static union intel_ddi_buf_trans_entry _adls_combo_phy_trans_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -880,7 +880,7 @@ static const struct intel_ddi_buf_trans adls_combo_phy_trans_edp_hbr3 = {
 	.num_entries = ARRAY_SIZE(_adls_combo_phy_trans_edp_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] = {
+static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -899,7 +899,7 @@ static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr = {
 	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -913,7 +913,7 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] = {
+static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0x4, 0x50, 0x38, 0x00, 0x07 } },	/* 200   200      0.0   */
 	{ .icl = { 0x4, 0x58, 0x35, 0x00, 0x0A } },	/* 200   250      1.9   */
@@ -927,7 +927,7 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] =
 	{ .icl = { 0x4, 0x7A, 0x38, 0x00, 0x07 } },	/* 350   350      0.0   */
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
+static union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
@@ -956,7 +956,7 @@ static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_up_to_hbr2 = {
 	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_edp_hbr2),
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] = {
+static union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] = {
 					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
 	{ .dkl = { 0x7, 0x0, 0x01 } },	/* 0	0	400mV		0 dB */
 	{ .dkl = { 0x5, 0x0, 0x06 } },	/* 0	1	400mV		3.5 dB */
@@ -975,7 +975,7 @@ static const struct intel_ddi_buf_trans adlp_dkl_phy_trans_dp_hbr = {
 	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr),
 };
 
-static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr2_hbr3[] = {
+static union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr2_hbr3[] = {
 					/* VS	pre-emp	Non-trans mV	Pre-emph dB */
 	{ .dkl = { 0x7, 0x0, 0x00 } },	/* 0	0	400mV		0 dB */
 	{ .dkl = { 0x5, 0x0, 0x04 } },	/* 0	1	400mV		3.5 dB */
@@ -994,7 +994,7 @@ static const struct intel_ddi_buf_trans adlp_dkl_phy_trans_dp_hbr2_hbr3 = {
 	.num_entries = ARRAY_SIZE(_adlp_dkl_phy_trans_dp_hbr2_hbr3),
 };
 
-static const union intel_ddi_buf_trans_entry _dg2_snps_trans[] = {
+static union intel_ddi_buf_trans_entry _dg2_snps_trans[] = {
 	{ .snps = { 25, 0, 0 } },	/* VS 0, pre-emph 0 */
 	{ .snps = { 32, 0, 6 } },	/* VS 0, pre-emph 1 */
 	{ .snps = { 35, 0, 10 } },	/* VS 0, pre-emph 2 */
@@ -1013,7 +1013,7 @@ static const struct intel_ddi_buf_trans dg2_snps_trans = {
 	.hdmi_default_entry = ARRAY_SIZE(_dg2_snps_trans) - 1,
 };
 
-static const union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] = {
+static union intel_ddi_buf_trans_entry _dg2_snps_trans_uhbr[] = {
 	{ .snps = { 62, 0, 0 } },	/* preset 0 */
 	{ .snps = { 55, 0, 7 } },	/* preset 1 */
 	{ .snps = { 50, 0, 12 } },	/* preset 2 */
@@ -1037,7 +1037,7 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
 };
 
-static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
+static union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
 	{ .snps = { 26, 0, 0  } },      /* preset 0 */
 	{ .snps = { 33, 0, 6  } },      /* preset 1 */
 	{ .snps = { 38, 0, 11 } },      /* preset 2 */
@@ -1057,7 +1057,7 @@ static const struct intel_ddi_buf_trans mtl_c10_trans_dp14 = {
 };
 
 /* DP1.4 */
-static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] = {
+static union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] = {
 	{ .snps = { 20, 0, 0  } },      /* preset 0 */
 	{ .snps = { 24, 0, 4  } },      /* preset 1 */
 	{ .snps = { 30, 0, 9  } },      /* preset 2 */
@@ -1071,7 +1071,7 @@ static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] = {
 };
 
 /* DP2.0 */
-static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
+static union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
 	{ .snps = { 48, 0, 0 } },       /* preset 0 */
 	{ .snps = { 43, 0, 5 } },       /* preset 1 */
 	{ .snps = { 40, 0, 8 } },       /* preset 2 */
@@ -1091,7 +1091,7 @@ static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
 };
 
 /* HDMI2.0 */
-static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] = {
+static union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] = {
 	{ .snps = { 48, 0, 0 } },       /* preset 0 */
 	{ .snps = { 38, 4, 6 } },       /* preset 1 */
 	{ .snps = { 36, 4, 8 } },       /* preset 2 */
@@ -1117,7 +1117,7 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 };
 
 /* DP1.4 */
-static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
+static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
 	{ .lt = { 1, 0, 0, 21, 0  } },
 	{ .lt = { 1, 1, 0, 24, 3  } },
 	{ .lt = { 1, 2, 0, 28, 7  } },
@@ -1131,7 +1131,7 @@ static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
 };
 
 /* DP2.1 */
-static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
+static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
 	{ .lt = { 0, 0, 0, 48, 0  } },
 	{ .lt = { 0, 0, 0, 43, 5  } },
 	{ .lt = { 0, 0, 0, 40, 8  } },
@@ -1151,7 +1151,7 @@ static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
 };
 
 /* eDp */
-static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
+static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
 	{ .lt = { 1, 0, 0, 12, 0 } },
 	{ .lt = { 1, 1, 0, 13, 1 } },
 	{ .lt = { 1, 2, 0, 15, 3 } },
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 9698697f39177..ca2ae2ac3a44c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -69,7 +69,7 @@ union intel_ddi_buf_trans_entry {
 };
 
 struct intel_ddi_buf_trans {
-	const union intel_ddi_buf_trans_entry *entries;
+	union intel_ddi_buf_trans_entry *entries;
 	u8 num_entries;
 	u8 hdmi_default_entry;
 };
-- 
2.45.2

