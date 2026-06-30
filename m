Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K71OM9OFQ2o/aAoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:01:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CF96E1DD9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 11:01:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mWaw4lvF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC75810EBB4;
	Tue, 30 Jun 2026 09:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB1A10E4EC;
 Tue, 30 Jun 2026 09:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782810059; x=1814346059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kh/ZMHphYRi2/IiHFBlSWBCq0vIJ83CpnZAMRBCL+tA=;
 b=mWaw4lvFxtuDmmIn61JSLweDPQQ1VZOsAOgDx0Wm/2ABNeQ2M8YSVmJX
 q/DEXVE5bnUwIZEf6goB0CpBF24nW0mQfuM/1x2GArjhOTBQNzHW7jZB2
 Qg9EI8uwZA8OpaGZF+CMRqGyR4W3phGGnTdnUFQsG5QnJ4uknXMV4ampX
 qF38DRnRzBlb409TvpLH8aNgvTekSZUjxdjrPj40WXgXHpL2kLOJHuvFQ
 d+/GSDnG3QAzEJds5EJgN8ZP6dp8vto77kk1icmqrB7rTL6cp31gPVTJx
 r4GIMeRZxEmYkE0Nth9TTRZvLG9t5qsPOhS6WMaTXz8QJUUkMtEkNAgwR g==;
X-CSE-ConnectionGUID: 766Pm34ZQkCh2qKjFG9waA==
X-CSE-MsgGUID: qyoBZdx3SWidE9gUQd/k0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="94667715"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="94667715"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:00:59 -0700
X-CSE-ConnectionGUID: kAk2lBK7QFmhK8htS0llvw==
X-CSE-MsgGUID: YQiYLFzERu+eMRwmaw2MlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="256603871"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 02:00:57 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	uma.shankar@intel.com
Subject: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during active
 frame
Date: Tue, 30 Jun 2026 14:29:28 +0530
Message-ID: <20260630085928.1317279-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630085928.1317279-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260630085928.1317279-1-dibin.moolakadan.subrahmanian@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62CF96E1DD9

On Xe3P onwards, when PSR2 is enabled on a panel that does not support
Early Transport, DC3CO can be entered in the middle of an
active frame. This prevents the pipe from completing the frame
and leaves it in a bad state that does not recover well,
causing visible corruption on screen.

Set CHICKEN_DCPR_4 bit 24 in the PSR2 enable path when Early Transport
is not in use, to notify DMC to prevent DC3CO entry.

BSpec: 71483
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 39e50423132f..754bb9b188b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1747,6 +1747,9 @@
 #define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
 #define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
 
+#define XE3LPD_CHICKEN_DCPR_4			_MMIO(0x454a0)
+#define   DCPR4_BLOCK_DC3CO_ACTIVE_FRAME	REG_BIT(24)
+
 #define SKL_DFSM			_MMIO(0x51000)
 #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
 #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 911afb9cb24e..ad6ece3ce04d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2103,6 +2103,18 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
+
+		/*
+		 * HSD: 14026643300
+		 * On Xe3P+, restrict DC3CO entry during active frame when PSR2 is
+		 * enabled without panel Early Transport; required to avoid pipe bad state.
+		 * DMC honours CHICKEN_DCPR_4 bit 24 to block DC3CO entry during active frame.
+		 */
+		if (HAS_DC3CO(display) &&
+		    !intel_dp->psr.panel_replay_enabled &&
+		    !intel_dp->psr.su_region_et_enabled)
+			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
+				     0, DCPR4_BLOCK_DC3CO_ACTIVE_FRAME);
 	}
 
 	/* Wa_16025596647 */
@@ -2344,6 +2356,10 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+
+		if (HAS_DC3CO(display))
+			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
+				     DCPR4_BLOCK_DC3CO_ACTIVE_FRAME, 0);
 	}
 
 	if (intel_dp_is_edp(intel_dp))
-- 
2.43.0

