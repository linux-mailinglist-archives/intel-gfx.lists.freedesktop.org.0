Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIJuO23K1mkLIQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 23:36:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C23C420C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 23:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1208B10E6E6;
	Wed,  8 Apr 2026 21:36:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpfEZrSj";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C33B10E6E6
 for <Intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 21:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775684202; x=1807220202;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p6NJgxJkrcMFpY43OVlM/bvRyyjTc6PpXy4uIis/x7s=;
 b=IpfEZrSjAU46iS/JSL8bhHs2QcCPUBWkfJmECWBMYdpqnQHitDjs5mmb
 J0IlqL0ZInI311y/sf5ns8dilJ1azyBSYimI4gzRgw8vKXa2qZnSgWna+
 hVaxLNhaRDmNRICthJRoHGWcxbKn+4BibKa4agIZT1a+3CWL4w7PwJFju
 +74fWe7nyc/0UyffaMQ/AUzYguWjiWuFYHUfQr7qCARfozjIwHxa0a4CB
 0em2/L2b2+9bUGi1jQDOOfgrXq0yLiou0hTSVts36bAPxrsflsHf/Ghr3
 0oN3XVaSzPApPCesUbfTsz8eytzAkOJl2O5No7B+UDUa4Som//UQ6ZHzw A==;
X-CSE-ConnectionGUID: LO6jgNJKRJ+uy7HxDzXruA==
X-CSE-MsgGUID: mXD+WCyZS1yMwNhn1xgjyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76802063"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76802063"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:36:42 -0700
X-CSE-ConnectionGUID: WTNcfq34RUGYwfk2jGQiLA==
X-CSE-MsgGUID: 37B3N2EYTWuii5l7yYwdhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="232965025"
Received: from cataylo2-desk.jf.intel.com ([10.88.27.141])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:36:42 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: Intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/xe: Apply WA_14026810691 to engine
Date: Wed,  8 Apr 2026 14:34:18 -0700
Message-Id: <20260408213418.1738915-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clinton.a.taylor@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 801C23C420C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Apply WA_14026810691 to following IPs:
Xe3p_LPG
Xe3p_XPC

Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h | 3 +++
 drivers/gpu/drm/xe/xe_wa.c           | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index aa267c2f6162..6a16ac1aca96 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -536,6 +536,9 @@
 #define   SLM_WMTP_RESTORE			REG_BIT(11)
 #define   RES_CHK_SPR_DIS			REG_BIT(6)
 
+#define TDL_TSL_CHICKEN2			XE_REG_MCR(0xe4cc, XE_REG_OPTION_MASKED)
+#define   TILEY_LOCALID				REG_BIT(2)
+
 #define ROW_CHICKEN				XE_REG_MCR(0xe4f0, XE_REG_OPTION_MASKED)
 #define   UGM_BACKUP_MODE			REG_BIT(13)
 #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
index 2ec70be78bf9..30dd1687cc8d 100644
--- a/drivers/gpu/drm/xe/xe_wa.c
+++ b/drivers/gpu/drm/xe/xe_wa.c
@@ -609,6 +609,12 @@ static const struct xe_rtp_entry_sr engine_was[] = {
 		       FUNC(xe_rtp_match_first_render_or_compute)),
 	  XE_RTP_ACTIONS(SET(ROW_CHICKEN3, DIS_EU_GRF_POISON_TO_LSC))
 	},
+	{ XE_RTP_NAME("14026810691"),
+	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3510, 3511),
+		       FUNC(xe_rtp_match_first_render_or_compute)),
+	  XE_RTP_ACTIONS(SET(TDL_TSL_CHICKEN2, TILEY_LOCALID))
+	},
+
 };
 
 static const struct xe_rtp_entry_sr lrc_was[] = {
-- 
2.25.1

