Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zxh4GI54V2ojOwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B58C75DF08
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hTOuIoLq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B28310F01A;
	Wed, 15 Jul 2026 12:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219AE10F01A;
 Wed, 15 Jul 2026 12:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784117387; x=1815653387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XEyEKmlx1bQCrQ8MorGMvVeBsahbClYXoysaL3ZEuAs=;
 b=hTOuIoLqFqjhnbVfUg4hgff8Xgo3WdXAjaIstHYGa3zwPLTsvqBmKjTw
 bLTroV9JqLr3wtLd+eAqKRInkRWBSFf8JlbhEc6nh5NTyqA5MfYnPp1ma
 po+iKd9pnMbnfiZ/41hxuiiKHtQ1yoitdy3gXUMKTbfAfWey9pLAM4uHQ
 PbNP7WGOygJ+oxK0B521bkVVH1aSWbxeTKEHAeA5XSKOP8jHPRQpzk3rn
 NFMDP5L3P3IsYdLcI0XgmIunp9h7nZmkMCwkGpDHcdQSXl17rY+9OidbJ
 fMSOB4mdw2kv4I7QEj6JwdeAzUtvw0AvZrigk1r0SOWYnlgD84NG2dqiO w==;
X-CSE-ConnectionGUID: gKzHzJGoRsWPbDDGkW5DMA==
X-CSE-MsgGUID: 2TWfTO13Qu2JWja/pPZBUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="96120989"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="96120989"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:46 -0700
X-CSE-ConnectionGUID: dvsyOqaqTWKOZ+knLcGDOQ==
X-CSE-MsgGUID: FngEwYyATCKnOKV6GtaebQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="254420581"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.168])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:45 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/cdclk: Deal with 2 PPC hscale issues when
 calculating min CDCLK
Date: Wed, 15 Jul 2026 15:09:26 +0300
Message-ID: <20260715120926.10786-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
References: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email,intel.com:dkim,linux.intel.com:from_mime,linux.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B58C75DF08

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Double the fractional part of the horizontal scale factor
for the purposes of min_cdck calculation. This bumps the min
CDCLK sufficiently to overcome some kind of 2 PPC granularity
issue. Without this CDCLK may end up being too low and we get
underruns with certail horizontal downscale factors.

The current Bspec formula calls for doubling only the
fractional part below 0.5, and rounding it to down to
a unit fraction. But that formula does not result in a
sufficient CDCLK bump in a lot of cases. Empirical evidence
supports doubling the entire fractional part, so let's just
do that while we wait for further analysis from the hardware
team.

Also note that the position of the scaler output window also
seems to matter. If the output is near the left edge of the
screen then lower CDCLK is sufficient, but moving the output
window further to the right causes underruns unless CDCLK is
also bumped. Some prefill happening during hblank already?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 26 ++++++++-
 drivers/gpu/drm/i915/display/intel_plane.c    | 55 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_plane.h    |  5 ++
 .../drm/i915/display/skl_universal_plane.c    |  6 +-
 4 files changed, 88 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df43be51b3ba..2c55a4818ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2234,6 +2234,29 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 				   pixel_rate);
 }
 
+static u32 ilk_pipe_pixel_rate_cdclk(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	u32 pixel_rate = crtc_state->hw.pipe_mode.crtc_clock;
+	unsigned int ppc = HAS_2PPC(display) ? 2 : 1;
+	struct drm_rect src;
+
+	/*
+	 * We only use IF-ID interlacing. If we ever use
+	 * PF-ID we'll need to adjust the pixel_rate here.
+	 */
+
+	if (!crtc_state->pch_pfit.enabled)
+		return pixel_rate;
+
+	drm_rect_init(&src, 0, 0,
+		      drm_rect_width(&crtc_state->pipe_src) << 16,
+		      drm_rect_height(&crtc_state->pipe_src) << 16);
+
+	return intel_adjusted_rate_cdclk(&src, &crtc_state->pch_pfit.dst,
+					 pixel_rate, ppc);
+}
+
 static void intel_mode_from_crtc_timings(struct drm_display_mode *mode,
 					 const struct drm_display_mode *timings)
 {
@@ -2267,7 +2290,8 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 	} else {
 		crtc_state->pixel_rate =
 			ilk_pipe_pixel_rate(crtc_state);
-		crtc_state->pixel_rate_cdclk = crtc_state->pixel_rate;
+		crtc_state->pixel_rate_cdclk =
+			ilk_pipe_pixel_rate_cdclk(crtc_state);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index a440f92ff00c..47c3e0c157b6 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -264,6 +264,50 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				dst_w * dst_h);
 }
 
