Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI6xNsJ5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABF02653C4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:18:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D86310E280;
	Wed, 11 Mar 2026 14:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKTSL+pA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F400D10E25B;
 Wed, 11 Mar 2026 14:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238711; x=1804774711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dhmot/45xUIJvIhnIC5JqblhT488hbldI9frz9SxYaI=;
 b=JKTSL+pAN9LLvJ1W9nERXE08eXXEtDWqKXzKWLfDMB2kZeRqPYZR+aS4
 HUtMkYgRJi8Y5y3HlL8JsGdwL3bExvfZgbg0tgVb4l7HryDGxts/nKBQj
 Ozq30LJ+g2Fud/B06f8gQS1CBjwit3N2vTwsomdY9hxB5Hsdij2ZS5Wsj
 /nBn0C73fswfwOyb+44cCtc0LyLzcM3iO/FPLlcLPkdTxSYTw2NGL3nhf
 j6NGF/4DK35G8fS7cIni5mfgKwZgWUsWCkG2t4X4L2KfcPnYBtPCZdnMI
 VfwgPB2BNY7U3rYmvha5ufpsudoZm7i5RP/7jdZIT4Y6a3RMWaxxyDJ9g Q==;
X-CSE-ConnectionGUID: 4dJm9X78T2G12K1Cinmctg==
X-CSE-MsgGUID: xfX1CJWbRrmQZTclKGKy2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="77913503"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="77913503"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:30 -0700
X-CSE-ConnectionGUID: Ry6SGHveRsqhkgF1vqzFXw==
X-CSE-MsgGUID: n//Oa3+VTFmzL3JBkvEKSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="225447340"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.91])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:18:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915: move i915 specific bo implementation to i915
Date: Wed, 11 Mar 2026 16:18:14 +0200
Message-ID: <e159166d623899996a51a577365ca7ab9b1a0974.1773238670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773238670.git.jani.nikula@intel.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 2ABF02653C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

The bo interface implementation is different for both i915 and xe. Move
the i915 specific implementation from display to i915 core.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                          | 2 +-
 drivers/gpu/drm/i915/{display/intel_bo.c => i915_bo.c} | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_bo.c => i915_bo.c} (97%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7e9d9b666511..52a82608b8b1 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) += \
 
 # core display adaptation
 i915-y += \
+	i915_bo.o \
 	i915_display_pc8.o \
 	i915_dpt.o \
 	i915_dsb_buffer.o \
@@ -239,7 +240,6 @@ i915-y += \
 	display/intel_atomic.o \
 	display/intel_audio.o \
 	display/intel_bios.o \
-	display/intel_bo.o \
 	display/intel_bw.o \
 	display/intel_casf.o \
 	display/intel_cdclk.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bo.c b/drivers/gpu/drm/i915/i915_bo.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_bo.c
rename to drivers/gpu/drm/i915/i915_bo.c
index 2b6eaec351d8..21a4533ba341 100644
--- a/drivers/gpu/drm/i915/display/intel_bo.c
+++ b/drivers/gpu/drm/i915/i915_bo.c
@@ -3,12 +3,13 @@
 
 #include <drm/drm_panic.h>
 
+#include "display/intel_bo.h"
+
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_object_frontbuffer.h"
 #include "pxp/intel_pxp.h"
 #include "i915_debugfs.h"
-#include "intel_bo.h"
 
 bool intel_bo_is_tiled(struct drm_gem_object *obj)
 {
-- 
2.47.3

