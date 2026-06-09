Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /HzhKyEBKGoy7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571BD65FC9B
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HAtkm2LS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7905E10E2B1;
	Tue,  9 Jun 2026 12:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EB810E280;
 Tue,  9 Jun 2026 12:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006622; x=1812542622;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VmcQaHb6xA2nqfW1arTyx0g9HIoMIwFSdMLXUiXUWOs=;
 b=HAtkm2LSz94ZtWRMDaizvA/nxFesR3nsqHNrZ7AGf/Std08zAcpcHSrX
 gVBGVoEjNflYS6BPJqmQVLQzFCBZ+9oORYxMtgBnd9Zdul8YFnWQ/iBW4
 2E913r45dCvLbul0nwoQZFWMDVoQCO24NdxiYYOC87CfR+2N/hs1rIHki
 O/ZvqS0SQdql41oTC2gMxazDm5dCMw6c0Nh5J/RefddPQgLJHHy9oxgG8
 /rd2AEMossgBhwpV8yZhse4HTpHrWpFAeglfbzBhtKeeDWrD0znsmYxAh
 ZOnAQUvFgD9R5+T1ZLsIJubv180sTsWvkP03DSTNUZPTheCdERS+2cn+/ w==;
X-CSE-ConnectionGUID: tP+VWAJ3TRqIm8Tqyo2H4A==
X-CSE-MsgGUID: wCn2P65fS5yJZe6pE6qmCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340297"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340297"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:41 -0700
X-CSE-ConnectionGUID: IaAVOZNXSpyiOeExW6RouA==
X-CSE-MsgGUID: T8aPiLOZTiCYZQlU8TsU5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988230"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:41 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 01/36] drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
Date: Tue,  9 Jun 2026 17:32:15 +0530
Message-ID: <20260609120250.867750-2-dibin.moolakadan.subrahmanian@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 571BD65FC9B

From: Animesh Manna <animesh.manna@intel.com>

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
2.43.0

