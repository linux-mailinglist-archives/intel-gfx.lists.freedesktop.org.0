Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B94B8F88
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF0A10E728;
	Wed, 16 Feb 2022 17:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1D2610E728
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033381; x=1676569381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p7jz2CooDnh3wCTyjwRbD6RPNbUIngB4BJvAiEu3ohY=;
 b=WEdi3Etk5AXNHupQok0QT/36TLkGpsTs+PY/bwK+s2D2BgWkfrB1tPYd
 tpqU/PtGBgFyHyAclDUU4ahvlXoai/3U3wiV76S5G5+TrSktJhZxzjmD1
 uPUvS6T5BzJCT+3ZvBhLy2XekewiDaro13D5l1iXQ8uOYRR1mnWhJvOfd
 UeAeQGUt7S2Bvi14lqN5jyG8G6JTaCptQOSjxvNrx6NIjxRUC1l8SbPvA
 b5i0KFmbqX54Uf1NG+MJtciZ38ZSGehEkHJLMRlbdT+dyHnKKD0U3sq3y
 XBhd1eif1waA6frM8waH9M6nPsHaFGrvkvwfyNJP8UbGuNVPpAnYtHyX5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="311424071"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="311424071"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:43:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="540228132"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 16 Feb 2022 09:42:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:42:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:46 +0200
Message-Id: <20220216174250.4449-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Fix bw atomic check when
 switching between SAGV vs. no SAGV
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

If the only thing that is changing is SAGV vs. no SAGV but
the number of active planes and the total data rates end up
unchanged we currently bail out of intel_bw_atomic_check()
early and forget to actually compute the new WGV point
mask and thus won't actually enable/disable SAGV as requested.
This ends up poorly if we end up running with SAGV enabled
when we shouldn't. Usually ends up in underruns.
To fix this let's go through the QGV point mask computation
if anyone else already added the bw state for us.

Cc: stable@vger.kernel.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: 20f505f22531 ("drm/i915: Restrict qgv points which don't have enough bandwidth.")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 23aa8e06de18..d72ccee7d53b 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -846,6 +846,13 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	if (num_psf_gv_points > 0)
 		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
 
+	/*
+	 * If we already have the bw state then recompute everything
+	 * even if pipe data_rate / active_planes didn't change.
+	 * Other things (such as SAGV) may have changed.
+	 */
+	new_bw_state = intel_atomic_get_new_bw_state(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		unsigned int old_data_rate =
-- 
2.34.1

