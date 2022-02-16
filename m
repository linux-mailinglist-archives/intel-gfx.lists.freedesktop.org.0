Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C289F4B8F87
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7F010E700;
	Wed, 16 Feb 2022 17:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74A810E700
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033378; x=1676569378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VYGCyd12BQzMGVyqbgMrgzm2BF3UhRG18MnduDdt6mE=;
 b=OsmKDjUXfzJkUt3m6VQi5tGylyukdB6YmStfJy5hHvL+TVOJ0oADOD4o
 aX7vlGkKOiiipoJxAaFQ8F3HypqK1XI6hYknGCecUkmd1wp4uE3kVqLnA
 Ni2BzNc60ns2OujzTSlW962kHWczUHvXwivHMPkw9Nek1EF1Xq7s5GVNw
 Ic3Sh2cBjsz+zknPQ1INbA4uYm4g0lrw3TjANvRhkos9R1Hq/TNjpX4Tl
 f3L9AKdMTJ0zm5yQxJUXuladKCJU3zzN4Oo6c4nNT3eD1Y8kdNUfKC0+I
 TQU+Xm6LuZWDCsu60+e/Pu7+OZHPYHvSno8j0Der95kGDbScbiYwmnTUZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="231304618"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="231304618"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:42:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="633789452"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 16 Feb 2022 09:42:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:42:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:45 +0200
Message-Id: <20220216174250.4449-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: Correctly populate use_sagv_wm
 for all pipes
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

When changing between SAGV vs. no SAGV on tgl+ we have to
update the use_sagv_wm flag for all the crtcs or else
an active pipe not already in the state will end up using
the wrong watermarks. That is especially bad when we end up
with the tighter non-SAGV watermarks with SAGV enabled.
Usually ends up in underruns.

Cc: stable@vger.kernel.org
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 7241c57d3140 ("drm/i915: Add TGL+ SAGV support")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9f5e3c399f8d..bd32fd70e6b2 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4007,6 +4007,17 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			return ret;
 	}
 
+	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
+	    intel_can_enable_sagv(dev_priv, old_bw_state)) {
+		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
+		ret = intel_atomic_lock_global_state(&new_bw_state->base);
+		if (ret)
+			return ret;
+	}
+
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
@@ -4022,17 +4033,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 			intel_can_enable_sagv(dev_priv, new_bw_state);
 	}
 
-	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
-	    intel_can_enable_sagv(dev_priv, old_bw_state)) {
-		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
-		ret = intel_atomic_lock_global_state(&new_bw_state->base);
-		if (ret)
-			return ret;
-	}
-
 	return 0;
 }
 
-- 
2.34.1

