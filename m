Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 55jrGbCMImopaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F5B64685C
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 10:45:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hkNI+65O;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31A711A5E5;
	Fri,  5 Jun 2026 08:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868FA11A5E2;
 Fri,  5 Jun 2026 08:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780649133; x=1812185133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uO+g5hiN8/BW113XUBMnFRAhf4SVaw1HAKnXXSRfha0=;
 b=hkNI+65Of2ifYtn5KqSYHjWfK+nQ8gjSllDlg0XblKMklHu3OmHXwwi/
 dzJi26UcfdGBWgb8y7qlb+fsAlg/+Gtta2vdjTJ+I91rYsrY017YJFRgk
 ZTIesuusw3/jKs1xz8VZdnC78VI2yTdie8MGqKT1kp3BkCg3yYfvlKxWB
 0462FR768EzFeWGpvjhX+KlOC6zCEoBUr17k7MCMla0JURf962g4pXtUt
 6Icv+hY8UOgwjfQ2ubTl7happRjxrR+5gzeVnl3EdbF8gqRjUYWfuGinh
 nrI3oyRbiBggPv2BiamybCOVPgOe8maVsH1732XDzcm0CivP1GNs0AZrQ A==;
X-CSE-ConnectionGUID: tFQdajktQzaj+FnZZVKwvg==
X-CSE-MsgGUID: 45j7RuQGQheidePlXeNw1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81666430"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81666430"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:33 -0700
X-CSE-ConnectionGUID: yiglwuCVRkCV3cSQmjn/YA==
X-CSE-MsgGUID: XCFwEzctRzGQkvPiOwyV4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="246624251"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 01:45:31 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, jani.nikula@linux.intel.com
Subject: [PATCH v5 14/14] drm/i915/display: Add DC3CO count and residency in
 dmc debugfs
Date: Fri,  5 Jun 2026 14:14:21 +0530
Message-ID: <20260605084421.3912865-15-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36F5B64685C

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

