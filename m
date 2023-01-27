Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B15767EC6C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 18:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD22F10E9B9;
	Fri, 27 Jan 2023 17:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7641B10E187
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 17:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674840650; x=1706376650;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dBQSM5zD5vA6EDorn5oTf6yj71Ue0HtDY8KnxxE6uQg=;
 b=Nyp7aOeVhrF5OTZbiNf9XXBr7xHSnfJXwXIvK4K9E6Fo9/npJcRIX+T1
 j0tpAItEcb0aTq6XP8xJCze+ip16ZXILa0peKhmv3XGRDUtLNfsLFADyP
 izMu3/J1AoM6HAtFqZESoMd2YV9jwJZj5jAbpwbdG0oUgd+xaoHF9QN7F
 4XPc2WKEcG2iI9DVES4ZRPKCRneErnfAzWzAlW925rfFU6EAA4kChnxCs
 iuRC8SMqWEuOIlnfkymS8D5WxMnYXKx7ZV36LA2e93ygPDKGw5iJjYRCm
 tg2IIka81HaHrhiZuSPQQiU0p9Nj5sX8wEqxcIMmMj+oZ5diXqlVVOQL4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="327160479"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="327160479"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="752061821"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="752061821"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 27 Jan 2023 09:30:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jan 2023 19:30:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 19:30:41 +0200
Message-Id: <20230127173044.24108-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
References: <20230127173044.24108-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/vrr: Fix "window2" handling
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

The "window2" delay is just the difference of vactive
(undelayed vblank) vs. vblank_start (delayed vblank).
Just use vblank_start during the VRR calculations so
that things work correctly regardless of whether delayed
vblank is used or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5ff6aed9575e..4228f26b4c11 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -144,17 +144,11 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 * is deprecated.
 	 */
 	if (DISPLAY_VER(i915) >= 13) {
-		/*
-		 * FIXME: Subtract Window2 delay from below value.
-		 *
-		 * Window2 specifies time required to program DSB (Window2) in
-		 * number of scan lines. Assuming 0 for no DSB.
-		 */
 		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vdisplay;
+			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
 	} else {
 		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
+			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
 			    crtc_state->framestart_delay - 1);
 	}
 
-- 
2.39.1

