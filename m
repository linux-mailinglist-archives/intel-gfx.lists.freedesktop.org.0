Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34D0A1DB2D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0935410E30A;
	Mon, 27 Jan 2025 17:22:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c9ie9G14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F9510E30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998522; x=1769534522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P3Gszlz4xLYuT0ZVy9z99gNgTYlSg48w9P7o+uZtvq8=;
 b=c9ie9G14T+wPuPAElZIDaTo1v48KMYDXow80vrbjNsvn6orWOWmuzCFD
 BMiNNWX+JhDzi7fp/xgt3twmQeKfLyanyp86sTZhloIfR9d+uqjcXPM80
 C+ufqOYe9Bi+RftTNgDKWBbJ0RUhH+nxOPTEDvNygtC7KgmQlSOUm/HgK
 QsMmrH9OUGcMhOaXnQTBs3cLa2Dq9L4gVUUYYSsmVsuwYFeY29YNAXRCh
 jA1wfn+XbeiyIAwtE6fs/xZhlTplVVHZdHxJ0oi9EpzXn3DnqZnC1yHOV
 rKr7iRNhtsIf92lNzd1hj1ZPZ3ay6v7tX4qjx/OdsgcdecJduPlHTZ17p Q==;
X-CSE-ConnectionGUID: YD6AougSR62VvHpiJHlaWw==
X-CSE-MsgGUID: 2wan4eU0R/2ugKLRYaUZOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501377"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501377"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:02 -0800
X-CSE-ConnectionGUID: z7MG5m1UTPyLyykihObxkw==
X-CSE-MsgGUID: zFwszp9jTZWDB3UdaO22NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:21:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org
Subject: [PATCH 01/11] drm/i915: Make sure all planes in use by the joiner
 have their crtc included
Date: Mon, 27 Jan 2025 19:21:46 +0200
Message-ID: <20250127172156.21928-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Any active plane needs to have its crtc included in the atomic
state. For planes enabled via uapi that is all handler in the core.
But when we use a plane for joiner the uapi code things the plane
is disabled and therefore doesn't have a crtc. So we need to pull
those in by hand. We do it first thing in
intel_joiner_add_affected_crtcs() so that any newly added crtc will
subsequently pull in all of its joined crtcs as well.

The symptoms from failing to do this are:
- duct tape in the form of commit 1d5b09f8daf8 ("drm/i915: Fix NULL
  ptr deref by checking new_crtc_state")
- the plane's hw state will get overwritten by the disabled
  uapi state if it can't find the uapi counterpart plane in
  the atomic state from where it should copy the correct state

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d68d652c1bc..2b31c8f4b7cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6682,12 +6682,30 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_plane_state *plane_state;
 	struct intel_crtc_state *crtc_state;
+	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 	u8 affected_pipes = 0;
 	u8 modeset_pipes = 0;
 	int i;
 
+	/*
+	 * Any plane which is in use by the joiner needs its crtc.
+	 * Pull those in first as this will not have happened yet
+	 * if the plane remains disabled according to uapi.
+	 */
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		crtc = to_intel_crtc(plane_state->hw.crtc);
+		if (!crtc)
+			continue;
+
+		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
+		if (IS_ERR(crtc_state))
+			return PTR_ERR(crtc_state);
+	}
+
+	/* Now pull in all joined crtcs */
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		affected_pipes |= crtc_state->joiner_pipes;
 		if (intel_crtc_needs_modeset(crtc_state))
-- 
2.45.3

