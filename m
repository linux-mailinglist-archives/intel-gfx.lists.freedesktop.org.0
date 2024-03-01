Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEF986E362
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B3910F089;
	Fri,  1 Mar 2024 14:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fJcD0X58";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2706F10F093
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303783; x=1740839783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JoeaO0o4RLA7i+NBNAh8119dsNr2foW7zgkTShCVI4U=;
 b=fJcD0X58l65TUY12vXkm/n0uqc61JKsYxhwiPW/LBSdiQZiOgJ9YIQQ6
 izGDZPc7Qj81IvlbsHDW4Ixx1bzEatq8cunqu3gJ6uh3/ppIAt9R7W2gd
 10XRu2+Vux2TVnzNT24Ls0ZaaJO+VdbzeS5wcU7wCIU+IR5uPHyJdrEN9
 ZNryCAWS/vHdbJEmPxnQVKTql6OgU/Qc50sQ/cDemiwKch2QfjHqBe1kd
 1HY7BWaLa6U60HdUJr6v24URitWZmvm9IejdaeYdYhnkeC93jH0IM4A4y
 tSmCpq+sLci0XHYW+j0FCALjsM41e9t5hNTlzgATByyZ+nuMpvhzcG4l2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275843"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275843"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771991"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771991"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 6/8] drm/i915: Disable planes more atomically during modesets
Date: Fri,  1 Mar 2024 16:35:58 +0200
Message-ID: <20240301143600.1334-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
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

Follow in the footsteps of commit c610e841f19d ("drm/i915:
Do plane/etc. updates more atomically across pipes") and
do the plane disables back to back for all pipes also when
we are disabling pipes.

This should provide for a potentially more atomic user
experience, which might be especially nice when using
joiner or tiled displays.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2351ee52d16e..01d7e91cb1bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6795,11 +6795,16 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!old_crtc_state->hw.active)
 			continue;
 
-		intel_crtc_disable_planes(state, crtc);
-
 		disable_pipes |= BIT(crtc->pipe);
 	}
 
+	for_each_old_intel_crtc_in_state(state, crtc, old_crtc_state, i) {
+		if ((disable_pipes & BIT(crtc->pipe)) == 0)
+			continue;
+
+		intel_crtc_disable_planes(state, crtc);
+	}
+
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-- 
2.43.0

