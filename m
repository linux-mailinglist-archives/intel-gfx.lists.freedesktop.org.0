Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8P/pDHkj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C144090B2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117E110E7CB;
	Wed, 15 Apr 2026 23:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZIVLeNg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B3E10E7B9;
 Wed, 15 Apr 2026 23:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296822; x=1807832822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GrQxqqPN35lB4WfZgv/uA4W/H0w2eG7alZpokj6UCfE=;
 b=MZIVLeNgqrBBRj4BWbM33sjM2fMfAfEp9dzgNJFuoQHpaue8fVDjBjm2
 RZu9jutDHYXthWoSMlO7hqeAILRVhf7CtZTCOU9HWoAkawuGlb9JxjiOH
 ZR1A3125VkRP+mxcSJKsj3KnltQStIfgQfGNUJ3yvG+3Mgcw6RP6o8qkm
 EkQbFt0uR8ci4pED9e+CeUSRkSr+DCi5qnf7TwgDoujXXOHPORxd/RiYj
 o8xpmMitgrBCNXpJPiiJQew90aHPxfv11ZxWNiTnV5bzR0kMPA2n1LKEr
 nZFI6OY+5RcCdnlMg9Aysl5Xo88LXFtqkM/jovH6OIt522CRVmb4epyBs A==;
X-CSE-ConnectionGUID: 12+QqyiMRtiSaYTRu3dTaQ==
X-CSE-MsgGUID: DljmBp36RaqtmUxj4Jg1BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403489"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403489"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:02 -0700
X-CSE-ConnectionGUID: aNwqdpXCRKGqHy2yH+bPkg==
X-CSE-MsgGUID: Eh0GZOcyT8SqhO6Qcrq+uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511142"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:01 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 06/32] drm/i915/bios: structurize VS/PE-O metadata
Date: Thu, 16 Apr 2026 01:46:13 +0200
Message-ID: <20260415234639.3577774-7-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D9C144090B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Store all VS/PE-O relevant metadata inside anonymous struct in
intel_vbt_data. This includes number of rows, number of tables and
allocated memory for buffers' matrix.

Name the field as vspeo: an abomination from VS/PE-O, which in turn
could be expanded to VSwing / Pre-Emphasis Override.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  8 +++++---
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ce360e2c823a9..51d034d2ff77f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2211,9 +2211,9 @@ parse_vswing_preemph_override(struct intel_display *display)
 
 	drm_dbg_kms(display->drm, "VS/PE-O parsing not yet supported\n");
 
-	display->vbt.bufs_mtrx = bufs_mtrx;
-	display->vbt.num_tables = block->num_tables;
-	display->vbt.num_rows = num_rows;
+	display->vbt.vspeo.bufs_mtrx = bufs_mtrx;
+	display->vbt.vspeo.num_tables = block->num_tables;
+	display->vbt.vspeo.num_rows = num_rows;
 }
 
 static u8 translate_iboost(struct intel_display *display, u8 val)
@@ -3013,9 +3013,9 @@ init_vbt_defaults(struct intel_display *display)
 		    display->vbt.lvds_ssc_freq);
 
 	/* Vswing / Preemphasis Override */
-	display->vbt.bufs_mtrx = NULL;
-	display->vbt.num_tables = 0;
-	display->vbt.num_rows = 0;
+	display->vbt.vspeo.bufs_mtrx = NULL;
+	display->vbt.vspeo.num_tables = 0;
+	display->vbt.vspeo.num_rows = 0;
 }
 
 /* Common defaults which may be overridden by VBT. */
@@ -3398,11 +3398,11 @@ void intel_bios_driver_remove(struct intel_display *display)
 		kfree(entry);
 	}
 
-	if (display->vbt.bufs_mtrx) {
-		for (int idx = 0; idx < display->vbt.num_tables; idx++)
-			kfree(display->vbt.bufs_mtrx[idx]);
+	if (display->vbt.vspeo.bufs_mtrx) {
+		for (int idx = 0; idx < display->vbt.vspeo.num_tables; idx++)
+			kfree(display->vbt.vspeo.bufs_mtrx[idx]);
 
-		kfree(display->vbt.bufs_mtrx);
+		kfree(display->vbt.vspeo.bufs_mtrx);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 43b968f3e8b8c..e530c62432998 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -233,9 +233,11 @@ struct intel_vbt_data {
 	struct list_head display_devices;
 	struct list_head bdb_blocks;
 
-	union intel_ddi_buf_trans_entry **bufs_mtrx;
-	int num_tables;
-	int num_rows;
+	struct {
+		union intel_ddi_buf_trans_entry **bufs_mtrx;
+		int num_tables;
+		int num_rows;
+	} vspeo;
 
 	struct sdvo_device_mapping {
 		u8 initialized;
-- 
2.45.2

