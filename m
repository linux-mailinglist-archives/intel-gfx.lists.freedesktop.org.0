Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D152FC709B3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6567710E3DF;
	Wed, 19 Nov 2025 18:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z1LkYAQR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E527210E251;
 Wed, 19 Nov 2025 18:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576195; x=1795112195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3qE4GcQqBuCTsaZqoVFZIHHniheBr6OHTqdFfMVxup4=;
 b=Z1LkYAQR14AHjTP8xYnT7X7XuJdnQczVWAn839QXLMk9prjxMayKl9xa
 D6MZyJmTX1EzXJpcQdr4jSoQ9ob0zm3ghhZ2FI8sAiLEOvPJMY7o15Ijk
 0/taEDeyfn8jnC9g/2hzWRUPgRBsPNZLfconxKpW2zt7vBgOcm27Hn4Ye
 MBDlyhgka8olLkn7eOS80QNxwsLQgEKD/MrMO+nq2Wu81UtfdfMaaQCqw
 D9dBbyAhLn8CjbbP7j/g4c1ppD5hjD9JSUd2D8I4/bguK5+LTG+xD/7nx
 8+UkFUy+ndrOfk/Z08I5LON5/xMekhgtTYwva0AykTsyMlPW+breSq73x g==;
X-CSE-ConnectionGUID: XlfQzGRDRAeZZZ4ktC98PA==
X-CSE-MsgGUID: 8WpRJbQeS7q08gvnOTwbrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987759"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987759"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:34 -0800
X-CSE-ConnectionGUID: TwLSzJVUQays9psloz+3ww==
X-CSE-MsgGUID: EkjOZ5SkS96trsT/6Llciw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916617"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:33 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/6] drm/i915/panic: Get the crtc from the correct place
Date: Wed, 19 Nov 2025 20:16:05 +0200
Message-ID: <20251119181606.17129-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
References: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
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

Use hw.crtc as opposed to uapi.crtc in the panic code. I suspect
this stuff doesn't handle joiner correctly in other ways either
but can't be bothered to dig deeper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 870e6b896be6..6a3d4ddc52a1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1277,7 +1277,8 @@ static unsigned int intel_4tile_get_offset(unsigned int width, unsigned int x, u
 static void intel_panic_flush(struct drm_plane *plane)
 {
 	struct intel_plane_state *plane_state = to_intel_plane_state(plane->state);
-	struct intel_crtc_state *crtc_state = to_intel_crtc_state(plane->state->crtc->state);
+	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *iplane = to_intel_plane(plane);
 	struct intel_display *display = to_intel_display(iplane);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
-- 
2.49.1

