Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGTLArA0hmneKQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FE4101FD6
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CAF10E8A3;
	Fri,  6 Feb 2026 18:36:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BkAQZ1fJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F116310E8A0;
 Fri,  6 Feb 2026 18:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770402988; x=1801938988;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=XDEMA348urzBD4JUoc0okpsh27bIz+ASbIEfKSjdOEk=;
 b=BkAQZ1fJDKtqtYWB28OVlnN4XGt8kBRQVJnS0ArNHQd0L/hXUu69LkeF
 Bfzuh5rKrpTgFQZYSoc0Db/5fSFY3GfmtMRe5ZRm5GnQAn8oQ7dlb3Nln
 urrA2lEdiL+q8rRImREqMyFxLbGE2+wp6HwBUZgvTmLV5SqgCrBSuW4cC
 duonbGah5Mzz0wOvQyT9hsQD0qA93tg+/vWgi2FeoA5kfAfeJQ0nINWHC
 s78MCBtNyzKW5p0io55xeX+SA0/QHyYM83PEByOTvkDp9bHjrT0p16Z70
 EIHsR2x3ed4ONbD2SaTpS1w8bV8suwlou8OhmFANCQBFYWPBd1yDQdgYF g==;
X-CSE-ConnectionGUID: 2PCJBn64R3iCSwlhlzKSYQ==
X-CSE-MsgGUID: 0J3nbreISkatEUs/D56aIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71516922"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71516922"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:28 -0800
X-CSE-ConnectionGUID: w7RZBMKOQ8GrWBkI6T6K9g==
X-CSE-MsgGUID: GQSFDHqiQC2CkiPTdG8h6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210224684"
Received: from vverma7-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.159])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:27 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 06 Feb 2026 15:35:57 -0300
Subject: [PATCH v3 01/15] drm/xe/xe3p_lpg: Add support for graphics IP
 35.10
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-nvl-p-upstreaming-v3-1-636e1ad32688@intel.com>
References: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
In-Reply-To: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
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
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 85FE4101FD6
X-Rspamd-Action: no action

From: Shekhar Chauhan <shekhar.chauhan@intel.com>

Add Xe3p_LPG graphics IP version 35.10. Xe3p_LPG supports all features
described by XE2_GFX_FEATURES and also multi-queue feature on BCS and
CCS engines.  As such, create a new struct xe_graphics_desc named
graphics_xe3p_lpg that inherits from XE2_GFX_FEATURES and also includes
the necessary .multi_queue_engine_class_mask.

Here is a list of fields and associated Bspec references for the members
of the IP descriptor:

 .hw_engine_mask (Bspec 60149)
 .multi_queue_engine_class_mask (Bspec 74110)
 .has_asid (Bspec 71132)
 .has_atomic_enable_pte_bit (Bspec 59510, 74675)
 .has_indirect_ring_state (Bspec 67296)
 .has_range_tlb_inval (Bspec 71126)
 .has_usm (Bspec 59651)
 .has_64bit_timestamp (Bspec 60318)
 .num_geometry_xecore_fuse_regs (Bspec 62566, 67401, 67536)
 .num_compute_xecore_fuse_regs (Bspec 62565, 62561, 67537)

v2:
  - Drop non-existing fields from the list in the commit message. (Matt)
  - Squash patch adding .multi_queue_engine_class_mask here. (Matt)
  - Rename graphics_xe3p to graphics_xe3p_lpg. (Matt)
  - Add fields .num_geometry_xecore_fuse_regs and
    .num_compute_xecore_fuse_regs after rebasing and inheriting
    commit 6acf3d3ed6c1 ("drm/xe: Move number of XeCore fuse registers to
    graphics descriptor"). (Gustavo)

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 42f15cd394f6..c11e4723e57e 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -114,6 +114,13 @@ static const struct xe_graphics_desc graphics_xe2 = {
 	.num_compute_xecore_fuse_regs = 3,
 };
 
+static const struct xe_graphics_desc graphics_xe3p_lpg = {
+	XE2_GFX_FEATURES,
+	.multi_queue_engine_class_mask = BIT(XE_ENGINE_CLASS_COPY) | BIT(XE_ENGINE_CLASS_COMPUTE),
+	.num_geometry_xecore_fuse_regs = 3,
+	.num_compute_xecore_fuse_regs = 3,
+};
+
 static const struct xe_graphics_desc graphics_xe3p_xpc = {
 	XE2_GFX_FEATURES,
 	.has_indirect_ring_state = 1,
@@ -158,6 +165,7 @@ static const struct xe_ip graphics_ips[] = {
 	{ 3003, "Xe3_LPG", &graphics_xe2 },
 	{ 3004, "Xe3_LPG", &graphics_xe2 },
 	{ 3005, "Xe3_LPG", &graphics_xe2 },
+	{ 3510, "Xe3p_LPG", &graphics_xe3p_lpg },
 	{ 3511, "Xe3p_XPC", &graphics_xe3p_xpc },
 };
 

-- 
2.52.0

