Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 968E454FDFF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 21:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEFD6112043;
	Fri, 17 Jun 2022 19:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FC110FB00
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 19:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655495991; x=1687031991;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cP6+1c3EjRkphMjk+zTkppGoArHC1oJ3R3Q5YHk6+Cg=;
 b=a3yaOPzwzjKH+r7b8A9PI7HE8bIT2G8myDl9achDJbtNog2MKPCR4zJA
 FDEUUsw8TG2kzTcbzk4ocQZ7/1ROHuUxMOr/a5lLqgqdijyK7krJ8sbmX
 RgNCdNveTK+eTVLfy+d7RysJzgMRNKDRrWAWamAxaDDG7TqWLn4RmEDUg
 Ei4lj5nau+DddUWqckosP8IukamoFjcgTLQ4EfjF9AeD8QlRZfVylCgyf
 Sy2wd3GRHnmKd82tTRdjFw/fdBygTJ/3QLASANW1cAHxESxcVCKj1F+aP
 0ez2GM+xa4r59dsX/yMLLtrzJF46V+UsYcvLH+ayVG7nwY6j4siVOllV0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280310092"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280310092"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 12:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="590248995"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 17 Jun 2022 12:59:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 22:59:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 22:59:48 +0300
Message-Id: <20220617195948.24007-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Skip wm/ddb readout for disabled pipes
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

The stuff programmed into the wm/ddb registers of planes
on disabled pipes doesn't matter. So during readout just
leave our software state tracking for those zeroed.

This should avoid us trying too hard to clean up after
whatever mess the VBIOS/GOP left in there. The actual
hardware state will get cleaned up if/when we enable
the pipe anyway.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/5711
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 174fab564d10..d083964d5470 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6560,7 +6560,10 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 		enum plane_id plane_id;
 		u8 slices;
 
-		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
+		memset(&crtc_state->wm.skl.optimal, 0,
+		       sizeof(crtc_state->wm.skl.optimal));
+		if (crtc_state->hw.active)
+			skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
 		crtc_state->wm.skl.raw = crtc_state->wm.skl.optimal;
 
 		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
@@ -6571,6 +6574,9 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			struct skl_ddb_entry *ddb_y =
 				&crtc_state->wm.skl.plane_ddb_y[plane_id];
 
+			if (!crtc_state->hw.active)
+				continue;
+
 			skl_ddb_get_hw_plane_state(dev_priv, crtc->pipe,
 						   plane_id, ddb, ddb_y);
 
-- 
2.35.1

