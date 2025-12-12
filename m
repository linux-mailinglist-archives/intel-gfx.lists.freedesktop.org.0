Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5C4CB9213
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFA510E5BA;
	Fri, 12 Dec 2025 15:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1Uffi0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D581A10E8C5;
 Fri, 12 Dec 2025 15:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553350; x=1797089350;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7MJOIKDRrkiuFVl4DLxy90HAC/WoGvFuCz18/14t0Tc=;
 b=f1Uffi0ludnhCbBtNCiQ8nDG8OOPcNoG4VBR19/r89KlS8FWT4+AapDO
 c2ohjxY535qFe2FUkzQavyXffTQ8vqNqF2Nx7VgPW6HwG+mZ5YdfPnRqL
 zVsbmaiuOQLE/d3gC+GaOmrE+j24AbNowTxwaIbXwfE8T2I+a7GBZPvw2
 BG7QRia2xk+FgEqI9vZjxywq5R3saHMtrekSU9ZTXKOHJbrOouY1EemhX
 O9+32QGyNnhhL+F+hYu5nUzhU8Ja4M1ptZMM4Gr86ZEAsO0uAXb0agSMc
 BD8IyaI/GBuiNZYZxYDyAeHwOMLDEcUcxB4KdK2ORCiK8Krrdm0aZZhK+ w==;
X-CSE-ConnectionGUID: ps16SoDKTqG+SkbOw0GexA==
X-CSE-MsgGUID: 0zKz6ufCTDWzik8pxNQdrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67716381"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67716381"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:10 -0800
X-CSE-ConnectionGUID: PsWzZr9sRDu5z/FxKr6YVg==
X-CSE-MsgGUID: pf6p8r8gQKO+3OtXEec0EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197935053"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:08 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/13] drm/i915: Refine vblank evasion DSB check
Date: Fri, 12 Dec 2025 17:28:39 +0200
Message-ID: <20251212152847.13679-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

Use intel_color_uses_chained_dsb() rather than intel_color_uses_dsb()
when deciding whether to evade the undelayed vblank/SCL in the mmio
based commit path.

A non-chained DSB will not wait for the undelayed vblank/safe window
before starting execution, and the LUT itself will be double buffered
in this case. Thus we only need to evade the delayed vblank.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 671f357c6563..01f96efd00c5 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -700,10 +700,10 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 	 * undelayed vblank, so with seamless M/N and LRR we must evade
 	 * both vblanks.
 	 *
-	 * DSB execution waits for the transcoder's undelayed vblank,
-	 * hence we must kick off the commit before that.
+	 * Chained DSB execution waits for the transcoder's undelayed
+	 * vblank, hence we must kick off the commit before that.
 	 */
-	if (intel_color_uses_dsb(new_crtc_state) ||
+	if (intel_color_uses_chained_dsb(new_crtc_state) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		evade->min -= vblank_delay;
 }
-- 
2.51.2

