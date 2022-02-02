Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77F4A6FBD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D92010E831;
	Wed,  2 Feb 2022 11:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FA510E831
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643800580; x=1675336580;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J11x25urdNyMt6VbosnWSqYHJYI3aSfL2nvMXO5IWOo=;
 b=hIGVAS6uIfMWBnTd/h5D0SCKGv2kiXhH4mYVNwqkSDsR/Iu2tITz7Fkg
 +3qXVUzXWx53fZFBRE1xr2RKKG3OroJRjKfMd0P/R75FyRZZ4s5knH43d
 6Sg1yEQtrA7XM+XzRQUzGCYn9JOC5h7qAcLSs9xjhGKJRQcsDTE4MmLAG
 sAdMm1fsmw7C8PQfitDPtTSfpn40WpXCaD9D025ECylFmZUbZx232yiMm
 NjJhvWtN4vvTWLE0GsdOekhh5AvozSgyJqr7dFXOB3CHw5VU1OXqnuyYW
 6p4hd3P16h3T1X5Ttney+lJYlvsoso9AdIMy4jS1BFVnwmr9JdOAz4pKb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="248114851"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="248114851"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:16:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="482792527"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 02 Feb 2022 03:16:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:16:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:16:13 +0200
Message-Id: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Move PIPE_CHICKEN RMW out from
 the vblank evade critical section
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

We don't want any RMWs in the part of the commit that happens
under vblank evasion. Eventually we want to use the DSB to
handle that and it can't read registers at all. Also reads
are just slowing us down needlessly.

Let's move the whole PIPE_CHICKEN stuff out from the critical
section since we don't have anything there that needs to be
syncrhonized with other plane/pipe registers. If we ever need
to add such things then we have to move it back, but without
doing any reads.

TODO: should look into eliminating the RMW anyway...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c431076f98a1..05713b64d4bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8121,9 +8121,6 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	if (DISPLAY_VER(dev_priv) >= 9 ||
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		hsw_set_linetime_wm(new_crtc_state);
-
-	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(new_crtc_state);
 }
 
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
@@ -8215,6 +8212,10 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 		if (new_crtc_state->update_pipe)
 			intel_encoders_update_pipe(state, crtc);
+
+		if (DISPLAY_VER(dev_priv) >= 11 &&
+		    new_crtc_state->update_pipe)
+			icl_set_pipe_chicken(new_crtc_state);
 	}
 
 	intel_fbc_update(state, crtc);
-- 
2.34.1

