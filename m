Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB2088ECEB
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D790D10FECB;
	Wed, 27 Mar 2024 17:46:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="if3oUD8r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4054D10FECA
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561574; x=1743097574;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HPIRpYEyjgdTxOtJ19lRXEJhKcXwtgZd7ZNvSPA/A4o=;
 b=if3oUD8rEegaQC+zfmfJncXj2zAjqMoJRiWdCvN2NTUt7U3iNNcj/t9Q
 y8BFNAVn9fSFUcdUagP5Y/Uf3vPpgQKBkkjDS2hKPKMYrGJgXsKCwGEE8
 VvrDY3Sfryzz5S0vv2fcaJsc/FGu8nbkqLtRAJs8AeqPJxvc7gY3fsYFT
 y/k++rRGD+Sb8dUg3ncT/z3exGeF5roIQk4hE/LKAl7C5oq8pZWiXwaza
 R34WkggtDtIcKx6ovQWtpe1VV1uv1E4Om55Z+SKQxoRu3pmZydBaurlwQ
 P/xZFEuS3wHuv4+zZkyujfMwlApJ41ShRgJpkA5VZWEg2hHHS9IcrFfEm g==;
X-CSE-ConnectionGUID: csMoeBPbSdKJedH0AOOkPA==
X-CSE-MsgGUID: kDvzL3P0SKOQ6+XRfjbG4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795454"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795454"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785912"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785912"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/13] drm/i915: Add debugs for mbus joining and dbuf ratio
 programming
Date: Wed, 27 Mar 2024 19:45:40 +0200
Message-ID: <20240327174544.983-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

Add some debugs so that we can actually observe what is
actually happening during the mbus/dbuf programming steps.
We can just shove them into fairly low level functions as
none of them are called during any critical sections/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7767c5eada36..a118ecf9e532 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3647,6 +3647,9 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
 	if (joined_mbus)
 		ratio *= 2;
 
+	drm_dbg_kms(&i915->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
+		    ratio, str_yes_no(joined_mbus));
+
 	for_each_dbuf_slice(i915, slice)
 		intel_de_rmw(i915, DBUF_CTL_S(slice),
 			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
@@ -3680,10 +3683,16 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
 static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	u32 mbus_ctl;
 
+	drm_dbg_kms(&i915->drm, "Changing mbus joined: %s -> %s\n",
+		    str_yes_no(old_dbuf_state->joined_mbus),
+		    str_yes_no(new_dbuf_state->joined_mbus));
+
 	/*
 	 * TODO: Implement vblank synchronized MBUS joining changes.
 	 * Must be properly coordinated with dbuf reprogramming.
-- 
2.43.2

