Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ15Eqjr+2kaIQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17E24E1FD9
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 03:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C16310EF58;
	Thu,  7 May 2026 01:32:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OwAO21Qs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F099E10EF5B;
 Thu,  7 May 2026 01:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778117542; x=1809653542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nC6Y5IVtWpL53kWNicc7clqnC6PTD8sZ+v3/XsID1Hc=;
 b=OwAO21Qsmk2hzxIIo8gix/1SXOt/bE3Ld214Q958xu0OSQWJUvXs3c8Q
 A9isl0nRJu1E3hLBBdXy9OF4G/3i1aI2oUTqDvx9Dp2DwNIf7I2vpYhFO
 7KtIat6TQHdluXSUk1a3VYiaYw8aT/Vpjpmi1EkxSq7ax8gL5C5BgfunG
 lePPbk8KT1Yi229s0c7FveDD2Z1UzelfwM+tH5lKivUlJhWS1CxHEQs5T
 RzJXflnuZeIeICJAuGug1mmyigTH7O/IkfIjrBm7RA1L6k6mouYKlTk29
 x0cY8urbRkBBKza3Lt0eVCE6jhX5Ff8WV9yxgRajfmUEfn4XfuTzg9oWO w==;
X-CSE-ConnectionGUID: rX1nUUHDQNK0DS4JdPrSHg==
X-CSE-MsgGUID: YXZIRLZ7Q7Onb/TjBbm4zA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78089046"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78089046"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 18:32:21 -0700
X-CSE-ConnectionGUID: 5IF/r/DqQDmpdjJb59IY4Q==
X-CSE-MsgGUID: HHMVYxlqT/Gl6DjRqCiRDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="266692846"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2026 18:32:19 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, suraj.kandpal@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 20/31] drm/i915/bios: shrink all Snps's VS/PE tables
Date: Thu,  7 May 2026 03:31:26 +0200
Message-ID: <20260507013137.527510-21-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: F17E24E1FD9
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

Each value present in Snps's VS/PE-O table is stored on u32. In order to
match values' size this causes dg2_snps_phy_buf_trans to increase it's
size.

Nevertheless, the actual value from each Snps's VS/PE-O table is fully
encoded in the lowest byte. Extract the lowest byte by casting to u8 and
using it as deparsed value. This way there is no need to inflate default
tables.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          | 6 +++---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2d556889316f0..c6a53319809ee 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2202,9 +2202,9 @@ parse_vswing_preemph_snps(union intel_ddi_buf_trans_entry **bufs_mtrx,
 			vals = &tables[offset];
 
 			entry = &bufs_mtrx[idx][row];
-			entry->snps.vswing = vals[0];
-			entry->snps.pre_cursor = vals[1];
-			entry->snps.post_cursor = vals[2];
+			entry->snps.vswing = (u8) vals[0];
+			entry->snps.pre_cursor = (u8) vals[1];
+			entry->snps.post_cursor = (u8) vals[2];
 
 			offset += block->num_columns;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 1b48d66189ede..30fafeeaf62f2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -45,9 +45,9 @@ struct tgl_dkl_phy_ddi_buf_trans {
 };
 
 struct dg2_snps_phy_buf_trans {
-	u32 vswing;
-	u32 pre_cursor;
-	u32 post_cursor;
+	u8 vswing;
+	u8 pre_cursor;
+	u8 post_cursor;
 };
 
 struct xe3plpd_lt_phy_buf_trans {
-- 
2.45.2

