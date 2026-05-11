Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEryCjdNAmrIqgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B75166F1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8E510E8FB;
	Mon, 11 May 2026 21:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UA0o8onj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F76110E8F8;
 Mon, 11 May 2026 21:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535732; x=1810071732;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sucQ2jBPAExWC81O+bpDiV0ZrA9nZ9nAXT+/AUg7rDA=;
 b=UA0o8onjjvGCro7Smr8PPaAmPBCwVlodEVE2J7l+sTrl8S69Wr86a3g0
 R+hwthv9I2OMte7rlFzOxPUUbZ0X91y/a4uYa7SeQTqWu05T2Eb+omNa6
 tWw4/anyI6Yxqhn3SAzqrowlDpVAHa4gnYW/nn51SFX5hiJy+Zdw0z3u2
 S8QCnPUmyeNgbHLdAPBK87csR+vwur/Yi1LNOCFi4NHWDE/772lo4iMBY
 rv8SFub5FCwO5h8FpzBnZ9Pd8ryUIWj1zgsCA58Ncz+KUybrqdZ/ftbts
 PY1b++PWwG/rqTy7WcD2gDBARwYjcorg4gdKPRxI84KrOOJVve9s4ufDy A==;
X-CSE-ConnectionGUID: 7kXV5HGTRe+rqChdKlIkIQ==
X-CSE-MsgGUID: wE5T09Q6QUOtBg+EHA/EOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90816890"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90816890"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:12 -0700
X-CSE-ConnectionGUID: CDMBpD39QO6kajCZrIIUgw==
X-CSE-MsgGUID: LkiaRaELRLG51jN0Df09vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="275702933"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:42:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/14] drm/xe: s/bar2/lmembar/
Date: Tue, 12 May 2026 00:41:19 +0300
Message-ID: <20260511214122.8468-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: CE1B75166F1
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The local memory BAR has a name (LMEMBAR). Use that instead
of referring to it by its BAR register index.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
index 5e9070739e65..60f39efb02d0 100644
--- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
+++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
@@ -61,7 +61,7 @@ static u32 get_wopcm_size(struct xe_device *xe)
 	return wopcm_size;
 }
 
-static u64 detect_bar2_dgfx(struct xe_device *xe, struct xe_ttm_stolen_mgr *mgr)
+static u64 detect_lmembar_dgfx(struct xe_device *xe, struct xe_ttm_stolen_mgr *mgr)
 {
 	struct xe_vram_region *tile_vram = xe_device_get_root_tile(xe)->mem.vram;
 	resource_size_t tile_io_start = xe_vram_region_io_start(tile_vram);
@@ -102,7 +102,7 @@ static u64 detect_bar2_dgfx(struct xe_device *xe, struct xe_ttm_stolen_mgr *mgr)
 	return ALIGN_DOWN(stolen_size, SZ_1M);
 }
 
-static u32 detect_bar2_integrated(struct xe_device *xe, struct xe_ttm_stolen_mgr *mgr)
+static u32 detect_lmembar_integrated(struct xe_device *xe, struct xe_ttm_stolen_mgr *mgr)
 {
 	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
 	struct xe_gt *media_gt = xe_device_get_root_tile(xe)->media_gt;
@@ -212,9 +212,9 @@ int xe_ttm_stolen_mgr_init(struct xe_device *xe)
 	if (IS_SRIOV_VF(xe))
 		stolen_size = 0;
 	else if (IS_DGFX(xe))
-		stolen_size = detect_bar2_dgfx(xe, mgr);
+		stolen_size = detect_lmembar_dgfx(xe, mgr);
 	else if (GRAPHICS_VERx100(xe) >= 1270)
-		stolen_size = detect_bar2_integrated(xe, mgr);
+		stolen_size = detect_lmembar_integrated(xe, mgr);
 	else
 		stolen_size = detect_stolen(xe, mgr);
 
@@ -262,9 +262,9 @@ u64 xe_ttm_stolen_io_offset(struct xe_bo *bo, u32 offset)
 	return mgr->io_base + (bo->ttm.resource->start << PAGE_SHIFT) + offset;
 }
 
-static int __xe_ttm_stolen_io_mem_reserve_bar2(struct xe_device *xe,
-					       struct xe_ttm_stolen_mgr *mgr,
-					       struct ttm_resource *mem)
+static int __xe_ttm_stolen_io_mem_reserve_lmembar(struct xe_device *xe,
+						  struct xe_ttm_stolen_mgr *mgr,
+						  struct ttm_resource *mem)
 {
 	if (!mgr->io_base)
 		return -EIO;
@@ -321,7 +321,7 @@ int xe_ttm_stolen_io_mem_reserve(struct xe_device *xe, struct ttm_resource *mem)
 	if (xe_ttm_stolen_cpu_access_needs_ggtt(xe))
 		return __xe_ttm_stolen_io_mem_reserve_stolen(xe, mgr, mem);
 	else
-		return __xe_ttm_stolen_io_mem_reserve_bar2(xe, mgr, mem);
+		return __xe_ttm_stolen_io_mem_reserve_lmembar(xe, mgr, mem);
 }
 
 u64 xe_ttm_stolen_gpu_offset(struct xe_device *xe)
-- 
2.52.0

