Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HsPNIAgjmk+/wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA65130691
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 19:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0704910E2A5;
	Thu, 12 Feb 2026 18:48:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WP2WCDvI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65BFD10E2A0;
 Thu, 12 Feb 2026 18:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770922109; x=1802458109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/br7ir/fh/K2HPHC4Stn/TYzp6/Hb3yCOBV1XibnV4g=;
 b=WP2WCDvI+cX8N4CiGhC57Erxu+BVwDLOsHnz1Qq7/3tPFubZQM7d53BW
 VGwtt+6uaaXkZhTdeDSJpJ8AkcOSCzr539vBeBkjg8TXv6rzXRqlqewnO
 xL/Wi30upeyPnoRtdn2uCoB4jBqwtF4YhDceo4O3xeOmcwx3614p1EO67
 t+NZCEzywD5CCzC26jhTR93AocrJPrhGakhbdW8G2gOAt2+L3hGoJJUt/
 UfEAz/BWXV0RqSrXR7h976K9CcaTZcj/VA9YliHUsUDN77vSjS29bOpI2
 yhphZx/KOzwjQyb4CSPj7bxBnJkF3bLfmNGyToKbduQhcIlWJWjfhCOx4 g==;
X-CSE-ConnectionGUID: 2HBlsw0+Q6eSXhGafARL4g==
X-CSE-MsgGUID: Lxuh0XMWSXKcjLoifvaOhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72204124"
X-IronPort-AV: E=Sophos;i="6.21,287,1763452800"; d="scan'208";a="72204124"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:29 -0800
X-CSE-ConnectionGUID: vSHOaxIvT9mISdm7+Q675g==
X-CSE-MsgGUID: ehIfFaJaRSahREsddarcpg==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 10:48:28 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 04/15] drm/i915/display: convert W/As in intel_cursor.c to
 new framework
Date: Thu, 12 Feb 2026 20:46:02 +0200
Message-ID: <20260212184737.352515-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212184737.352515-1-luciano.coelho@intel.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9FA65130691
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_wa.c | 1 +
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2c5d917fbd7e..53cd27fd4fc7 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -19,6 +19,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
@@ -424,7 +425,7 @@ static u32 i9xx_cursor_ctl(const struct intel_plane_state *plane_state)
 		cntl |= MCURSOR_ROTATE_180;
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(display) == 13)
+	if (intel_display_wa(display, 22012358565))
 		cntl |= MCURSOR_ARB_SLOTS(1);
 
 	return cntl;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f0311cd477a5..8473cb25c92e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -85,6 +85,7 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 			INTEL_PCH_TYPE(display) < PCH_DG1;
 	case INTEL_DISPLAY_WA_14011503030:
 	case INTEL_DISPLAY_WA_14011503117:
+	case INTEL_DISPLAY_WA_22012358565:
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_14011508470:
 		return (IS_DISPLAY_VERx100(display, 1200, 1300));
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 0d0501fc276f..7e5f5a466e2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -42,6 +42,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22010178259,
 	INTEL_DISPLAY_WA_22011320316,
+	INTEL_DISPLAY_WA_22012358565,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_22021048059,
 };
-- 
2.51.0

