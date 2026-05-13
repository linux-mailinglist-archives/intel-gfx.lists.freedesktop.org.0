Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEF8EpWwBGp6NAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CC537C37
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09BD10EFAC;
	Wed, 13 May 2026 17:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFjOt9wT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1E010EFB2;
 Wed, 13 May 2026 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778692243; x=1810228243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pdp8buo+92J2tH3Op7i1dzweMVQ8sUIXsLawg0z8oAM=;
 b=KFjOt9wTDe4LZqXOkJlOhMKfxD/ltQ6r3ZPsftYm8CDZiFdsieY/mE9r
 GS2dY6yWmWb939YRGxt/eJs0eDz8No9tCUqyyGXFsNtJgY2C9TiCyPI0L
 TgMrMBO9bNGhLlHLeVQKIsfxsBAigTasUVSqsBPVc6VssTqVVhLEVyeKy
 xav/HhXFynIC+TuSwiaU185x0GWmouNNzMScB88JKWZZZn/0qgs/rs/uY
 8vOSgOb5ASzVwfvaPCFkuJ0Ty90KJxAruePgJK+IUO9+Zopl+4vTTaoVj
 E6co9+Lrcv3zlShp7NCZo5s1k17DYZXcz1vw2oYXBVc89zNJZWEl95LnF g==;
X-CSE-ConnectionGUID: QVf7wW4xQYKE7Ea33X+DWA==
X-CSE-MsgGUID: EjV/5RMNSZ+CDassK6ByNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102295332"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="102295332"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 10:10:42 -0700
X-CSE-ConnectionGUID: Ayha7AlFSLKfXovc+6D0tQ==
X-CSE-MsgGUID: SO3y3vXeQ5Wntz6ioBvu6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="238030298"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 13 May 2026 10:10:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 13/16] drm/i915/cmtg: Add CMTG scan line programming
Date: Wed, 13 May 2026 22:08:54 +0530
Message-Id: <20260513163857.1541888-14-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260513163857.1541888-1-animesh.manna@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 1F7CC537C37
X-Rspamd-Server: lfdr
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Enable the hardware based guardband calculations which allows
DC3co to remain enabled when timings are changing from one fixed
refresh rate to another fixed refresh rate.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 1 +
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index cd3b2d093017..e30819eb6ea7 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -404,6 +404,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
 		return;
 
 	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
+	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
 
 	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 6404f763bd52..275f57e5ee0b 100644
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

