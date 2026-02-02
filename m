Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKwELbEagWm0EAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CE0D1B9C
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806F510E416;
	Mon,  2 Feb 2026 21:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDDexQXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FAD10E406;
 Mon,  2 Feb 2026 21:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770068652; x=1801604652;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=NdXJUXcZSWQLf4rWtFTSoCjr1YghpV1BQaM/tsMmpN0=;
 b=kDDexQXqSiQl9FztCcT5cddbY/4m13u+zk09WBpM2Q8DU6tLv8a8qP7B
 NDpf7bYMWj/qe8SCd3B7QcqaTUsJVclk6EipIM7XWpw19N4RF7k0Mtuk4
 XfZktIxGeC7Kzk22bb4hLKelb+lzFXAYhzI0GbH5aQi5z9C9xTy7IFLa0
 dLMsR/9iUVKwD+vFTzoeLQUMl5guGQIULET7hXD1RQSFNfs9CHTySShD0
 TX9qyUKioualIYBmhVOn/6CKPZYruqy9gH9k1Y/s4+wYpGgdatboMWci6
 E/ibHLj/5EC1o2KTIuWFi40iTbF1+yDgb/4UTT7r/g6CNDaagnCWT8/ld Q==;
X-CSE-ConnectionGUID: 9ItW3eQaTRmty9ChA7hODg==
X-CSE-MsgGUID: oa2BIQX1R5ynIkwz8UBDtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="58814331"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="58814331"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:11 -0800
X-CSE-ConnectionGUID: C2CfbaUDSm+jrBfTjoYB1A==
X-CSE-MsgGUID: xGmSQH5WQqqchy2uXvtetQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209646824"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.51])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 02 Feb 2026 18:43:10 -0300
Subject: [PATCH 04/16] drm/xe/xe3p_lpg: Add new PAT table
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-nvl-p-upstreaming-v1-4-653e4ff105dc@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 16CE0D1B9C
X-Rspamd-Action: no action

From: Matt Roper <matthew.d.roper@intel.com>

PAT programming for Xe3p_LPG is more similar to Xe2 and Xe3 than it is
to Xe3p_XPC.  Compared to Xe2/Xe3 we have:

* There's a slight update to the PAT table, where two new indices (18
  and 19) are added to expose a new "WB - Transient App" L3 caching
  mode.

* The PTA_MODE entry must be programmed differently according to the
  media type, and both differ from Xe2.

There are no changes to the underlying registers, so the Xe2 ops can be
re-used for Xe3p.

