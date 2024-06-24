Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB809156F4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F34D10E22E;
	Mon, 24 Jun 2024 19:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DkoOPGho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7894310E18C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256238; x=1750792238;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NU85qjc/EGoQILAfmgViN/x6t7b/gDJsf66WGjK0CbE=;
 b=DkoOPGhodHB/IG7BPBSMQkShrqo472JkV4X9ZKgrsm8lynLyCzJH3E57
 GGQcEzpU5Ky26fst6YRK8bMEYzUaWXBq3+uU6VDpC9N400R2SOWygdrqe
 bOWfbihAI9VJgpRdnCLiAGoVxmsgDoM8LsBoqp6vgPuQauQOItmmxXxJU
 iFHEagkXTbPj0I0QBGJCBXm/6Dl5W3p5kb88ZjUAk1BPSoC8Vf01ptktK
 2OkPgw5QjCpkHwoHCR7Baf0xaSNRpjPRKzQXKWmVCoc+OgE/SE/vjGjWm
 SZ5kRsvCluogn4ATA6fHAIEXTGZsBxm8fVcmWKwHSYKn453hR8wmj1uEh w==;
X-CSE-ConnectionGUID: O6yxlHK/SuCmiZX2ngOKvg==
X-CSE-MsgGUID: zoniCI9yTPa2dylvO3XpUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374105"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374105"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:38 -0700
X-CSE-ConnectionGUID: yigAWLJGRnSKzKy+Pqyf9w==
X-CSE-MsgGUID: jHe8lxbESwWYT5tguFdrGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371908"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/14] drm/i915: Calculate vblank delay more accurately
Date: Mon, 24 Jun 2024 22:10:19 +0300
Message-ID: <20240624191032.27333-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Calculate the vblank delay in the vblank evasion code correctly
for interlaced modes.

The current code assumes that we won't be using an interlaced mode.
That assumption is actually valid since we've defeatured interlaced
scanout in commit f71c9b7bc35f ("drm/i915/display: Prune Interlace
modes for Display >=12") for DSB capable platforms. However the
feature is still present in the hardware, and if we ever find the
need to re-enable it seems better to calculate the vblank delay
correctly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 5b065e1cd4e4..f183e0d4b2ba 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -652,7 +652,8 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	 */
 	if (intel_color_uses_dsb(new_crtc_state) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
-		evade->min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
+		evade->min -= intel_mode_vblank_start(adjusted_mode) -
+			intel_mode_vdisplay(adjusted_mode);
 }
 
 /* must be called with vblank interrupt already enabled! */
-- 
2.44.2

