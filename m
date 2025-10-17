Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C60EBEA8EB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A8010EC86;
	Fri, 17 Oct 2025 16:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KoNqYoL2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12B610EC83;
 Fri, 17 Oct 2025 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717694; x=1792253694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KOjzJmfffRucDSWaL6DNqEX6VieSdhtn0cv4cJRRqpo=;
 b=KoNqYoL2shwTvNBtTQJVvugANIzz/znYoJZKBimOyj1L7Aa2Gtkymsci
 NzQ2VQHQxmY87O6j+6YkRzTmXNa6rUzZ6M54SQJyASmU+y1C7QvHCGDAT
 JWyXTFZxr4xe20/m53vMkOgw7MVTjShlCeFJxx4/y/dJPzUGVXHpd015O
 JpeEbkcAZe+tT0l1uAJ+WhA+tyzaJnzhjQ01GtdNCAVaoA3khKZkjpDRl
 kUMEWxkMM+Hux8wzkJWSK7DrE8bNbUA0/zmofMrZqOmVErOTHrN7jK3PJ
 o0ADqRRLHpeWWgrDZ+oR6R/ZVM6CO+45iw3aQ85mGy1JrB4IuUrt3a0gr A==;
X-CSE-ConnectionGUID: XW8n/UX9RzS6710J53gHQQ==
X-CSE-MsgGUID: 8zm1zIj+S5uneefjYr1jow==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="61961830"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61961830"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:53 -0700
X-CSE-ConnectionGUID: /T246XhmRYqc41Z4FLdB+g==
X-CSE-MsgGUID: 1GyRGazZTaK0e89rKOv3AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187026499"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:52 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915/cdclk: Use a more optimal min_cdclk for vblank
 length check
Date: Fri, 17 Oct 2025 19:14:16 +0300
Message-ID: <20251017161417.4399-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Adjust intel_cdclk_prefill_adjustment() to give out a potentially more
optimal value, purely based on the final minimum CDCLK (also considering
planes/pfit/etc.) for the current pipe. We can't actually check against
the current CDCLK frequency as that might be much higher due to some
other pipe, and said other pipe might later reduce the CDCLK below
what the current pipe would find acceptable (given which WM levels
are enabled). Ie. we don't consider any global constraints (other
pipes, dbuf bandwidth, etc) on the mimimum CDCLK frequency here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e92e7fd9fd13..838834c49a90 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4092,8 +4092,21 @@ static unsigned int _intel_cdclk_prefill_adj(const struct intel_crtc_state *crtc
 
 unsigned int intel_cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
 {
-	/* FIXME use the actual min_cdclk for the pipe here */
-	return intel_cdclk_prefill_adjustment_worst(crtc_state);
+	int clock = crtc_state->hw.pipe_mode.crtc_clock;
+	int min_cdclk;
+
+	/*
+	 * Only consider the current pipe's minimum cdclk here as a safe
+	 * lower bound. This must *not* be based on the actual/logical cdclk
+	 * frequency here as that may get reduced later due to eg. a modeset
+	 * on a different pipe, and that would completely invalidate the
+	 * guardband length checks we did on this pipe previously. That
+	 * could lead to prefill exceeding the guardband which would result
+	 * in underruns.
+	 */
+	min_cdclk = crtc_state->min_cdclk;
+
+	return _intel_cdclk_prefill_adj(crtc_state, clock, min_cdclk);
 }
 
 unsigned int intel_cdclk_prefill_adjustment_worst(const struct intel_crtc_state *crtc_state)
-- 
2.49.1

