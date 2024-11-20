Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE1A9D404E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 17:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B64410E2D3;
	Wed, 20 Nov 2024 16:41:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeOlRwtg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABFF810E2D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 16:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732120910; x=1763656910;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pv5VFkjekOTioWmyYjl4EJwkl2bztJEYXSf8Si7vUDk=;
 b=IeOlRwtgHnPyzluqrtsxDhG/XqSaMM0OnrMTG94Hq5DwhC/OELwW70yK
 Hm9mNBL7JOC+pnuVjLDtzp2taGzWYoaV0EqkopNGAog8El0CCw4J+REGn
 SKj8YAYogHWkT7irPD0/63FkSpe+SW3Yp+ZR7lRRcCO6+SvhWQY3AtjUa
 yaeoWMcZv7B2YagSFHF0JcpAfGd7V9E2io8cWfc4he24qVjD0AT1+4ZYR
 5ZQTanHhlBzl8v5Mzyg1tWC4MiBeItmgJxVFJ4QJwlHzAq033aI0+ssJr
 PmuEiVWaVW8smg3E8B4/1v0BHVAD4YdqxGVILhJmk8KnF4OlcB41DlTki A==;
X-CSE-ConnectionGUID: jn9gGZH6QIGfm2ePIRSkPw==
X-CSE-MsgGUID: L24FRP2VTDus3ar7nMo2fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49620353"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="49620353"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 08:41:37 -0800
X-CSE-ConnectionGUID: Wqc3PM6rRZiVBU5dsn4j0A==
X-CSE-MsgGUID: ytStt/uzT+6mszaEyVhahg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="90137181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Nov 2024 08:41:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Nov 2024 18:41:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 4/4] drm/i915: Do state check for color management changes
Date: Wed, 20 Nov 2024 18:41:23 +0200
Message-ID: <20241120164123.12706-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
References: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
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

In order to validate LUT programming more thoroughly let's
do a state check for all color management updates as well.

Not sure we really want this outside CI. It is rather heavy
and color management updates could become rather common
with all the HDR/etc. stuff happening. Maybe we should have
an extra knob for this that we could enable in CI?

v2: Skip for initial_commit to avoid FDI dotclock
    sanity checks/etc. tripping up

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index bc70e72ccc2e..f61641d27c4a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -239,6 +239,8 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
+	    (!intel_crtc_needs_color_update(new_crtc_state) ||
+	     new_crtc_state->inherited) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;
 
-- 
2.45.2

