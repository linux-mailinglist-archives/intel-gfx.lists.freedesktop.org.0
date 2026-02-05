Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKQ3EHIqhWmT9QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C0BF8630
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 00:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1056B10E177;
	Thu,  5 Feb 2026 23:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jkrvbU/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551C710E177;
 Thu,  5 Feb 2026 23:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334832; x=1801870832;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=RB06l5xnoFw1QNi9NkKegJfrjTVHh4paBvG9g+qAPFs=;
 b=jkrvbU/xl2ArT+ezztSYYUZjXC4GzcGrMLsVWpEzROqvDhyydVcEg/yR
 fMKTReoRsaVa+94dIlze2j++6t7n+wJAaP+wLGX8r1Fajvj0w74PBsO69
 4F6TvfApfS7E9aW6EwzUONlw1TXaLOzblvz7LPC6AeTlSmfF/ND8ArsFQ
 Zpw2L1P+RXLAP83Me8mzuCfKaky/YJEj446l4sw6cxLIIl6Oi3HCX44Ug
 6VyWq78rVMEZZ17ijWKw3qEQvv8Zsalg7LiToV1G2G2MQq/qen0GnZ1d/
 nF7wYhTJO+7Md/Ta2raZE7eh0qV1xKhf1LW6010W9G5MSnkeJNYc7n9c8 A==;
X-CSE-ConnectionGUID: 823Vsn5fQTSS9ItlHLXguw==
X-CSE-MsgGUID: /teXUoI3SAKts5oF7taL2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82658679"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="82658679"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:31 -0800
X-CSE-ConnectionGUID: aZHm9c90R8SLeq3CE1uuVA==
X-CSE-MsgGUID: tepD3cm4SamrlpRxXRk3mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="210500119"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:40:16 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Thu, 05 Feb 2026 20:39:31 -0300
Subject: [PATCH v2 03/15] drm/xe/pat: Differentiate between primary and
 media for PTA
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-nvl-p-upstreaming-v2-3-9ec14f00cc6c@intel.com>
References: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
In-Reply-To: <20260205-nvl-p-upstreaming-v2-0-9ec14f00cc6c@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Tejas Upadhyay <tejas.upadhyay@intel.com>
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
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C9C0BF8630
X-Rspamd-Action: no action

Differently from currently supported platforms, in upcoming changes we
will need to have different PAT entries for PTA based on the GT type. As
such, let's prepare the code to support that by having two separate
PTA-specific members in the pat struct, one for each type of GT.

While at it, also fix the kerneldoc for pat_ats.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Co-developed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_device_types.h |  8 +++++---
 drivers/gpu/drm/xe/xe_pat.c          | 27 ++++++++++++++++++---------
 2 files changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 14bf2c027f89..059f026e80d5 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -400,10 +400,12 @@ struct xe_device {
 		const struct xe_pat_table_entry *table;
 		/** @pat.n_entries: Number of PAT entries */
 		int n_entries;
-		/** @pat.ats_entry: PAT entry for PCIe ATS responses */
+		/** @pat.pat_ats: PAT entry for PCIe ATS responses */
 		const struct xe_pat_table_entry *pat_ats;
-		/** @pat.pta_entry: PAT entry for page table accesses */
-		const struct xe_pat_table_entry *pat_pta;
+		/** @pat.pat_primary_pta: primary GT PAT entry for page table accesses */
+		const struct xe_pat_table_entry *pat_primary_pta;
+		/** @pat.pat_media_pta: media GT PAT entry for page table accesses */
+		const struct xe_pat_table_entry *pat_media_pta;
 		u32 idx[__XE_CACHE_LEVEL_COUNT];
 	} pat;
 
diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
index 2cd3fd1c3953..5ba650948a4a 100644
--- a/drivers/gpu/drm/xe/xe_pat.c
+++ b/drivers/gpu/drm/xe/xe_pat.c
@@ -285,8 +285,10 @@ static void program_pat(struct xe_gt *gt, const struct xe_pat_table_entry table[
 
 	if (xe->pat.pat_ats)
 		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_ATS), xe->pat.pat_ats->value);
