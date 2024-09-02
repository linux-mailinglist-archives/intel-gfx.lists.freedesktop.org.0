Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499C3968933
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD31610E058;
	Mon,  2 Sep 2024 13:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUofkvGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47CD010E058
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285230; x=1756821230;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=G00x2WjAI9+hUcLI9KhXRaY+ismcd8TKAb8hrzBTEx4=;
 b=PUofkvGCIy/fBW7wkckqnIal8tS1rW61YQBcDVo9NQhjXF9j2M0m9gn6
 CZhiqrNhz0JXLA+TLxUlSqh+VdR2v4Geq3dY3B7i2wSOnKo1ZiX12j63G
 IqWkyFYP9jqY5ooP/gketCi3GeI6r2PgsobH/D6ZeVMvPGybvgxoP5VQw
 xyyLg9k9MFepr1B9POE3VUwhNrkveA222CCof768F4eA2FXozCyOFXehJ
 yTBkhVYREhRvHiTmgrevW4rg2jXG6oAdDu3rbDP9n0F9qpNHXot1tRrl6
 mmdCVH1knDGNFuIJzrBAaJZJ0IAqFyzbaWCo+df+r0KHwhZ6duN5WGKw0 w==;
X-CSE-ConnectionGUID: +5bCJU5qSHW/uPSGN9dQAg==
X-CSE-MsgGUID: 3FlSC9L6T4GlUGK+asKaLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343610"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:53:50 -0700
X-CSE-ConnectionGUID: oV5gV/8OTrCzTpyGFTNePw==
X-CSE-MsgGUID: gFibtsKiQKKthuBhKZpIjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623843"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:53:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:53:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/13] drm/i915: Prepare clear color before
 wait_for_dependencies()
Date: Mon,  2 Sep 2024 16:53:31 +0300
Message-ID: <20240902135342.1050-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
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

Read out the clear color as soon as fences and the transient
data flush have finished. There is no need to wait for
all the display specific operations that might still be
going on. This could parallelize things a bit more effectively.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78ce402a5cd0..048051d9a624 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7347,6 +7347,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_td_flush(dev_priv);
 
+	intel_atomic_prepare_plane_clear_colors(state);
+
 	drm_atomic_helper_wait_for_dependencies(&state->base);
 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
 	intel_atomic_global_state_wait_for_dependencies(state);
@@ -7380,8 +7382,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
 
-	intel_atomic_prepare_plane_clear_colors(state);
-
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
-- 
2.44.2

