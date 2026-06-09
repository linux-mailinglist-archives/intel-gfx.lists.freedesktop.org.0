Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VDawDUsBKGpk7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C342765FD45
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:04:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Mtebg7sC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3784410E32F;
	Tue,  9 Jun 2026 12:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3634410E32F;
 Tue,  9 Jun 2026 12:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006664; x=1812542664;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uO+g5hiN8/BW113XUBMnFRAhf4SVaw1HAKnXXSRfha0=;
 b=Mtebg7sCiZuvoWNvD79exxa8qSISYNVIyQu6N4LWNwOajuf+K+AMRaYq
 AGJAQi48tDHylYdd7pvnkFUWlz7n1xbBSKcC3YWm2G0Eb7nHJZb7Oi0gZ
 84Say+fTbJcpplx4J7sLfcVPBuJepKc224vBVZAyK2O6IMLrQ/RDo7v4f
 ro80s6t/O72H7w3MMRLcbznTqKtM135xT47KIlWlqWXe/sfh1/YyGwr8b
 B6UCA+wuTZB7dmrbH7XTSf1OFOHVSZdoBkh6/Y2cOL5ya0H81+Yt1kW3y
 R/GUbKsqS96hSm2Va1p4d/IU+eFPVN832Ood58Y8JxG8PEaUfqdDzVzJH w==;
X-CSE-ConnectionGUID: KTOdBY46T7yCAbPiFFc6/g==
X-CSE-MsgGUID: UVTGAlGoTiCX3NtIoaWTHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340444"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340444"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:24 -0700
X-CSE-ConnectionGUID: pWDSyz5IRva6srSeAIpcOA==
X-CSE-MsgGUID: pRRdL1u1QCqXQQYsgYONFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988470"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:04:23 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 33/36] drm/i915/display: Add DC3CO count and residency in dmc
 debugfs
Date: Tue,  9 Jun 2026 17:32:47 +0530
Message-ID: <20260609120250.867750-34-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C342765FD45

Expose DC3CO count and residency for xe3lp platforms via debugfs.

Changes in v4:
- Keep dc5_reg register initialization to avoid any
  invalid access (sashiko)

Changes in v5:
- Change XE3P_DMC_DC3CO_COUNT address to lower case (Manna Animesh).

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 9 ++++++++-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a133785c815b..5ffe2b1c3c51 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1650,7 +1650,14 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		   DMC_VERSION_MINOR(dmc->version));
 
 	if (DISPLAY_VER(display) >= 12) {
-		if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
+		if (DISPLAY_VER(display) >= 35) {
+			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
+			seq_printf(m, "DC3CO count: %d\n",
+				   intel_de_read(display, XE3P_DMC_DC3CO_COUNT));
+
+			seq_printf(m, "DC3CO residency: %d\n",
+				   intel_de_read(display, DC_STATE_DC3CO_RESIDENCY));
+		} else if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
 		} else {
 			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 38e342b45af0..6b7978fb8986 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -531,6 +531,8 @@ enum pipedmc_event_id {
 #define TGL_DMC_DEBUG3		_MMIO(0x101090)
 #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
 
+#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05c)
+
 #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
 #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
 #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
-- 
2.43.0

