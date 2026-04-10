Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBKaDcIR2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088E13D8EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CAF10E987;
	Fri, 10 Apr 2026 15:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S77eX6Hm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B8D410E979;
 Fri, 10 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833533; x=1807369533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WYLqyRKspXU7koAGrI1XsfSlzZIJzpYpSap5c/OboqQ=;
 b=S77eX6HmIv4E7RRjnZyW3W1qOjh75ZzcHtKSavscKCMjqiM7MhdXhgt8
 6QjDZ/68Fv1ng/foI0OanFYY0Ho+oRNGnyGYIj4v0Qhi6WhDCx7ehAg/Q
 z8qWtcbxs532zoEMtqOF4+SQd7LcBXNYyBvzS1Yyabn9ZlI/OScBk46vL
 GnmOSCF2phWxLZmMAa7TlduCKaPHolH7jtT6ios6Aocq/GYadga775Qt8
 GhKkG2h90CZgquOlJ0jpeSsfcCduAHe2CnupH9qTR55JOrfDEDWNGCfTy
 rn5Txf+3jW/5QoZLoUxNk9kZVJhRqvSDmG8v8jd414R9T1lst0M0JcE9/ w==;
X-CSE-ConnectionGUID: fTay6+NrQJ2sWaGpj8iCgg==
X-CSE-MsgGUID: hrMtE16xRnmx9EODlLin4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76743769"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76743769"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:30 -0700
X-CSE-ConnectionGUID: n6hpzBVQRUymcCVjkvVw6A==
X-CSE-MsgGUID: lkJ3TilLQTSDkCjAOviOWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224802736"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/10] drm/i915: Reject BIOS FB rotation in common code
Date: Fri, 10 Apr 2026 18:04:49 +0300
Message-ID: <20260410150449.9699-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 088E13D8EE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reject 90/270 degree rotated BIOS framebuffers in common
code. Currently skl_get_initial_plane_config() already rejects
these, but we may want to implement the missing parts there
so that skl_get_initial_plane_config() could be reused for
general plane state verification purposes.

90/270 degree rotated framebuffers require two completely
separate GGTT mappings (0 degree for the CPU, 270 degree
for the display engine), and the rest of the BIOS FB
takeover code is not prepared for that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index e3d1b2d1669c..0e5cd45f01cc 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -3,6 +3,7 @@
 
 #include <linux/iopoll.h>
 
+#include <drm/drm_blend.h>
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 
@@ -101,6 +102,15 @@ intel_alloc_initial_plane_obj(struct intel_display *display,
 		return NULL;
 	}
 
+	/*
+	 * Would need to preserve the 270 degree rotated
+	 * GGTT mapping used by the display hardware.
+	 */
+	if (drm_rotation_90_or_270(plane_config->rotation)) {
+		drm_dbg_kms(display->drm, "90/270 degree rotation not supported for initial FB\n");
+		return NULL;
+	}
+
 	return display->parent->initial_plane->alloc_obj(display->drm, plane_config);
 }
 
-- 
2.52.0

