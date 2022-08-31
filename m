Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B181F5A7B6F
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 12:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C1910E312;
	Wed, 31 Aug 2022 10:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1BC10E31C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 10:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661942252; x=1693478252;
 h=from:to:cc:subject:date:message-id;
 bh=zqu7nYXgwt/3b5E6rnxnknERhECcMTfKooRYpsL5Yg8=;
 b=bD3wSQUQceQ7yGmD9MXjuu4NHGb/Jvv9RWNYoBOZY622Z3OzZmIOyfIh
 gIsOWwOj5y/bWNYkwl8dy2LT6awUWPBc2sBZ43gUnsyZzLbLay3phqvTq
 89F0WXjU+NuoM9kB9joRGoAxhz1qmZB/3/fZSsy6alEsgrH0rUxLqSsEK
 wG3fzweZM9sHptnnysEpxvtL1dotTXNdB9HFv8OfM0Nf5RT8h9eB3TeDw
 nIKgrJ5losJnmxWo1n5TAmgpxAw7gcyZe5m2P9esXUTK4A62AmiRix9hF
 dGPCtii+Rism1cyLBVn3pSMEEJib/JG6mxNxLXjsTssfIJsZXBUTdapA9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="359379174"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="359379174"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 03:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="701325669"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Aug 2022 03:37:30 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 18:37:24 +0800
Message-Id: <20220831103724.14839-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/display: refine eDP power off sequence
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

The current eDP disable sequence like this.

disable plane > disable backlight (include T9, the delay
from backlight disable to end of valid video data) >
disalbe transcoder/pipe > disable eDP power

Found abnormal pixel output after plane off sometimes.
It did not cause any issue but impact user experience.
So we modify the eDP disable flow to turn backlight off
earlier to avoid abnormal display.

disable backlight > disable plane > disalbe transcoder/pipe
> disable eDP power

Cc: Shankar Uma <uma.shankar@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 72e2091d9fcb..d08927036350 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2045,10 +2045,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 	 * FIXME collapse everything to one hook.
 	 * Need care with mst->ddi interactions.
 	 */
-	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
-		intel_encoders_disable(state, crtc);
+	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
 		intel_encoders_post_disable(state, crtc);
-	}
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
@@ -7224,6 +7222,10 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 			continue;
 
 		intel_pre_plane_update(state, crtc);
+
+		if (!intel_crtc_is_bigjoiner_slave(old_crtc_state))
+			intel_encoders_disable(state, crtc);
+
 		intel_crtc_disable_planes(state, crtc);
 	}
 
-- 
2.31.1

