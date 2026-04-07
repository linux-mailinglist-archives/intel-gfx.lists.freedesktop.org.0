Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG8bOAQo1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 873913B153D
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149CF10E47E;
	Tue,  7 Apr 2026 15:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dAvQLwqS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1728C10E47E;
 Tue,  7 Apr 2026 15:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577090; x=1807113090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=luXBQH9+GVC7W5Ll2znZX9QlPoHdNVvEjfnLk8hBc3A=;
 b=dAvQLwqSk3zejA1lija3zGDHfpLrY1Uv60BHcFII/Lf/9CxX9Llzytqt
 D50BlDgTtNXnags1hFSwIY197oZzCN1fVTpVcTR1DphoweK71HEj7j/43
 f6HA1MDLZXY2WerXykWI9IMWUAqeMv0O8Vhrrj1jV4wRoxo7CKAhemURz
 H9F2YHRD/G7DsojKX4OpGq+xPwUOrkihSP9VIcDX8QRV1VzjRdNU8CORe
 +9PBJVa/nMnvLFsDpGqNYEx0Kqgqw3E3SHzZ9Q76C0KeSvK3CL97eksFj
 HM0ZSTSRlq7BB+FB9EmTRdZO4cMRpg43I81r7aHxCK5wlQp5AXu6efjlR Q==;
X-CSE-ConnectionGUID: 21kHR49QQ7mr6xmoImQKkg==
X-CSE-MsgGUID: j3BXsyITTRWwsPR2rZCcLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76614820"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76614820"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:30 -0700
X-CSE-ConnectionGUID: /6gd+soBRmyVxxOUiVbT0g==
X-CSE-MsgGUID: ZvI6jQjkQyWrQDtEHwq+1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="229875998"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/12] drm/i915/fb: Use i915_gtt_view_is_*()
Date: Tue,  7 Apr 2026 18:50:50 +0300
Message-ID: <20260407155053.32156-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 873913B153D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked GTT view type checks with the new
i915_gtt_view_is_*() helpers. This isolates some of
the code from GTT view implementation details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 52a619088e8e..ceed695d3ad4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1284,7 +1284,7 @@ bool intel_plane_uses_fence(const struct intel_plane_state *plane_state)
 
 	return DISPLAY_VER(display) < 4 ||
 		(plane->fbc && !plane_state->no_fbc_reason &&
-		 plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL);
+		 i915_gtt_view_is_normal(&plane_state->view.gtt));
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
@@ -1506,7 +1506,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 			       plane_view_height_tiles(fb, color_plane, dims, y));
 	}
 
-	if (view->gtt.type == I915_GTT_VIEW_ROTATED) {
+	if (i915_gtt_view_is_rotated(&view->gtt)) {
 		drm_WARN_ON(display->drm, remap_info->linear);
 		check_array_bounds(display, view->gtt.rotated.plane, color_plane);
 
@@ -1531,7 +1531,7 @@ static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, int color_p
 		/* rotate the tile dimensions to match the GTT view */
 		swap(tile_width, tile_height);
 	} else {
-		drm_WARN_ON(display->drm, view->gtt.type != I915_GTT_VIEW_REMAPPED);
+		drm_WARN_ON(display->drm, !i915_gtt_view_is_remapped(&view->gtt));
 
 		check_array_bounds(display, view->gtt.remapped.plane, color_plane);
 
@@ -1632,7 +1632,7 @@ static void intel_fb_view_init(struct intel_display *display,
 	memset(view, 0, sizeof(*view));
 	view->gtt.type = view_type;
 
-	if (view_type == I915_GTT_VIEW_REMAPPED &&
+	if (i915_gtt_view_is_remapped(&view->gtt) &&
 	    (display->platform.alderlake_p || DISPLAY_VER(display) >= 14))
 		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
 }
-- 
2.52.0

