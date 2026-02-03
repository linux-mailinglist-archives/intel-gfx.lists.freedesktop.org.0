Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKKSBZQCgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFA1DA6D9
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D6510E696;
	Tue,  3 Feb 2026 14:13:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyTFD8uo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97C410E695;
 Tue,  3 Feb 2026 14:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770128016; x=1801664016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DX+X2Hozta83o8SpBXDAw0vk/IEs7eC0BumJgMeTqCM=;
 b=SyTFD8uodyZH1Fhb/GvZANT9QdBTaIkjXyk3Acz0Hz91DIlxwnGkqRfz
 JaxVLLppJI7vOdJtojfQYC97rqg9v1vfe5Zfy54F+nZu8eLCrGupCbPXi
 BGNPfl0kVKO5tHWd88t3h3hrtUnuc4fMRzUUry1qTSAaLqYKBfGgLM2cZ
 UHc8Mk+FkZu+quYeFUDOsRGK/9uAxENNIHhRLwwDEmJi0S6FN7j8iCIET
 w0Q2wyJUu8fN/3rgKEnFFrCnp+BsnQCDv5ALRoQjWvN7xBpAbUDkOHd6m
 Xb9V+Oi2wVf0koICEMtl8d69e6Vt1mUPk2eRXin+ZPyGMhTRG4Lh+MPvs A==;
X-CSE-ConnectionGUID: uWCrTzTIRPWCW2K0+dYjBw==
X-CSE-MsgGUID: sHFTvPLfQD+aS+jRbmZmMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156448"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156448"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:35 -0800
X-CSE-ConnectionGUID: DZsXTVTVQcGsl8wsqllHng==
X-CSE-MsgGUID: oEnIYuRNQo2qtskpAZWp8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956313"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:33 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 07/10] drm/i915/cmtg: program sync to port for cmtg
Date: Tue,  3 Feb 2026 19:14:04 +0530
Message-Id: <20260203134407.2823406-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260203134407.2823406-1-animesh.manna@intel.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CEFA1DA6D9
X-Rspamd-Action: no action

Program Cmtg Sync to Port Sync. Set before enabling the timing generator.
While cmtg start running this bit will be cleared.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 12a081dd7e4d..3af4aefc760e 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -258,4 +258,7 @@ void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
 		       intel_de_read(display, TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder)));
 
 	intel_cpu_cmtg_transcoder_set_m_n(crtc_state);
+
+	/* Program Cmtg Sync to Port Sync, TRANS_CMTG_CTL */
+	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), CMTG_SYNC_TO_PORT, CMTG_SYNC_TO_PORT);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index b766ded8686c..0ed767a797c0 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -18,7 +18,9 @@
 
 #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
 #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
+#define TRANS_CMTG_CTL(id)		_MMIO(0x6fa88 + (id) * 0x100)
 #define  CMTG_ENABLE			REG_BIT(31)
+#define  CMTG_SYNC_TO_PORT		REG_BIT(29)
 
 #define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) * 0x100)
 #define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) * 0x100)
-- 
2.29.0

