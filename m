Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10AFBF306C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C7910E4D3;
	Mon, 20 Oct 2025 18:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="na5fpx47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA72D10E4D0;
 Mon, 20 Oct 2025 18:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986315; x=1792522315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AkGpIoellrBxXHaYm4T3QxfxgbrWCthfnVfWGOgrVdc=;
 b=na5fpx47AKtpgSqdz3hgl6GaZSDm2vczqYC5wHRoX6MoPNUGrgDhDlz1
 duIrhjymYcy8nnzZ99WD6u1LMvAVLdYzrHzG19WFTx2AXWj6v7WLLzIkt
 GYw+EQoR0/rceStV2EFUDWSWW+qXSCe6OEeRdXQrw0f8Haif3EQNyO4En
 Tcz2wcewKv50cA9+3bdV19Cafh81CQKUEnSvqbTx3w6cRyJXP/xs79Xvi
 0Dx/5HOpVWlGTNW3vdfspA/z/CCxPcLOxelZVV/7TR8ZHdJDEjsKEH4+J
 CO0ly+yaqNPKSA/OCsfs5VC6AyuUzzf9PS1J9DmuPNRutQuXCgo2vN7KQ A==;
X-CSE-ConnectionGUID: 6cbipeTuT5OUIjuXjyEFqg==
X-CSE-MsgGUID: 7avUVdomTY2oGTcz876M0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62140063"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="62140063"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:54 -0700
X-CSE-ConnectionGUID: VroIngkHR5OtcizOw9b+wg==
X-CSE-MsgGUID: lFGZJ22rTQCU8Ge2Kx3DQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183415097"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 19/22] drm/i915/vrr: Nuke intel_vrr_vblank_exit_length()
Date: Mon, 20 Oct 2025 21:50:35 +0300
Message-ID: <20251020185038.4272-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

Now that we always populate crtc_state->vrr.guardband even on
ICL/TGL intel_vrr_vblank_exit_length() has become rather pointless.
Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 71c5d8bf7557..ba92e0a76855 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -143,10 +143,6 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
  *
  * framestart_delay is programmable 1-4.
  */
-static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->vrr.guardband;
-}
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 {
@@ -161,12 +157,12 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
 }
 
 static bool
-- 
2.49.1

