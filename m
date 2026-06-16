Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2ICIMHAiMWpAcQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:16:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 314DE68E16F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:16:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mAYjwKBe;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B843F10E759;
	Tue, 16 Jun 2026 10:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E423B10E16D;
 Tue, 16 Jun 2026 10:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781604973; x=1813140973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cLruvrsd0Y/Jwyg+bGKQtdkFaWUNI4F5yWge/8EzhdM=;
 b=mAYjwKBewjB4VRkxboJqqmIxjlakEpmQT2WaCfspehno6IxD8aO5glGL
 xVnph+2Lu7wjCSFbpcj8wD7hSpFLTDErcUXUz2p35NnmZRb/EanWerK4r
 V67585e71D+YHdXNL6X1Mv9QtOFRdwEagIB1LBZUnBeWEY2hcQEpMf//c
 AmsXF1QX6k72fC2NbQ/ggrIJTET4WHrAWJWsTvsrM7qQZnzLAPWSTlUju
 BYD2LsxEvAKHZ3BLHDBU1EDtg5QwEthREOb8rBrd0sPvy8fow4BYtFIOl
 yxywTIJTw1mkCt8ayoli53/Ci7wIwTvogOs+s8gfhTzdwz6E8hYUPheEZ Q==;
X-CSE-ConnectionGUID: EF0ehpadRJ63wtfp4i2ncQ==
X-CSE-MsgGUID: DM+wXmmQSvifHoQLpfRXKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93747345"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93747345"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:16:12 -0700
X-CSE-ConnectionGUID: WN2Y7tcDSc+IpiBsB6R7KQ==
X-CSE-MsgGUID: 1b36BmZ8QSqv06DCUIFNMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="247794374"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.193])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:16:11 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 matthew.d.roper@intel.com, shawn.c.lee@intel.com
Subject: [PATCH] drm/i915/display: update to the BW buddy configuration
Date: Tue, 16 Jun 2026 13:15:53 +0300
Message-ID: <20260616101553.226298-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 314DE68E16F

Bspec has been updated for xe2_lpd+ platforms on how to handle
the bw buddy prgramming in case no matching memory configuration
is found w.r.t the current page mask table. The recommendation
is to keep the default settings for the related registers as it
is without explicitly disabling the bw buddy.

Bspec: 68871
Suggested-by: Ville Syrjala <ville.syrjala@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 43 +++++++++++++------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e51dfcd5dce..dcfd78f48622 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1631,23 +1631,40 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 		    table[config].type == dram_info->type)
 			break;
 
+	/*
+	 * If we don't recognize the memory configuration, explicitly disable
+	 * the address buddy logic in pre-xe2_lpd platforms as it was before.
+	 * In xe2_lpd+ cases, page masks must be set to 0 if no matching
+	 * configuration is found in the table. So keep the default settings
+	 * as it is. By default, BW_BUDDY_CTL bit 31 is 0 (bw buddy enabled)
+	 * and BW_BUDDY_PAGE_MASK is 0x0
+	 *
+	 * TODO: Revisit the buddy page masks table when bspec updates the
+	 * table with the correct number of channels for each dram type.
+	 */
 	if (table[config].page_mask == 0) {
 		drm_dbg_kms(display->drm,
 			    "Unknown memory configuration; disabling address buddy logic.\n");
-		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
-			intel_de_write(display, BW_BUDDY_CTL(i),
-				       BW_BUDDY_DISABLE);
-	} else {
-		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
-			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
-				       table[config].page_mask);
-
-			/* Wa_22010178259:tgl,dg1,rkl,adl-s */
-			if (intel_display_wa(display, INTEL_DISPLAY_WA_22010178259))
-				intel_de_rmw(display, BW_BUDDY_CTL(i),
-					     BW_BUDDY_TLB_REQ_TIMER_MASK,
-					     BW_BUDDY_TLB_REQ_TIMER(0x8));
+
+		if (DISPLAY_VER(display) < 20) {
+			for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
+				intel_de_write(display, BW_BUDDY_CTL(i),
+					       BW_BUDDY_DISABLE);
 		}
+
+		return;
+	}
+
+	/* We found a matching configuration. Program the BW_BUDDY registers. */
+	for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
+		intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
+			       table[config].page_mask);
+
+		/* Wa_22010178259:tgl,dg1,rkl,adl-s */
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_22010178259))
+			intel_de_rmw(display, BW_BUDDY_CTL(i),
+				     BW_BUDDY_TLB_REQ_TIMER_MASK,
+				     BW_BUDDY_TLB_REQ_TIMER(0x8));
 	}
 }
 
-- 
2.43.0