+static unsigned int hscale_cdclk(const struct drm_rect *src,
+				 const struct drm_rect *dst,
+				 unsigned int ppc)
+{
+	unsigned int hscale;
+
+	hscale = drm_rect_calc_hscale(src, dst, 0, INT_MAX);
+	hscale = max(hscale, 0x10000);
+
+	/*
+	 * Double the fractional part due to some 2 PPC granularity issue
+	 *
+	 * FIXME: BSpec calls for doubling only the <0.5 fractional part,
+	 * and rounding it down to a unit fraction. In practice that is
+	 * not sufficient, and we need a more aggressive CDCLK bump in
+	 * many cases. The updated formula was derived empirically.
+	 * This may need to be updated once we have better undestading
+	 * of what's happening in the hardware...
+	 */
+	return (hscale & ~0xffff) + ppc * (hscale & 0xffff);
+}
+
+static unsigned int vscale_cdclk(const struct drm_rect *src,
+				 const struct drm_rect *dst)
+{
+	unsigned int vscale;
+
+	vscale = drm_rect_calc_vscale(src, dst,0, INT_MAX);
+	vscale = max(vscale, 0x10000);
+
+	return vscale;
+}
+
+unsigned int intel_adjusted_rate_cdclk(const struct drm_rect *src,
+				       const struct drm_rect *dst,
+				       unsigned int rate,
+				       unsigned int ppc)
+{
+	unsigned int hscale = hscale_cdclk(src, dst, ppc);
+	unsigned int vscale = vscale_cdclk(src, dst);
+
+	return DIV64_U64_ROUND_UP((u64) rate * hscale * vscale, 1ull << 32);
+}
+
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state)
 {
@@ -284,6 +328,17 @@ unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				   crtc_state->pixel_rate);
 }
 
+unsigned int intel_plane_pixel_rate_cdclk(const struct intel_crtc_state *crtc_state,
+					  const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	unsigned int ppc = HAS_2PPC(display) ? 2 : 1;
+
+	return intel_adjusted_rate_cdclk(&plane_state->uapi.src,
+					 &plane_state->uapi.dst,
+					 crtc_state->pixel_rate_cdclk, ppc);
+}
+
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state,
 				   int color_plane)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
index 31a6229aea73..dba2be24aae2 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -29,8 +29,13 @@ bool intel_plane_can_async_flip(struct intel_plane *plane,
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
+unsigned int intel_adjusted_rate_cdclk(const struct drm_rect *src,
+				       const struct drm_rect *dst,
+				       unsigned int rate, unsigned int ppc);
 unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
 				    const struct intel_plane_state *plane_state);
+unsigned int intel_plane_pixel_rate_cdclk(const struct intel_crtc_state *crtc_state,
+					  const struct intel_plane_state *plane_state);
 
 unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 				   const struct intel_plane_state *plane_state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 164b7d61c9a3..b246fc48558b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -266,7 +266,7 @@ bool icl_is_hdr_plane(struct intel_display *display, enum plane_id plane_id)
 static int icl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state)
 {
-	unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
+	unsigned int pixel_rate = intel_plane_pixel_rate_cdclk(crtc_state, plane_state);
 
 	/* two pixels per clock */
 	return DIV_ROUND_UP(pixel_rate, 2);
@@ -290,7 +290,7 @@ glk_plane_ratio(const struct intel_plane_state *plane_state,
 static int glk_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state)
 {
-	unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
+	unsigned int pixel_rate = intel_plane_pixel_rate_cdclk(crtc_state, plane_state);
 	unsigned int num, den;
 
 	glk_plane_ratio(plane_state, &num, &den);
@@ -317,7 +317,7 @@ skl_plane_ratio(const struct intel_plane_state *plane_state,
 static int skl_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state)
 {
-	unsigned int pixel_rate = intel_plane_pixel_rate(crtc_state, plane_state);
+	unsigned int pixel_rate = intel_plane_pixel_rate_cdclk(crtc_state, plane_state);
 	unsigned int num, den;
 
 	skl_plane_ratio(plane_state, &num, &den);
-- 
2.54.0

