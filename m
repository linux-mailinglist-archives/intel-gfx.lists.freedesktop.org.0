Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB896C709A7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7194F10E3DC;
	Wed, 19 Nov 2025 18:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVkE6c8u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E9F10E253;
 Wed, 19 Nov 2025 18:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576176; x=1795112176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VyN35c4F+q9+B0ql9Rx5ro5G8YF5xLpyH3EkzjT8Xvs=;
 b=iVkE6c8uMidOZ+KuzOv2yENIr3MSctmUpJP8n65d5c/bTkA5lZZVK7F6
 1FEtaIPcXgPED5p2ZBVK5+GyLC+pmvnCvlt0xaWm0KTDlNGVkRXOe5QsL
 5lkLgPtH/z2vz/eykChwUlW2O/s3sOIKF9IPbHF0AxTQGPW271p0xN7oK
 aNKeNUut9NdoTfJiIYTyhd9RzPY8P967eoaYD7xEQ4gfSTQccCBPyzI+U
 pL22XrCB0Op0Tzl9HnNPSRNgdjvjNJ2/VZhVxw91RLfp/2tcV9AeV2SXu
 OfzOPuPxM0z6bHkqsI3jRmmmPyF4Bc9iD46T1xrc4LSQyQYkuSmKJhJoS A==;
X-CSE-ConnectionGUID: hdMfnviKTauCP6vVMfZyYQ==
X-CSE-MsgGUID: oOMjbxLfT9misHFb/GMvmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987738"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987738"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:16 -0800
X-CSE-ConnectionGUID: 2C8seIaCSR67tbVaHrzsHg==
X-CSE-MsgGUID: rgKRwHmqRaez/RF6CSeorQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916520"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:16 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915: Use the proper (hw.crtc) for the cursor unpin
 vblank worker
Date: Wed, 19 Nov 2025 20:16:01 +0200
Message-ID: <20251119181606.17129-2-ville.syrjala@linux.intel.com>
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

uapi.crtc is NULL for joiner secondary pipes, so using that is
nonsense in most places. Switch to hw.crtc so that we use the
deferred cursor unpin also on joiner secondary pipes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 153ff4b4b52c..2fe645860385 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -552,7 +552,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 
 		for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 						     new_plane_state, i) {
-			if (old_plane_state->uapi.crtc == &crtc->base)
+			if (old_plane_state->hw.crtc == &crtc->base)
 				intel_plane_init_cursor_vblank_work(old_plane_state,
 								    new_plane_state);
 		}
@@ -704,7 +704,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 		int i;
 
 		for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
-			if (old_plane_state->uapi.crtc == &crtc->base &&
+			if (old_plane_state->hw.crtc == &crtc->base &&
 			    old_plane_state->unpin_work.vblank) {
 				drm_vblank_work_schedule(&old_plane_state->unpin_work,
 							 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index a7fec5ba6ac0..870e6b896be6 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1408,7 +1408,7 @@ void intel_plane_init_cursor_vblank_work(struct intel_plane_state *old_plane_sta
 	    old_plane_state->ggtt_vma == new_plane_state->ggtt_vma)
 		return;
 
-	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->uapi.crtc,
+	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state->hw.crtc,
 			     intel_cursor_unpin_work);
 }
 
-- 
2.49.1

