Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11161C709AA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B5410E653;
	Wed, 19 Nov 2025 18:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A0qlIRgF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E214210E3DF;
 Wed, 19 Nov 2025 18:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576181; x=1795112181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3v6FJhY+WRb11xd5D+ed5JNa2XS3PlrSNOqvx/0MdDY=;
 b=A0qlIRgFUaWIFL4QmqA7dzMeU1wUKggJViRkExSWZGx3BUUu3w11bHnZ
 o7KgvdQ5nWqya19KYpq7BQ2/ybRdM6dkOR7vC28lDczhwyQIMHOo4pMim
 6Znemlb7K6u0Cy108QhDh78O21wW5rQPiNnzjHOoXDlpKK11mYFor47OQ
 320SCZl0APMs7a+ZQaP1L6bI1DwTUTRk/BIlk4DZZAH0DN3spJapNFDAZ
 3aAghiH/gX2QDvu04skrFLtyKNuq/Ai1hYBRL6ydoj1BhM4X/wYpBGHnM
 GsdHLrTZQpDAQZWDlKORvxOcKqBgepr2xB5gSV8rNs4LIXNBqnU7jZUzA Q==;
X-CSE-ConnectionGUID: 7widYjDKQ5CL7YoFp58B/g==
X-CSE-MsgGUID: WyV3JAhdQmCxzfHNanWByg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987744"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987744"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:20 -0800
X-CSE-ConnectionGUID: 4XahKMOUT2SP6VQgNGGxsg==
X-CSE-MsgGUID: hX/IKVhySv6MeHqxVjwFhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916537"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:20 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/psr: Use hw.crtc instead of uapi.crtc
Date: Wed, 19 Nov 2025 20:16:02 +0200
Message-ID: <20251119181606.17129-3-ville.syrjala@linux.intel.com>
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

uapi.crtc is not set for joiner secondary pipes, so generally
should not be used anywhere after the initial state copy. Switch
to hw.crtc which actually indicates that the plane is enabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 00ac652809cc..22549b46467b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2707,7 +2707,7 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
 	for_each_new_intel_plane_in_state(state, plane, new_plane_state, i) {
 		struct drm_rect inter;
 
-		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
+		if (new_plane_state->hw.crtc != crtc_state->uapi.crtc)
 			continue;
 
 		if (plane->id != PLANE_CURSOR)
@@ -2844,7 +2844,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		struct drm_rect src, damaged_area = { .x1 = 0, .y1 = -1,
 						      .x2 = INT_MAX };
 
-		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
+		if (new_plane_state->hw.crtc != crtc_state->uapi.crtc)
 			continue;
 
 		if (!new_plane_state->uapi.visible &&
@@ -2943,7 +2943,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		struct drm_rect *sel_fetch_area, inter;
 		struct intel_plane *linked = new_plane_state->planar_linked_plane;
 
-		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc ||
+		if (new_plane_state->hw.crtc != crtc_state->uapi.crtc ||
 		    !new_plane_state->uapi.visible)
 			continue;
 
-- 
2.49.1

