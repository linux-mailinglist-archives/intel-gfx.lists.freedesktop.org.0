Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC889B7F62
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5D10E41B;
	Thu, 31 Oct 2024 15:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMSJEiKG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC84E10E08F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390218; x=1761926218;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NKd86sc6/BVdSzwriozNTp5GyLjPk2yj2YggCZMyWLE=;
 b=BMSJEiKG1xKJT1km4JAs93pjgrSjJVjRlXWhO7JxEeTqKD1xYbvY8Sr9
 aTt1V1dqJ+t5JUksdREuV5cK/RYbXP35fQqCU0zSSfUzdYNNGe/+crJPq
 e6X2maE4keTCzpAKVsh8oSY58N1QX8g8M+yDR//s8N9fz7N4Ya99CgK0/
 UqSouGB1SViunvQNy+zSU6l2OR8UnBQc8PYsRVT0YLj3AAK24uNPV6YKU
 2884awTf3PMNxePYHFUq6VMfsvvLOkdgeJLgLSMiS2mEO1Jy5slVdVCiB
 vszbcxw+L+SrDzAQm/bIux5bwG7/NRPESdEXvTS9mV2rUNbWF7X6IF1ct g==;
X-CSE-ConnectionGUID: 0JL71AiHRTeuUSNdPmg2hg==
X-CSE-MsgGUID: j90tbbctR02p80m8hMP2jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575331"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575331"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:56:58 -0700
X-CSE-ConnectionGUID: k1b/9P5gQ4epuGPe0qsFLw==
X-CSE-MsgGUID: Jv3acSuySA2nfdB2NJN8Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791571"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:56:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:56:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915: Extract pipe_mbus_dbox_ctl_update()
Date: Thu, 31 Oct 2024 17:56:43 +0200
Message-ID: <20241031155646.15165-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
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

We'll be wanting reprogram the PIPE_MBUS_DBOX_CTL registers
during an upcoming MBUS sanitation stage. Extract the reprogramming
loop into a helper that doesn't depend on the full atomic state
so that it can be reused.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7a7caaf7e87d..8a31508f94bb 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3319,11 +3319,20 @@ static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
 	return val;
 }
 
+static void pipe_mbus_dbox_ctl_update(struct drm_i915_private *i915,
+				      const struct intel_dbuf_state *dbuf_state)
+{
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, dbuf_state->active_pipes)
+		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
+			       pipe_mbus_dbox_ctl(crtc, dbuf_state));
+}
+
 static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
-	const struct intel_crtc *crtc;
 
 	if (DISPLAY_VER(i915) < 11)
 		return;
@@ -3335,9 +3344,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
 		return;
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes)
-		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
-			       pipe_mbus_dbox_ctl(crtc, new_dbuf_state));
+	pipe_mbus_dbox_ctl_update(i915, new_dbuf_state);
 }
 
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
-- 
2.45.2

