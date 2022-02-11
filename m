Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFAF4B20FD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C14710EA2F;
	Fri, 11 Feb 2022 09:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003AA10EA2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570411; x=1676106411;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0JjZpmuIO3wpA/auc7DPOyENSmYANpcVuhsRUHAz0hI=;
 b=RyCFuP8jKdQ5pPapiOIuF4BYxFUEPD9j3GTh3hKZrWLehR1MMPMk7cRh
 bNf/Om9AK32mWk9e74e2LjaMyctWftZ+Rj5YzO/iB++BBfzUob/L72ckO
 tyu4XUv0u+kHzT3p29jobDGEAsQEzKnBjzo43l83JQXacrMpF6HpNGT7g
 b8RLj3CHCGXWQlZ0KJ1+n2XO/OW+7YlpzTwBjy3G697NjImbVIHU2unN/
 OuKbvjuEDs9WXENcTBulXLeUA0Kw1kDOcPNzYAatakzMRp6l8/V0epbtS
 agvyoRjCeGEPlsMAvgdUXugNm4gT4cJY6zqo8VvyTmxF4euHGZClAfdID w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249903130"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="249903130"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="487187152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 11 Feb 2022 01:06:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:25 +0200
Message-Id: <20220211090629.15555-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Use {active,
 scaled}_planes to compute ilk watermarks
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

Use the {active,scaled}_planes bitmasks from the crtc state
rather than poking at the plane state directly. One step
towards eliminating the last use of the somewhat questionble
intel_atomic_crtc_state_for_each_plane_state() macro which
peeks into the plane state without actually holding the plane
mutex.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 4f2f0e80beef..0fa3dce9bd54 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3179,12 +3179,8 @@ static int ilk_compute_pipe_wm(struct intel_atomic_state *state,
 	}
 
 	pipe_wm->pipe_enabled = crtc_state->hw.active;
-	if (sprstate) {
-		pipe_wm->sprites_enabled = sprstate->uapi.visible;
-		pipe_wm->sprites_scaled = sprstate->uapi.visible &&
-			(drm_rect_width(&sprstate->uapi.dst) != drm_rect_width(&sprstate->uapi.src) >> 16 ||
-			 drm_rect_height(&sprstate->uapi.dst) != drm_rect_height(&sprstate->uapi.src) >> 16);
-	}
+	pipe_wm->sprites_enabled = crtc_state->active_planes & BIT(PLANE_SPRITE0);
+	pipe_wm->sprites_scaled = crtc_state->scaled_planes & BIT(PLANE_SPRITE0);
 
 	usable_level = max_level;
 
-- 
2.34.1