Bspec: 71582, 74160
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_pat.c | 55 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
index 5776ea67fe02..3ba89e80be1f 100644
--- a/drivers/gpu/drm/xe/xe_pat.c
+++ b/drivers/gpu/drm/xe/xe_pat.c
@@ -123,7 +123,8 @@ static const struct xe_pat_table_entry xelpg_pat_table[] = {
  *   - no_promote:  0=promotable, 1=no promote
  *   - comp_en:     0=disable, 1=enable
  *   - l3clos:      L3 class of service (0-3)
- *   - l3_policy:   0=WB, 1=XD ("WB - Transient Display"), 3=UC
+ *   - l3_policy:   0=WB, 1=XD ("WB - Transient Display"),
+ *                  2=XA ("WB - Transient App" for Xe3p), 3=UC
  *   - l4_policy:   0=WB, 1=WT, 3=UC
  *   - coh_mode:    0=no snoop, 2=1-way coherent, 3=2-way coherent
  *
@@ -252,6 +253,44 @@ static const struct xe_pat_table_entry xe3p_xpc_pat_table[] = {
 	[31] = XE3P_XPC_PAT( 0, 3, 0, 0, 3 ),
 };
 
+static const struct xe_pat_table_entry xe3p_primary_pat_pta = XE2_PAT(0, 0, 0, 0, 0, 3);
+static const struct xe_pat_table_entry xe3p_media_pat_pta = XE2_PAT(0, 0, 0, 0, 0, 2);
+
+static const struct xe_pat_table_entry xe3p_lpg_pat_table[] = {
+	[ 0] = XE2_PAT( 0, 0, 0, 0, 3, 0 ),
+	[ 1] = XE2_PAT( 0, 0, 0, 0, 3, 2 ),
+	[ 2] = XE2_PAT( 0, 0, 0, 0, 3, 3 ),
+	[ 3] = XE2_PAT( 0, 0, 0, 3, 3, 0 ),
+	[ 4] = XE2_PAT( 0, 0, 0, 3, 0, 2 ),
+	[ 5] = XE2_PAT( 0, 0, 0, 3, 3, 2 ),
+	[ 6] = XE2_PAT( 1, 0, 0, 1, 3, 0 ),
+	[ 7] = XE2_PAT( 0, 0, 0, 3, 0, 3 ),
+	[ 8] = XE2_PAT( 0, 0, 0, 3, 0, 0 ),
+	[ 9] = XE2_PAT( 0, 1, 0, 0, 3, 0 ),
+	[10] = XE2_PAT( 0, 1, 0, 3, 0, 0 ),
+	[11] = XE2_PAT( 1, 1, 0, 1, 3, 0 ),
+	[12] = XE2_PAT( 0, 1, 0, 3, 3, 0 ),
+	[13] = XE2_PAT( 0, 0, 0, 0, 0, 0 ),
+	[14] = XE2_PAT( 0, 1, 0, 0, 0, 0 ),
+	[15] = XE2_PAT( 1, 1, 0, 1, 1, 0 ),
+	[16] = XE2_PAT( 0, 1, 0, 0, 3, 2 ),
+	/* 17 is reserved; leave set to all 0's */
+	[18] = XE2_PAT( 1, 0, 0, 2, 3, 0 ),
+	[19] = XE2_PAT( 1, 0, 0, 2, 3, 2 ),
+	[20] = XE2_PAT( 0, 0, 1, 0, 3, 0 ),
+	[21] = XE2_PAT( 0, 1, 1, 0, 3, 0 ),
+	[22] = XE2_PAT( 0, 0, 1, 0, 3, 2 ),
+	[23] = XE2_PAT( 0, 0, 1, 0, 3, 3 ),
+	[24] = XE2_PAT( 0, 0, 2, 0, 3, 0 ),
+	[25] = XE2_PAT( 0, 1, 2, 0, 3, 0 ),
+	[26] = XE2_PAT( 0, 0, 2, 0, 3, 2 ),
+	[27] = XE2_PAT( 0, 0, 2, 0, 3, 3 ),
+	[28] = XE2_PAT( 0, 0, 3, 0, 3, 0 ),
+	[29] = XE2_PAT( 0, 1, 3, 0, 3, 0 ),
+	[30] = XE2_PAT( 0, 0, 3, 0, 3, 2 ),
+	[31] = XE2_PAT( 0, 0, 3, 0, 3, 3 ),
+};
+
 u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index)
 {
 	WARN_ON(pat_index >= xe->pat.n_entries);
@@ -537,6 +576,20 @@ void xe_pat_init_early(struct xe_device *xe)
 		xe->pat.idx[XE_CACHE_NONE] = 3;
 		xe->pat.idx[XE_CACHE_WT] = 3;	/* N/A (no display); use UC */
 		xe->pat.idx[XE_CACHE_WB] = 2;
+	} else if (GRAPHICS_VER(xe) == 35) {
+		xe->pat.ops = &xe2_pat_ops;
+		xe->pat.table = xe3p_lpg_pat_table;
+		xe->pat.pat_ats = &xe2_pat_ats;
+		if (!IS_DGFX(xe)) {
+			xe->pat.pat_primary_pta = &xe3p_primary_pat_pta;
+			xe->pat.pat_media_pta = &xe3p_media_pat_pta;
+		}
+		xe->pat.n_entries = ARRAY_SIZE(xe3p_lpg_pat_table);
+		xe->pat.idx[XE_CACHE_NONE] = 3;
+		xe->pat.idx[XE_CACHE_WT] = 15;
+		xe->pat.idx[XE_CACHE_WB] = 2;
+		xe->pat.idx[XE_CACHE_NONE_COMPRESSION] = 12;
+		xe->pat.idx[XE_CACHE_WB_COMPRESSION] = 16;
 	} else if (GRAPHICS_VER(xe) == 30 || GRAPHICS_VER(xe) == 20) {
 		xe->pat.ops = &xe2_pat_ops;
 		if (GRAPHICS_VER(xe) == 30) {

-- 
2.52.0

