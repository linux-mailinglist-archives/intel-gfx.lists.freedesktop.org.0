Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HBZEET7UUGqU5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D770273A0A3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Hu80VsIg;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBC910F87D;
	Fri, 10 Jul 2026 11:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990C010F880;
 Fri, 10 Jul 2026 11:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682103;
 bh=qc/qiBSVoQZgqaft/35UwQ4n44Mrub8tCUXpEEvzINs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hu80VsIg4vhH4ckQFMnOjiOlPmZHC5Pxc6MVrBEidoTzo5I4jsGaCD2paAYriWLnW
 QSb++NIo79gDio9B8IDbR0iwedfJG+Q04ORfUplH3J2bt2HBnSzJAg8VqPdOnUKs/p
 JCnfN+ZN2paJIw4lZdvKiGRiMr4CmO9cVSJB+sF9GVzI6FM8I525TiFtv8j1RsyPPo
 y2Nsdm2aw+h7DZq4PexEkKC6Gqkt5/e6Tcb2dl/Nn4B9z6WAgh7VT15KCoJol7kN9c
 RasG+fCouSOknjKB1KFDn62AYjEmqPujCc1YDi04jUhloLmcVPV+Q5nh+pwt4AFZ8I
 U628/cJodK7fA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 09/11] drm/xe: s/bar2/lmembar/
Date: Fri, 10 Jul 2026 13:15:36 +0200
Message-ID: <20260710111539.1274555-10-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710111539.1274555-1-dev@lankhorst.se>
References: <20260710111539.1274555-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D770273A0A3

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The local memory BAR has a name (LMEMBAR). Use that instead
of referring to it by its BAR register index.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patch.msgid.link/20260511214122.8468-12-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
index 5e9070739e653..60f39efb02d05 100644
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
2.53.0

