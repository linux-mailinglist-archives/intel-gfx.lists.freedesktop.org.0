Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEGzD6fRoWkfwgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F62D1BB504
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5F710EBD7;
	Fri, 27 Feb 2026 17:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XepxY9dI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B7210EBD7;
 Fri, 27 Feb 2026 17:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772212645; x=1803748645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+xR0iUOk9UXtgfodo7rVNLAP3SxnUFl+wAgxGDk+AU4=;
 b=XepxY9dI0LnlvMOKIBh9AsiaPLk20RB22/KxJ8mud4mvt40OtCwHiAoV
 XAau8Jw+XPcmReqMtzL100PsJ1ka97TAy4O123LDywjnIqnHbIAsPuE9a
 Ghx5CFV3Bfy+66dW+FBJ1CCLILQ0SvrdqT8fM6Q2MzWwaTUBa3YLn7pTj
 vAUgzpbROVOk3TJ5gWuS72y8zNbJlEsBGtpVZXyNI9TOMJ+u7j+1rj3yU
 bzJyJAG/VBfbGnVGAjQnp88z2HTmGDHsx/AdJ0DFl3Ql7B6q719YC6nyt
 301vRjQ612cIc1ceGpHzTiQZwN6K4inDYgWLbPHKR2y0I1HDsHwr2yhzT g==;
X-CSE-ConnectionGUID: ZCYUWWW6SO2G5dU1Qj8BYQ==
X-CSE-MsgGUID: qPNVcIrERlmJMAVhXAQ3fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="75902343"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="75902343"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:24 -0800
X-CSE-ConnectionGUID: egj6cwFVTiWkD68sPTewYA==
X-CSE-MsgGUID: 6wbhcMl+T2uily2Uuz23cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="213804025"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/4] drm/i915/fbdev: stop debug logging i915_ggtt_offset()
Date: Fri, 27 Feb 2026 19:17:11 +0200
Message-ID: <c3b84cb572c7ee94389e702aba4dcacb26c41673.1772212579.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772212579.git.jani.nikula@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 0F62D1BB504
X-Rspamd-Action: no action

The debug logging in fbdev is the only user of i915_ggtt_offset() in
display code. Just stop doing it to drop a dependency on i915_vma.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 44f4fcce526e..bdaaf3edba0c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -47,7 +47,6 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
-#include "i915_vma.h"
 #include "intel_bo.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
@@ -343,9 +342,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
-	drm_dbg_kms(display->drm, "allocated %dx%d fb: 0x%08x\n",
-		    fb->base.width, fb->base.height,
-		    i915_ggtt_offset(vma));
+	drm_dbg_kms(display->drm, "allocated %dx%d fb\n", fb->base.width, fb->base.height);
 	ifbdev->fb = fb;
 	ifbdev->vma = vma;
 	ifbdev->vma_flags = flags;
-- 
2.47.3

