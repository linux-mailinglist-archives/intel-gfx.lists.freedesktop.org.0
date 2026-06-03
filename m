Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4/OQFCGOIGoW5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2074263B1C9
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:27:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="YJxPe/aS";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42F511236C;
	Wed,  3 Jun 2026 20:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C523F11236A;
 Wed,  3 Jun 2026 20:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518431; x=1812054431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nSPv7Et5ypmPH52oE+bK5CgbO6/kTxnP6chmayJKxWg=;
 b=YJxPe/aSEItV/eZETRBb9CehKZOSSR9OCvl5i3Zqs2IMBEj7pksp+v6i
 jNzOPAUfcqjuvXF5OiR5iltv79JnLjFJn5OkogAgPekRpWM7V1dJMBVzd
 plV3djXVNI3rYa8yWcG0vLx+5m/taBzbLDM8QTDPYhCUdnZh3R2/QMbbT
 wW/JTl/B2a4GQrQNN7h9TolIFwsqbZONvyvutN4kDuzEQKPy6S6Z5/hIo
 sW01nHZQrgIpwHtg76/dYgiWadqXNrFAu3OTEaCeOBzfkhbbB1kFFxtKl
 jz5Af+HOmYdFm2Qvyd8PsWPG8+WlNAbSt7voGQYiSVP8DcMC3+3kgNBiU g==;
X-CSE-ConnectionGUID: hCjItNm5TCmvh91zw9M9bQ==
X-CSE-MsgGUID: V3NBkVxgRDer42742l/7Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337475"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337475"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:27:11 -0700
X-CSE-ConnectionGUID: 3E/0nikbR5uLkrJF2rcw2w==
X-CSE-MsgGUID: hH9/NdKEQYGG1rxZ6+XNJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424961"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:27:09 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 17/20] drm/i915/cmtg: Add CMTG scan line programming
Date: Thu,  4 Jun 2026 01:24:13 +0530
Message-Id: <20260603195416.91639-18-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260603195416.91639-1-animesh.manna@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2074263B1C9

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Enable the hardware based guardband calculations which allows
DC3co to remain enabled when timings are changing from one fixed
refresh rate to another fixed refresh rate.

Bspec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 2 ++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index cc36784e5253..1d63b612c44b 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -188,6 +188,7 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder),
 		     CMTG_SECONDARY_MODE, 0);
+	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), CMTG_HW_GB_ENABLE, 0);
 
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_ENABLE, 0);
 
@@ -351,6 +352,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
+	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 	crtc->cmtg.enabled = true;
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index a4a2a2fe6b66..18dcb665df04 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -32,4 +32,10 @@
 #define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27, 16)
 #define CMTG_HW_GB_UP_LW_BG_DIFF_MASK		REG_GENMASK(31, 28)
 
+#define _CMTG_SCANLINE_GB1_A		0x456A0
+#define _CMTG_SCANLINE_GB1_B		0x456C0
+#define CMTG_SCANLINE_GB1(trans)	_MMIO_TRANS((trans), \
+						    _CMTG_SCANLINE_GB1_A, _CMTG_SCANLINE_GB1_B)
+#define  CMTG_HW_GB_ENABLE		REG_BIT(31)
+
 #endif /* __INTEL_CMTG_REGS_H__ */
-- 
2.29.0

