Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMClCxP8jmljGwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3E135082
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 11:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1D910E7EA;
	Fri, 13 Feb 2026 10:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="keyAE1E7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E5610E7E2;
 Fri, 13 Feb 2026 10:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770978321; x=1802514321;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fXh9YBOSnXLtAG3xCfLiKOzjiF8a10Oiks6ZvzJK2xw=;
 b=keyAE1E7S/TN/cFFR8EAWW6b/n0qPzoEl3ojc0hVk7ApEJstYhG82PVX
 IWUOtxicGJyG+Zz6DeWhg7jSd/XLh/e92LwpRuMHUhg9rsq3hdtLuQ2ae
 6HfeXQTDNgewg+FHeSQL+t4fEKmUmYgBybrmgJLWmzaB38YNquEI4amok
 oH2Th7f0RxpugO8ufX1pNZIP86ECFs/pmAszSkp71RAn0Z+mJR8JXROJw
 eC9O6dzcQ6Rlv/hZIZ0AIVGI0R1DN4AJOxWfWUe7xiS8QScWDZA3gY835
 KOhAKv84YCetkoONiewe6Ri3U7384sFJ2o9gcQsr0oHNDZmWdbUGO+ouW g==;
X-CSE-ConnectionGUID: RDaaw3bmTGK2tW55bOkncQ==
X-CSE-MsgGUID: Mp0qALMzTGmgiCTIuUSdPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72150668"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72150668"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:21 -0800
X-CSE-ConnectionGUID: Rv1wvpeKQeCFN+Attf2mog==
X-CSE-MsgGUID: IlcC/vd9RKyiybRa08YQ/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212919625"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 02:25:20 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 05/16] drm/i915/display: convert W/As in intel_cursor.c to
 new framework
Date: Fri, 13 Feb 2026 12:23:33 +0200
Message-ID: <20260213102500.406925-6-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260213102500.406925-1-luciano.coelho@intel.com>
References: <20260213102500.406925-1-luciano.coelho@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D1E3E135082
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_wa.c | 1 +
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2c5d917fbd7e..18d1014de361 100644
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
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_22012358565))
 		cntl |= MCURSOR_ARB_SLOTS(1);
 
 	return cntl;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index aef6eca51119..207129a16713 100644
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
index aa96d111111c..dff205b6492f 100644
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

