Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7587E45B92A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BAF6E856;
	Wed, 24 Nov 2021 11:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A268E6E856
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="298664781"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="298664781"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="591542628"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 24 Nov 2021 03:37:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:36:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:34 +0200
Message-Id: <20211124113652.22090-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/20] drm/i915/fbc: Pass whole plane state to
 intel_fbc_min_limit()
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

No reason to burden the caller with the details on how the minimum
compression limit is calculated, so just pass in the whole plane
state instead of just the cpp value.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d0c34bc3af6c..083c0cab4847 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -679,8 +679,10 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
 	return min(end, intel_fbc_cfb_base_max(i915));
 }
 
-static int intel_fbc_min_limit(int fb_cpp)
+static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
 {
+	int fb_cpp = plane_state->hw.fb ? plane_state->hw.fb->format->cpp[0] : 0;
+
 	return fb_cpp == 2 ? 2 : 1;
 }
 
@@ -1466,8 +1468,7 @@ static void intel_fbc_enable(struct intel_atomic_state *state,
 
 	cache = &fbc->state_cache;
 
-	min_limit = intel_fbc_min_limit(plane_state->hw.fb ?
-					plane_state->hw.fb->format->cpp[0] : 0);
+	min_limit = intel_fbc_min_limit(plane_state);
 
 	mutex_lock(&fbc->lock);
 
-- 
2.32.0

