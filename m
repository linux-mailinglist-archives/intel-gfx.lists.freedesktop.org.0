Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zm8ZNOSNIGr94wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEC463B178
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 22:26:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KUH3ZHt0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C41210FDFE;
	Wed,  3 Jun 2026 20:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED6710FC04;
 Wed,  3 Jun 2026 20:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780518370; x=1812054370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DkHML2wzq1EOycaqV1vbWGsNviyZBf7LOAPVVi8eosk=;
 b=KUH3ZHt0Kcob9ADWSbrfuPMq7W+gm/l6PUvicstv6P0vj3xzaSzp1l3G
 uNEHxNeLXMhhA961oeMvcuZq0a2umQb1xEL0ZaM/9PEJFgnur0IqL3uJZ
 LgwfVDHEzB+lKDIhuuy0MfSvZZRmsUdTs4OlYeNqGbZr0+0jXM3I/Dygo
 GUUGwPTyjIOnPuPbmgnxB+FaCFhAvxkdixwcuj1ucBERJX70hJEBXdAHe
 Q+7PxexANxxHCB4XsyidIbfy8m+wzVrtqkZLqUkqVJI9ZKY3/e+WjhK13
 ABZMmA+0G+JZS7SGqcggFIX9RDCk2fWyXnjfOkpHO+MXcr6gzGP2zTpWC g==;
X-CSE-ConnectionGUID: TtN4S7xbQi+v3noCcr9NpA==
X-CSE-MsgGUID: QAcTYRGRRr6tz3WIMjYFdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="81337369"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="81337369"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 13:26:10 -0700
X-CSE-ConnectionGUID: Fy3a/x7lQAS49mwwkEJiRw==
X-CSE-MsgGUID: qoq+lz5qRsapC+eazwT/7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="244424749"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 03 Jun 2026 13:26:08 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 01/20] drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
Date: Thu,  4 Jun 2026 01:23:57 +0530
Message-Id: <20260603195416.91639-2-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 6EEC463B178

CMTG is supported on transcoder A and transcoder B with EDP,
so add a separate helper intel_cmtg_is_allowed() to check the
prerequisites for enabling CMTG. CMTG will be enabled only in
specific use cases such as PSR2, PR-ALPM, and LOBF, and will be
used in conjunction with the DC3CO feature. DC3co will be enabled
in a separate patch.

Note: Use-case-specific checks and transcoder-port compatibility
validation will be handled part of DC3co feature implementation.

v2:
- Remove separate flag for DC3co from crtc_state. [Uma, Dibin]

v3:
- Do not access power domain members directly. [Jani]

v4:
- Remove check for DC3co state now. if needed add Dc3co allow check
later once Dc3co patches are merged. [Uma]

Bspec: 68915
Reviewed-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index e1fdc6fe9762..a279f3dcd1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -4,7 +4,6 @@
  */
 
 #include <linux/string_choices.h>
-#include <linux/types.h>
 
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
@@ -16,6 +15,7 @@
 #include "intel_display_device.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
+#include "intel_display_types.h"
 
 /**
  * DOC: Common Primary Timing Generator (CMTG)
@@ -185,3 +185,15 @@ void intel_cmtg_sanitize(struct intel_display *display)
 
 	intel_cmtg_disable(display, &cmtg_config);
 }
+
+bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B) &&
+	    DISPLAY_VER(display) == 35 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+		return true;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index ba62199adaa2..ed540581738f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -6,8 +6,12 @@
 #ifndef __INTEL_CMTG_H__
 #define __INTEL_CMTG_H__
 
+#include <linux/types.h>
+
 struct intel_display;
+struct intel_crtc_state;
 
 void intel_cmtg_sanitize(struct intel_display *display);
+bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CMTG_H__ */
-- 
2.29.0

