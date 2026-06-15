Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RlV3FEhiMGp0SQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF90689EA3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:36:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=SEo4KCPM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498CF10E6E1;
	Mon, 15 Jun 2026 20:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511B110E6DF;
 Mon, 15 Jun 2026 20:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555780; x=1813091780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OiX4fzg+xaMq6YLpw4aAzcwFUaoslBuUxbpzybzU+XU=;
 b=SEo4KCPMbhuc4tk4ZRJyg8pWmb9kNFqgYu20/y+7DGmv/Zk3IOUA5vf2
 nDNPO/zqDEkbHQGMBXbCUy/UPW0GrdL2MpfjzeSbSe7rJ/AucQaKytEpf
 ufUXJhAXUt1j1XlJbaTFTP8BOEvIt7fanskXCdnGTp5S2uwjmN7NCpY1j
 2TylUxH3DtaWmgQHZcVmScSEugmM//xMH1nxb+vyP3eqnUJEUzEarhttN
 8a2H8Kmo2ayeA9Vk9q+vlchi+be108RytMLcTziShC02jNme2+jWB752W
 y2ZRRwuVpbf28xbPSB4LIJ4FNc6febrp+iTbRTSDheUnC5PjyECBVV9M5 w==;
X-CSE-ConnectionGUID: 7Eu2YIl4Qm6p80y3wsaulg==
X-CSE-MsgGUID: FLFiU64cSrKw09EfhwrjNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694768"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694768"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:36:20 -0700
X-CSE-ConnectionGUID: 8nw96iBiSoCzCuN6MKZL6w==
X-CSE-MsgGUID: XRQ+XYIkTgWytG6psoucrg==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:36:18 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 12/22] drm/i915/cmtg: Program VRR fixed-rate timings for
 CMTG transcoder
Date: Tue, 16 Jun 2026 01:33:29 +0530
Message-Id: <20260615200339.885190-13-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260615200339.885190-1-animesh.manna@intel.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBF90689EA3

Program the VRR registers of CMTG, as the VRR timing generator
will always be enabled for NVL.

Add intel_cmtg_set_vrr_timings() which mirrors the per-transcoder
VRR VMIN/VMAX/FLIPLINE programming on the CMTG transcoder paired
with the pipe's cpu_transcoder.

Invoke it from intel_vrr_set_transcoder_timings() and from the LRR
fastset path, right after the existing intel_vrr_set_fixed_rr_timings()
calls, so the CMTG VRR timing registers stay in sync with the
cpu_transcoder's.

v2: Use sw state instead of reading from hardware. [Jani]
v3: Program cmtg vrr timing registers along with vrr transcoder registers.
v4: Reuse vrr timing programming helper.

Bspec: 68989
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  2 ++
 4 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index cb1d69c17830..c5fff66f0d9e 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -16,6 +16,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_vrr.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -247,3 +248,13 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_
 	else
 		intel_set_transcoder_timings(crtc_state, cmtg_transcoder);
 }
+
+void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state)
+{
+	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
+
+	if (!intel_cmtg_is_allowed(crtc_state))
+		return;
+
+	intel_vrr_set_fixed_rr_timings(crtc_state, cmtg_transcoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index e3c678019815..e64a26aa5a1c 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -16,6 +16,7 @@ enum set_timing_type {
 	LRR
 };
 
+void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, enum set_timing_type type);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f6acddac6a9..3eb93853da9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6695,6 +6695,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_cmtg_set_timings(new_crtc_state, LRR);
 		intel_vrr_set_fixed_rr_timings(new_crtc_state, new_crtc_state->cpu_transcoder);
+		intel_cmtg_set_vrr_timings(new_crtc_state);
 		intel_vrr_transcoder_enable(new_crtc_state);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 401a12aee700..74094f4335f0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -7,6 +7,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_limits.h"
@@ -647,6 +648,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	}
 
 	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
+	intel_cmtg_set_vrr_timings(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-- 
2.29.0

