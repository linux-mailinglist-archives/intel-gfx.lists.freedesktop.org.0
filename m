Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A7C518C38
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EB810E40F;
	Tue,  3 May 2022 18:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B51EA10E40F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602205; x=1683138205;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yai/8SxAQdMB6BCUsfg5aL9SULhAonCrvN8OSbkYFRo=;
 b=gi2Qd4Lzg8wurMWydtBx1BrXSuhpYqFiBVgixGUWv/d70dWi/b3mWft6
 hFbLqLGfUz+GKBBudISJ9RuFUN1XbkN2eImP4fdQXKgvaFrRmS9D8kEEc
 WrhC1eXfSFwp+lP5v3cqswCYb3kNBHgPbjSrQSNklGPd1oPX3wagvEIde
 S+56OJZxxXYag7qk8G/SDs6j+lscJt0VKe1yVd3lEk5SDN4I0yA1/wYvI
 hcplhY7KBpOVSTgeZ+25o06QuYJBgTATuDVgOPa88KvQdtZW3JtgrQW8C
 oPv0c6DIWqpfKH1MZPUUAQb63NgyqLSaySa2GmZ4Ufarlb1ELEwiv8+YN Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="249532876"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="249532876"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="653372636"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by FMSMGA003.fm.intel.com with SMTP; 03 May 2022 11:23:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:29 +0300
Message-Id: <20220503182242.18797-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/26] drm/i915: Compute clocks earlier
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

Do the DPLL computation before fastset checks. This should
allow us to get rid of all that horrible fuzzy clock handling
for fastsets. Who knows how many bugs there are caused by our
state not actually matching what the hardware will generate.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8d6cbfbaf20d..1a25addadc21 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2818,6 +2818,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
+	ret = intel_dpll_crtc_compute_clock(state, crtc);
+	if (ret)
+		return ret;
+
 	ret = intel_crtc_compute_pipe_src(crtc_state);
 	if (ret)
 		return ret;
@@ -7783,10 +7787,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
 
-			ret = intel_dpll_crtc_compute_clock(state, crtc);
-			if (ret)
-				goto fail;
-
 			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
-- 
2.35.1

