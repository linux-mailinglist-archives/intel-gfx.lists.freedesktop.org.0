Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2360D4B4575
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0636E10E2BD;
	Mon, 14 Feb 2022 09:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FAD910E2B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830302; x=1676366302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p7jz2CooDnh3wCTyjwRbD6RPNbUIngB4BJvAiEu3ohY=;
 b=YeqkfbqLHq1lO8UPJbZ+YUdojR+b3f4dDcO9f8oXbpdetxIMBW3rWxax
 krkkt8qTeUh0E8Y9ZRnKldej0VPnRYy+wKEagwDq7ai1fLd4PRacnAvnQ
 OHqjeInuE2EEWrMRrFVSY8uOhMVsLIYnmKV5YOZzNlPfRUxg29eOUeCTu
 UomLrD74ZZ5HiU6o9AvfJmjQtFT1RukUgjkk980Noeet3VGDbOrLj3qe5
 qiCb0SQ9vMdf/lkrcl/OXD+U+Ow4GzCwetZNSaba43EbOiTvpjYP51Ex4
 W3KMJfWxiB+W/IVmiIQpQLRZIlaizYQRhXEgBUiYg0opyPlY4Uf4oDsUk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="233597640"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="233597640"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="501658262"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 14 Feb 2022 01:18:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:07 +0200
Message-Id: <20220214091811.13725-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Fix bw atomic check when
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

