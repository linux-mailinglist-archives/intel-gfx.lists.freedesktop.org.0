Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADCC810E5C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D719B10E76D;
	Wed, 13 Dec 2023 10:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5245B10E76D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463128; x=1733999128;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N3M+TupkbA3S8j1oFnToxB+fLUwnLvCnYPVh64aZ7Js=;
 b=eW6DkrMh63JIwlP3aQxDiE7CK3/UgB4S8EDs1Q1W0q1qr9Uvzx0zOEk/
 OFN3OF093TliCDuH0l4YaRNZzdYnh+JwCgFQ0KvrfuOPob75eb3DzCAnn
 aUwsJgi7Wq4C4O2NQVkxDaju9S/7xL6+/n2jqlRkKR+cBgnYJ+ycOvqm2
 4OcsmW/57T008Epp6NDWsTvqCw6BYI9ZlqoDRh9X00BE0btGreVMO5zmo
 DL+ShbIPsgVaus1o3BdierxOwuURipgf/vDFf/+tsJzRzKLjHbeTngJsn
 9P5dz6VPsFZFkQ38PIaUK+N8FihKpbBQP6dVAYJGunzeWDMakCYnQx2vV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816079"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816079"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161644"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161644"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915: Reorder drm_vblank_put() vs. need_vlv_dsi_wa
Date: Wed, 13 Dec 2023 12:25:12 +0200
Message-ID: <20231213102519.13500-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

Drop the vblank reference only after we've done the hideous
need_vlv_dsi_wa stuff. This will make it easier to reuse the
the vblank evasion machinery elsewhere.

Keeping the vblank reference for a bit longer is not a
problem. In fact we might want to not drop it at all until
intel_pipe_update_end(), but we'll leave that idea for later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index d5c3f6078e42..4df8927bb062 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -614,8 +614,6 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 	finish_wait(wq, &wait);
 
-	drm_crtc_vblank_put(&crtc->base);
-
 	/*
 	 * On VLV/CHV DSI the scanline counter would appear to
 	 * increment approx. 1/3 of a scanline before start of vblank.
@@ -634,6 +632,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	while (need_vlv_dsi_wa && scanline == vblank_start)
 		scanline = intel_get_crtc_scanline(crtc);
 
+	drm_crtc_vblank_put(&crtc->base);
+
 	crtc->debug.scanline_start = scanline;
 	crtc->debug.start_vbl_time = ktime_get();
 	crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);
-- 
2.41.0

