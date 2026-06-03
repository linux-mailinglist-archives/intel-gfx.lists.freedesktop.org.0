Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EsGBMQOOIGoI5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F3763B1A0
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dEEY7+NP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69E911235F;
	Wed,  3 Jun 2026 20:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11AD112359;
 Wed,  3 Jun 2026 20:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518401; x=1812054401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DyVjd8nT2o3Sq4NDPK3xzlbZG6wG2geWRubfYWzEcGA=;
 b=dEEY7+NP/4PcU6LRdjnOBkPyG1qPvvcF8TOumRviK6xg+9qX5JZQPtDj
 JJfUnL3hPoQ4HHguHrwWV9kbLENDlviwt1DriHrIeQ79RdidFKWMFhMhS
 ZzrE71EhUC/UjjhIsB0JU37J3GeoTzEFYknnOIf0J+FObZqoPTTpkhGMe
 Sc7XxfomfYzTvHu0aVb3tveIHveLr93RAM8qA/7askY/SCBQGSI1l+R44
 uYPl3UmPjLjjJDiRN/5oW+hCNB9n5uT88dody7fppep9lupsiWD/pqil8
 Ezxr/GQNnjMSTFRM4WROX+jWP64LS5jcHE0rDItvYUA/BAouBFk9r3L4V g==;
X-CSE-ConnectionGUID: 2fmEFEfyQzW+CD20DV7eAg==
X-CSE-MsgGUID: ntrnLZpVQMSC+vGTQ3lDJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337411"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337411"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:26:41 -0700
X-CSE-ConnectionGUID: Y//Sh6KcREekvUKAp4N8rw==
X-CSE-MsgGUID: +/HJS761TcOEsgTOnxM0/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424846"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:26:39 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 09/20] drm/i915/cmtg: Program VRR fixed-rate timings for
 CMTG transcoder
Date: Thu,  4 Jun 2026 01:24:05 +0530
Message-Id: <20260603195416.91639-10-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 50F3763B1A0

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
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  2 ++
 4 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 082c04bec9ee..4c8187ddef1f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -16,6 +16,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_vrr.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -244,3 +245,13 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
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
index 53a44f505dd2..899a2744514c 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -11,6 +11,7 @@
 struct intel_display;
 struct intel_crtc_state;
 
+void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr);
 void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state);
 void intel_cmtg_sanitize(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 416dea9e0d36..56769a2c7f72 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6675,6 +6675,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state->cpu_transcoder);
 		intel_cmtg_set_timings(new_crtc_state, true);
 		intel_vrr_set_fixed_rr_timings(new_crtc_state, new_crtc_state->cpu_transcoder);
+		intel_cmtg_set_vrr_timings(new_crtc_state);
 		intel_vrr_transcoder_enable(new_crtc_state);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 15d22de66d63..2295f6545981 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -7,6 +7,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_alpm.h"
+#include "intel_cmtg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
@@ -646,6 +647,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	}
 
 	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
+	intel_cmtg_set_vrr_timings(crtc_state);
 
 	if (!intel_vrr_always_use_vrr_tg(display))
 		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-- 
2.29.0

