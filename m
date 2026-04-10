Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IfSA8IR2WlClwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2F43D8EE2
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1DB010E985;
	Fri, 10 Apr 2026 15:05:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWxx60F/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F3DC10E975;
 Fri, 10 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775833533; x=1807369533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P2yy6lQWOlHwMWEgS1xmSxGDqOhIw/e8l0ujmWVPPvM=;
 b=AWxx60F/vKRAhEOpr5RxC+g6GuGcG/0bSQQLpax/ter6i55P4beV3GwP
 t2lqK7izsGc57538ltnVjVYBoTESOM6P4NLt6fnf9cOTz2fJ81jlkkvFQ
 /8l9OGPQlgcaLu66nhvzGq71sam06cRMfIdDr8XZiIcTFgcf12AaHELRn
 skIogerTgp1FfqLK5cw7vjvltyuzO4NwSg5U3LP4LKJezHZKKJSdf+I0r
 qvQp9Et/yfTjVnOpBdlgf2DdI6GOdGKn/rJeGf0dubF1/vIBCsbXeMvGZ
 IIS0IcCGxSxHokwC9GpIgTbj70J/NUsxkCnkPZZ41XWfHsUtp65czgm/L Q==;
X-CSE-ConnectionGUID: iR98IKw2Sd+D3+M8rrwQLg==
X-CSE-MsgGUID: TtXtzNrQSuiEZNhA0pCp9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76743762"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76743762"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:27 -0700
X-CSE-ConnectionGUID: uqQolrhgQD6E0j0ScaGgnQ==
X-CSE-MsgGUID: 8EvJU9OvTcufBYsLLWXl/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224802730"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:05:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/10] drm/i915: Completely reject DPT BIOS FBs.
Date: Fri, 10 Apr 2026 18:04:48 +0300
Message-ID: <20260410150449.9699-10-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 8F2F43D8EE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Our BIOS FB handling can't deal with DPT, and instead everything
just assumes a direct GGTT mapping. Reject any BIOS FB using DPT.
Most likely this should never happen anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 9 +++++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 55b6cdded126..e3d1b2d1669c 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -92,6 +92,15 @@ intel_alloc_initial_plane_obj(struct intel_display *display,
 		return NULL;
 	}
 
+	/*
+	 * Would need to preserve the DPT, its GGTT
+	 * mapping, and the actual FB memory.
+	 */
+	if (intel_fb_modifier_uses_dpt(display, fb->modifier)) {
+		drm_dbg_kms(display->drm, "DPT not supported for initial FB\n");
+		return NULL;
+	}
+
 	return display->parent->initial_plane->alloc_obj(display->drm, plane_config);
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 00c863e378a1..5aef8123d8b8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -3148,12 +3148,6 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	fb->format = drm_get_format_info(display->drm, fourcc, fb->modifier);
 
-	if (!display->params.enable_dpt &&
-	    intel_fb_modifier_uses_dpt(display, fb->modifier)) {
-		drm_dbg_kms(display->drm, "DPT disabled, skipping initial FB\n");
-		goto error;
-	}
-
 	/*
 	 * DRM_MODE_ROTATE_ is counter clockwise to stay compatible with Xrandr
 	 * while i915 HW rotation is clockwise, that's why this swapping.
-- 
2.52.0

