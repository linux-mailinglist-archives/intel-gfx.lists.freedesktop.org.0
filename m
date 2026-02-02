Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MXCC7sagWm0EAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42B8D1BCD
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:44:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FEE10E479;
	Mon,  2 Feb 2026 21:44:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UlgsdMwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F8910E479;
 Mon,  2 Feb 2026 21:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770068662; x=1801604662;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=QUHk/1Za/xom0SExGMPS6QbpIJy3hHdQMRKH3p59kaU=;
 b=UlgsdMwFPVCzPjtYRZv0KXMb5pg6DMTCDyLz1WdGixikZAW8m0bdDWXa
 wVe0/lEyA2zrkBYZtNZwnK9MG4XzRYquySchjA+43nA4I6OZYoBeIdqSl
 7OiBlODyBsVEOQAmbP8SZQ1LyAELethj4Rz45sBY7oSyx3JWudn6X8LHN
 eh0imAx1YCpxfBi2GolSd0WrCaStDUJcWZTIa1qk2BOD0db/+mwwPtpb8
 DrtvCrsFFNraUsJKhhEf6Pc09Afbd2XjVKlwtOUxZkp+NaXrR/LvovJOo
 IfZLzWDiLbrhWYnXEI4Np7MlZhWiE5HsxOV7l7ectlU/xD7MIvT1DCYVV w==;
X-CSE-ConnectionGUID: mNEVsVL+T/2ZaBn87+h71g==
X-CSE-MsgGUID: bcJXFXjGRHqXCn5c1ofgLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="58814357"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="58814357"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:22 -0800
X-CSE-ConnectionGUID: yM+3ZgXeSpWal+YjoLRgeQ==
X-CSE-MsgGUID: rhgrASA1S1GW9EipU5+lLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209646865"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.51])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:44:20 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 02 Feb 2026 18:43:17 -0300
Subject: [PATCH 11/16] drm/xe/xe3p_lpg: Set STLB bank hash mode to 4KB
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-nvl-p-upstreaming-v1-11-653e4ff105dc@intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
In-Reply-To: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Aradhya Bhatia <aradhya.bhatia@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D42B8D1BCD
X-Rspamd-Action: no action

From: Aradhya Bhatia <aradhya.bhatia@intel.com>

Since the dominant size of the pages referred in an i-gpu, such as
Xe3p_LPG, will be 4KB, the HW default of mix of 64K and 2M for STLB bank
hash mode does not make sense.

Allow the SW to change it to 4KB Mode, for Xe3p_LPG.

Signed-off-by: Aradhya Bhatia <aradhya.bhatia@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h | 2 ++
 drivers/gpu/drm/xe/xe_tuning.c       | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index 19f053a7f9be..cd84b8945a5d 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -473,6 +473,8 @@
 #define   FORCE_MISS_FTLB			REG_BIT(3)
 
 #define XEHP_GAMSTLB_CTRL			XE_REG_MCR(0xcf4c)
+#define   BANK_HASH_MODE			REG_GENMASK(27, 26)
+#define   BANK_HASH_4KB_MODE			REG_FIELD_PREP(BANK_HASH_MODE, 0x3)
 #define   CONTROL_BLOCK_CLKGATE_DIS		REG_BIT(12)
 #define   EGRESS_BLOCK_CLKGATE_DIS		REG_BIT(11)
 #define   TAG_BLOCK_CLKGATE_DIS			REG_BIT(7)
diff --git a/drivers/gpu/drm/xe/xe_tuning.c b/drivers/gpu/drm/xe/xe_tuning.c
index 694385ae75f1..316f5e2b2e48 100644
--- a/drivers/gpu/drm/xe/xe_tuning.c
+++ b/drivers/gpu/drm/xe/xe_tuning.c
@@ -90,6 +90,15 @@ static const struct xe_rtp_entry_sr gt_tunings[] = {
 	  XE_RTP_RULES(MEDIA_VERSION(2000)),
 	  XE_RTP_ACTIONS(SET(XE2LPM_SCRATCH3_LBCF, RWFLUSHALLEN))
 	},
+
+	/* Xe3p */
+
+	{ XE_RTP_NAME("Tuning: Set STLB Bank Hash Mode to 4KB"),
+	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3510, XE_RTP_END_VERSION_UNDEFINED),
+		       IS_INTEGRATED),
+	  XE_RTP_ACTIONS(FIELD_SET(XEHP_GAMSTLB_CTRL, BANK_HASH_MODE,
+				   BANK_HASH_4KB_MODE))
+	},
 };
 
 static const struct xe_rtp_entry_sr engine_tunings[] = {

-- 
2.52.0

