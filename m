Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 184334922A5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 10:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B4789F47;
	Tue, 18 Jan 2022 09:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A3D89165
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 09:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497875; x=1674033875;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2Oi2Yw2uapAAOlkNfzRaDCfdaNcXS+7UHS8OHU3J5LU=;
 b=C32e0LZ/6sdo431Hs4FnQz8XMVFJSDlq2LJV46raY9MPJvAgUxNOXsud
 yWIZ3CaDASQa/mRZIUvA7FeZdh2JkwWQNR9QXqDC8YoizAJzUOM98ad93
 P9lrBeLgy8SGEpeHkDwCDok9EHJTqSWlhvoDG6iEVmLVeBfFKdaCeA8NC
 4ZKFIexDP7m/VQhRTpD4HJOe41kPgjqx8vkdqW3BoBpEkzz9UfW54Xc+O
 SS08Cz4oX/BW2EsZsU0s7EuHdXvab7KdZCcir4FzCVTJ5oL7/1DnlaZjC
 Cj5BJ+YquSeylL48AA8ZZsDVL4xn+1iuyF9Yc8e6EQmEVNwMA3Nmwpuqm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="224752910"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="224752910"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:24:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="615299099"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by FMSMGA003.fm.intel.com with SMTP; 18 Jan 2022 01:24:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 11:24:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 11:23:52 +0200
Message-Id: <20220118092354.11631-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/15] drm/i915: Properly write lock bw_state
 when it changes
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

The current code also forgets to call intel_atomic_lock_global_state()
when other stuff besides the final min_cdlck changes in the state.
That means we may throw away data which actually has changed, and
thus we can't be at all sure what the code ends up doing during
subsequent commits. Do the write lock properly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index b0cdad89c1ba..b1f6cf178678 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -676,6 +676,28 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
 	return to_intel_bw_state(bw_state);
 }
 
+static bool intel_bw_state_changed(struct drm_i915_private *i915,
+				   const struct intel_bw_state *old_bw_state,
+				   const struct intel_bw_state *new_bw_state)
+{
+	enum pipe pipe;
+
+	for_each_pipe(i915, pipe) {
+		const struct intel_dbuf_bw *old_crtc_bw =
+			&old_bw_state->dbuf_bw[pipe];
+		const struct intel_dbuf_bw *new_crtc_bw =
+			&new_bw_state->dbuf_bw[pipe];
+		enum dbuf_slice slice;
+
+		for_each_dbuf_slice(i915, slice) {
+			if (old_crtc_bw->used_bw[slice] != new_crtc_bw->used_bw[slice])
+				return true;
+		}
+	}
+
+	return old_bw_state->min_cdclk != new_bw_state->min_cdclk;
+}
+
 static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
 				  const struct intel_crtc_state *crtc_state)
 {
@@ -763,7 +785,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 
 	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
 
-	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
+	if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state)) {
 		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
 
 		if (ret)
-- 
2.32.0