-	if (xe->pat.pat_pta)
-		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_pta->value);
+	if (xe->pat.pat_primary_pta && xe_gt_is_main_type(gt))
+		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_primary_pta->value);
+	if (xe->pat.pat_media_pta && xe_gt_is_media_type(gt))
+		xe_mmio_write32(&gt->mmio, XE_REG(_PAT_PTA), xe->pat.pat_media_pta->value);
 }
 
 static void program_pat_mcr(struct xe_gt *gt, const struct xe_pat_table_entry table[],
@@ -302,8 +304,10 @@ static void program_pat_mcr(struct xe_gt *gt, const struct xe_pat_table_entry ta
 
 	if (xe->pat.pat_ats)
 		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_ATS), xe->pat.pat_ats->value);
-	if (xe->pat.pat_pta)
-		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_pta->value);
+	if (xe->pat.pat_primary_pta && xe_gt_is_main_type(gt))
+		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_primary_pta->value);
+	if (xe->pat.pat_media_pta && xe_gt_is_media_type(gt))
+		xe_gt_mcr_multicast_write(gt, XE_REG_MCR(_PAT_PTA), xe->pat.pat_media_pta->value);
 }
 
 static int xelp_dump(struct xe_gt *gt, struct drm_printer *p)
@@ -498,7 +502,8 @@ void xe_pat_init_early(struct xe_device *xe)
 		xe->pat.ops = &xe3p_xpc_pat_ops;
 		xe->pat.table = xe3p_xpc_pat_table;
 		xe->pat.pat_ats = &xe3p_xpc_pat_ats;
-		xe->pat.pat_pta = &xe3p_xpc_pat_pta;
+		xe->pat.pat_primary_pta = &xe3p_xpc_pat_pta;
+		xe->pat.pat_media_pta = &xe3p_xpc_pat_pta;
 		xe->pat.n_entries = ARRAY_SIZE(xe3p_xpc_pat_table);
 		xe->pat.idx[XE_CACHE_NONE] = 3;
 		xe->pat.idx[XE_CACHE_WT] = 3;	/* N/A (no display); use UC */
@@ -512,8 +517,10 @@ void xe_pat_init_early(struct xe_device *xe)
 			xe->pat.table = xe2_pat_table;
 		}
 		xe->pat.pat_ats = &xe2_pat_ats;
-		if (IS_DGFX(xe))
-			xe->pat.pat_pta = &xe2_pat_pta;
+		if (IS_DGFX(xe)) {
+			xe->pat.pat_primary_pta = &xe2_pat_pta;
+			xe->pat.pat_media_pta = &xe2_pat_pta;
+		}
 
 		/* Wa_16023588340. XXX: Should use XE_WA */
 		if (GRAPHICS_VERx100(xe) == 2001)
@@ -617,6 +624,8 @@ int xe_pat_dump(struct xe_gt *gt, struct drm_printer *p)
 int xe_pat_dump_sw_config(struct xe_gt *gt, struct drm_printer *p)
 {
 	struct xe_device *xe = gt_to_xe(gt);
+	const struct xe_pat_table_entry *pta_entry = xe_gt_is_main_type(gt) ?
+		xe->pat.pat_primary_pta : xe->pat.pat_media_pta;
 	char label[PAT_LABEL_LEN];
 
 	if (!xe->pat.table || !xe->pat.n_entries)
@@ -640,8 +649,8 @@ int xe_pat_dump_sw_config(struct xe_gt *gt, struct drm_printer *p)
 		}
 	}
 
-	if (xe->pat.pat_pta) {
-		u32 pat = xe->pat.pat_pta->value;
+	if (pta_entry) {
+		u32 pat = pta_entry->value;
 
 		drm_printf(p, "Page Table Access:\n");
 		xe->pat.ops->entry_dump(p, "PTA_MODE", pat, false);

-- 
2.52.0

