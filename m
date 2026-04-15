Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOqsG/rZ3mkyJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 02:21:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E683FF468
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 02:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423B510E091;
	Wed, 15 Apr 2026 00:21:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjhislDU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC7810E091;
 Wed, 15 Apr 2026 00:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776212470; x=1807748470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SFctM2xlOMoI8Vbpi8AHmWKdQr2mcaddcQzz+Tz1Zjc=;
 b=RjhislDUxexVsFLCUgbkTqaiMZC91wui855gL9eBivYx7rfdpqJif4hG
 9NRRb3gp6kNDS4hFqRwnQcQu+uzILL2Xl3EVVPrMx7iu5hjzru+qO7HEg
 WofZHxaiZUjFnLK8TQY8TEOXk9mD0W48pMYpFPet3GY4AZ+x0BXMl3KRo
 M4XMv8gy9Z2yMtm3qMsgTeV5Wrt8qnIo1UwAIRJBNq0kxNIcHpfQqtYqM
 q4SGBr7LzEGJW6qM/XUoGdPz1M7LOOBm4/9Tzf+/X0jYGVW7b6BByGnB9
 rSht8wZkJ/fEcjjm0qMaJ7v8nzC38L/r+yZ3hDIapjw1PNgbwZrWCWZ1k w==;
X-CSE-ConnectionGUID: PTQFQhS1QriNBwkWo60mCA==
X-CSE-MsgGUID: XzbhD1/5TeWCUgifPb/7UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88261133"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88261133"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 17:21:09 -0700
X-CSE-ConnectionGUID: ajnDZTSCSJivw4lUe/9FTQ==
X-CSE-MsgGUID: T5QSvp7MScWTzvnC331yxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="268228708"
Received: from vsrini4-xps-8920.iind.intel.com ([10.223.167.75])
 by orviesa001.jf.intel.com with ESMTP; 14 Apr 2026 17:21:08 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 jani.nikula@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH] [RFC]: drm/i915/display: Use ceiling division for NV12 UV
 surface offset calculation
Date: Wed, 15 Apr 2026 05:45:53 +0530
Message-ID: <20260415001553.181329-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260411171521.162189-1-vidya.srinivas@intel.com>
References: <20260411171521.162189-1-vidya.srinivas@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 90E683FF468
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For LNL+, odd source size and panning for YUV 422/420 surfaces is
supported. However, it requires the UV (chroma) surface Start X/Y and
width/height to be calculated as ceiling(half of Y plane value) rather
than floor.

The current code uses (>> 17) which combines the U16.16 fixed-point to
integer conversion (>> 16) with a divide-by-2 for chroma subsampling
(>> 1) into a single floor division. For odd Y plane values this
produces an off-by-one error in the UV plane offset.

On Android systems we see PLANE ATS fault when NV12 overlays are
used with odd source dimensions:

[  126.854200] xe 0000:00:02.0: [drm:intel_atomic_setup_scaler [xe]] [CRTC:148:pipe A] attached scaler id 0.0 to PLANE:33
[  126.854617] xe 0000:00:02.0: [drm:skl_update_scaler [xe]] [CRTC:148:pipe A] scaler_user index 0.0: staged scaling request for 1279x719->1340x753
[  126.854837] xe 0000:00:02.0: [drm:intel_plane_atomic_check [xe]] UV plane [PLANE:33:plane 1A] using Y plane [PLANE:123:plane 4A]
[  126.854926] xe 0000:00:02.0: [drm] *ERROR* [CRTC:148:pipe A] PLANE ATS fault

With Y plane width 1279:
  floor(1279/2) = 639 (current)
  ceil(1279/2)  = 640 (required)

Use DIV_ROUND_UP(value, 1 << 17) for the ceiling division of the
U16.16 fixed-point source coordinates, preserving sub-pixel precision.
This is a no-op for even values since ceiling and floor are equal
when the dividend is even.

v2: Use DIV_ROUND_UP(value, 1 << 17) to preserve sub-pixel precision
    while making the ceiling division readable (Jani, Uma)

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7a9d494334b5..1de79ff65253 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2139,10 +2139,16 @@ static int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
 	int min_height = intel_plane_min_height(plane, fb, uv_plane, rotation);
 	int max_width = intel_plane_max_width(plane, fb, uv_plane, rotation);
 	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
-	int x = plane_state->uapi.src.x1 >> 17;
-	int y = plane_state->uapi.src.y1 >> 17;
-	int w = drm_rect_width(&plane_state->uapi.src) >> 17;
-	int h = drm_rect_height(&plane_state->uapi.src) >> 17;
+
+	/*
+	 * LNL+ UV surface start/size =
+	 * ceiling(half of Y plane start/size). Use ceiling division
+	 * unconditionally; it is a no-op for even values.
+	 */
+	int x = DIV_ROUND_UP(plane_state->uapi.src.x1, 1 << 17);
+	int y = DIV_ROUND_UP(plane_state->uapi.src.y1, 1 << 17);
+	int w = DIV_ROUND_UP(drm_rect_width(&plane_state->uapi.src), 1 << 17);
+	int h = DIV_ROUND_UP(drm_rect_height(&plane_state->uapi.src), 1 << 17);
 	u32 offset;
 
 	/* FIXME not quite sure how/if these apply to the chroma plane */
-- 
2.45.2

