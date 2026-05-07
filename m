Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDGUJbHr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC4D4E2004
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0D410EF65;
	Thu,  7 May 2026 01:32:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oByQXOXm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB5210EF63;
 Thu,  7 May 2026 01:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117550; x=1809653550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zXrL8qBO6dFGApsWQm1COtJ7EQPwniRwbXO61yDcb/o=;
 b=oByQXOXmkNx3TNqgzPSGG7Z9lRdA8Btz83A+udKG+kw3tOIbW/t+3KxM
 /1cseq0ec5n5fsdQWrl7MX9oaWNpxT9RSYBaCHiGOzdSzS3a7bdhDfyAY
 USgDQyBAg5x4JVMiieKKRDZ6aSQt5beVnaL2sqWgbjokPIrTdN2ySODjI
 Nj6jFfiEIv1+Plpz+uzIsNcoUeH0uFWcXmHprSBiK9fIlYshTDadH3Sbj
 o9hzPXI/J3K21JKTlwGpBBKdTcyKoLSs//zd84nVLojJiJieqXiZQl7/V
 ZGADKmwjoVW7EALbfyjqBTR05qFB+codbhHuj6SIPNeroyrl2M66xwdJr A==;
X-CSE-ConnectionGUID: 61oau4hRSOigo+UeZihUmw==
X-CSE-MsgGUID: qiFg1PO1STGgnygU5JK90A==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089054"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089054"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:29 -0700
X-CSE-ConnectionGUID: mrUCiJ0oShWRFqgcGdf0jw==
X-CSE-MsgGUID: 0+YDQIZPS9mC4wsjxkQzkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692875"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:29 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 26/31] drm/i915/bios: shrink all ICL's VS/PE tables
Date: Thu,  7 May 2026 03:31:32 +0200
Message-ID: <20260507013137.527510-27-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 6EC4D4E2004
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

Each value present in ICL's VS/PE-O table is stored on u32. In order to
match values' size this causes icl_ddi_buf_trans to increase it's size.

Nevertheless, the actual value from each ICL's VS/PE-O table is fully
encoded in the lowest byte. Extract the lowest byte by casting to u8 and
using it as deparsed value. This way there is no need to inflate default
tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5e1000a72cf74..9138ec64b6b1c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2202,11 +2202,11 @@ parse_vswing_preemph_icl(union intel_ddi_buf_trans_entry **bufs_mtrx,
 			vals = &tables[offset];
 
 			entry = &bufs_mtrx[idx][row];
-			entry->icl.dw2_swing_sel = vals[0];
-			entry->icl.dw7_n_scalar = vals[1];
-			entry->icl.dw4_cursor_coeff = vals[2];
-			entry->icl.dw4_post_cursor_2 = vals[3];
-			entry->icl.dw4_post_cursor_1 = vals[4];
+			entry->icl.dw2_swing_sel = (u8) vals[0];
+			entry->icl.dw7_n_scalar = (u8) vals[1];
+			entry->icl.dw4_cursor_coeff = (u8) vals[2];
+			entry->icl.dw4_post_cursor_2 = (u8) vals[3];
+			entry->icl.dw4_post_cursor_1 = (u8) vals[4];
 
 			offset += block->num_columns;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index bfb6de45a94e2..a8c998fa339e6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -25,11 +25,11 @@ struct bxt_ddi_buf_trans {
 };
 
 struct icl_ddi_buf_trans {
-	u32 dw2_swing_sel;
-	u32 dw7_n_scalar;
-	u32 dw4_cursor_coeff;
-	u32 dw4_post_cursor_2;
-	u32 dw4_post_cursor_1;
+	u8 dw2_swing_sel;
+	u8 dw7_n_scalar;
+	u8 dw4_cursor_coeff;
+	u8 dw4_post_cursor_2;
+	u8 dw4_post_cursor_1;
 };
 
 struct icl_mg_phy_ddi_buf_trans {
-- 
2.45.2

