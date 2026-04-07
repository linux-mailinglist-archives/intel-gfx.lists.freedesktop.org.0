Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPVxOtLW1GnuxwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:05:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13C33AC801
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F1710E3B3;
	Tue,  7 Apr 2026 10:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eI+w/omV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E3F10E3B1;
 Tue,  7 Apr 2026 10:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775556304; x=1807092304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z3rpLw1yl9m3GP0FR7/Ce+3tzi1f2zBywCWL+zWFzZs=;
 b=eI+w/omVxfUAvsdo2Iw/wFGE6lMcL5eSaatFPkBPujr/DTThyMvh6DSk
 9/JUpTbsoONUmkF6pKhGOUDmgg5oEu31nKJsaViMkPrlSlR9CrSIDjPon
 MTlKzzWU0PJGJBYbPLbGf2Q9bJjwsGanfjNmf5UWuL+HrP8y8qiZqqRnF
 ZPM3a/SWpYl3r/5pPUA3pk/6t6gggm9/4xNz+DZRHlqsHSrpPZB0MUeLl
 5h+m0susHCgO3DT6Rv/mpD3dk10vYRrFAky7GClGP6xfv7OO1Zwf1Iw/X
 SRC7IbAYaMT32Imj1KkE/OEMQUJnx0AsrqA/RXyVRitCYffTw3djPodcQ g==;
X-CSE-ConnectionGUID: xX0UTsUuQOKRv371A0vDqQ==
X-CSE-MsgGUID: qKUk7/UtSGe2mPDmb5exuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76705454"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76705454"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:48 -0700
X-CSE-ConnectionGUID: 7AAOc1/USHmXNAIxYbMoLQ==
X-CSE-MsgGUID: CBhlOsXWRNagMSfdLSAm9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="224936684"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: move intel_fb_pin.c to i915_fb_pin.c
Date: Tue,  7 Apr 2026 13:04:35 +0300
Message-ID: <ab1ffc08bcd1364715396142f91780b6261bbe65.1775556190.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775556190.git.jani.nikula@intel.com>
References: <cover.1775556190.git.jani.nikula@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C13C33AC801
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_fb_pin.c is the final file in display/ that's specific to i915
only. Move it to i915 core, renaming it to i915_fb_pin.c. It'll still
depend on a lot of display stuff, unfortunately.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                     |  2 +-
 .../{display/intel_fb_pin.c => i915_fb_pin.c}     | 15 ++++++++-------
 2 files changed, 9 insertions(+), 8 deletions(-)
 rename drivers/gpu/drm/i915/{display/intel_fb_pin.c => i915_fb_pin.c} (97%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 272c292f06ed..fa632f4e505c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -80,6 +80,7 @@ i915-y += \
 	i915_display_pc8.o \
 	i915_dpt.o \
 	i915_dsb_buffer.o \
+	i915_fb_pin.o \
 	i915_hdcp_gsc.o \
 	i915_initial_plane.o \
 	i915_overlay.o \
@@ -279,7 +280,6 @@ i915-y += \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
 	display/intel_fb.o \
-	display/intel_fb_pin.o \
 	display/intel_fbc.o \
 	display/intel_fdi.o \
 	display/intel_fifo_underrun.o \
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_fb_pin.c
rename to drivers/gpu/drm/i915/i915_fb_pin.c
index 738d77a1468a..580acbb14ada 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -9,18 +9,19 @@
 
 #include <drm/drm_print.h>
 
+#include "display/intel_display_core.h"
+#include "display/intel_display_rpm.h"
+#include "display/intel_display_types.h"
+#include "display/intel_fb.h"
+#include "display/intel_fb_pin.h"
+#include "display/intel_plane.h"
+
 #include "gem/i915_gem_domain.h"
 #include "gem/i915_gem_object.h"
 
+#include "i915_dpt.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
-#include "intel_display_core.h"
-#include "intel_display_rpm.h"
-#include "intel_display_types.h"
-#include "i915_dpt.h"
-#include "intel_fb.h"
-#include "intel_fb_pin.h"
-#include "intel_plane.h"
 
 static struct i915_vma *
 intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
-- 
2.47.3

