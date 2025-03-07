Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9281EA56FE6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E9DF10EC33;
	Fri,  7 Mar 2025 18:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJhIyo4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9012F10EC2F;
 Fri,  7 Mar 2025 18:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370523; x=1772906523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yu6zo6JNcomjkXtMcfPOsHTlyteFOWAH9PlgZG1tZCY=;
 b=gJhIyo4oT6oUoM8S094rNIV3l+2dhn4cJB8ti6Tz95XJXM4AIYy5ORqs
 T/OaHf2EuqCuceJE6ZejyBKR17QRjfUEDC2F4hU1xapXEoWVxTZ6mzEf3
 gR94W4hufRQCsyHJYiQGu+oujye9RONv7ow0jnG+xHRj4hQ8mqP1C2KhJ
 u9NNAPNjQJomroAs5MtNuYTbQk64dW8C469C+mQdpOTGyj5TUdoFwkdVe
 f7cfJFulr1eTh50rMFpiNa/NHyap4iors1RK7xvl1voj5bNiL3UHgECAr
 ayRf54xwDJ8U9vHiUj+q5hNvRFdCZZoZ0adbXXHB3x3hFgn43nFsAxL/m Q==;
X-CSE-ConnectionGUID: 57FrqTkATG2bG5bSLKpRJw==
X-CSE-MsgGUID: +0RKcJOvRkSxhSTRkWWJqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637147"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637147"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:03 -0800
X-CSE-ConnectionGUID: wPtBdXfYRy6LxlIKgrEwcw==
X-CSE-MsgGUID: FpEzTUXHR2O0Rruz8YIP4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:01:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915: Avoid triggering unwanted cdclk changes due
 to dbuf bandwidth changes
Date: Fri,  7 Mar 2025 20:01:30 +0200
Message-ID: <20250307180139.15744-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Currently intel_bw_calc_min_cdclk() always adds the bw_state
to the atomic state. Not only does it result in potentially
redundant work later, it's also currently causing unwanted cdclk
changes during driver load.

Check if the dbuf bw is actually changing before we decide to
pull in the bw state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index c9e15a068b67..16ae337376fe 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1259,7 +1259,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	const struct intel_cdclk_state *cdclk_state;
-	const struct intel_crtc_state *crtc_state;
+	const struct intel_crtc_state *old_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	int old_min_cdclk, new_min_cdclk;
 	struct intel_crtc *crtc;
 	int i;
@@ -1267,15 +1268,23 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 9)
 		return 0;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		struct intel_dbuf_bw old_dbuf_bw, new_dbuf_bw;
+
+		skl_crtc_calc_dbuf_bw(&old_dbuf_bw, old_crtc_state);
+		skl_crtc_calc_dbuf_bw(&new_dbuf_bw, new_crtc_state);
+
+		if (!intel_dbuf_bw_changed(dev_priv, &old_dbuf_bw, &new_dbuf_bw))
+			continue;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		skl_crtc_calc_dbuf_bw(&new_bw_state->dbuf_bw[crtc->pipe],
-				      crtc_state);
+		new_bw_state->dbuf_bw[crtc->pipe] = new_dbuf_bw;
 	}
 
 	if (!old_bw_state)
-- 
2.45.3

