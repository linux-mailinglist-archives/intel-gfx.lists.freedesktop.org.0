Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2164C709B0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B00010E66A;
	Wed, 19 Nov 2025 18:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfRPQuMl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C50710E66A;
 Wed, 19 Nov 2025 18:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576190; x=1795112190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JvCa1vDOPH/SJdkVFPVO+8PIrpO1zz9JFQ9TInU2zAw=;
 b=gfRPQuMleWnP2fVciSUxhB2M5IBaQ0mZalrnRvKM0mdp4k9MPPjGoOWV
 nf5CTfC1oCYY6hEBrUgd0CjKP95sJ7wurFIolU0Ejq1WYgY1n9rCNuiMl
 C5j5UbjseHaCQcFKGI09Es47w2ySg1YsHFezHApmdeZDfraJoLFUcidRB
 WGjtyp+uZB/903s8iaMhrgfEUuGE5VTocrgCE/DCBNYu7qpiEjLTW4UG/
 MRtaFUV6zaRNdA2COCDYGoCBCxsH4Am2EZG7k/ZQK5lKwoNa5u+E5C2CY
 kS8HcWFkXkrC+qlWgvsgQ1haJmHuxfLtKS/4EW4fQCdTJ6/VaF18QBwD5 w==;
X-CSE-ConnectionGUID: bsfDKy1VTmGhrYrT5LUaog==
X-CSE-MsgGUID: WZszcUzfQgyAv3swmt0xmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987753"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987753"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:30 -0800
X-CSE-ConnectionGUID: 1S3V4dF9Q4Cc+pldCixXnw==
X-CSE-MsgGUID: RrBYcDCtSXaA/5Rdbz5jxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916586"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:28 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915: Use hw.active instead of uapi.active in the
 initial plane readout
Date: Wed, 19 Nov 2025 20:16:04 +0200
Message-ID: <20251119181606.17129-5-ville.syrjala@linux.intel.com>
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

We're interested in the actual hardware state rather than the uapi
state, so grab the crtc active flag from the correct spot.

In practice the two will be identical here becase
.get_initial_plane_config() will reject the initial FB when
joiner is active.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane_initial.c | 6 ++++--
 drivers/gpu/drm/xe/display/xe_plane_initial.c      | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index a1de1ec564d1..ff1afd3a8f20 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -39,7 +39,7 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		if (!crtc_state->uapi.active)
+		if (!crtc_state->hw.active)
 			continue;
 
 		if (!plane_state->ggtt_vma)
@@ -411,10 +411,12 @@ void intel_initial_plane_config(struct intel_display *display)
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
 		struct intel_initial_plane_config *plane_config =
 			&plane_configs[crtc->pipe];
 
-		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
+		if (!crtc_state->hw.active)
 			continue;
 
 		/*
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 12d25c5290fd..01c105a93bb9 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -58,7 +58,7 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
-		if (!crtc_state->uapi.active)
+		if (!crtc_state->hw.active)
 			continue;
 
 		if (!plane_state->ggtt_vma)
@@ -290,10 +290,12 @@ void intel_initial_plane_config(struct intel_display *display)
 	struct intel_crtc *crtc;
 
 	for_each_intel_crtc(display->drm, crtc) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
 		struct intel_initial_plane_config *plane_config =
 			&plane_configs[crtc->pipe];
 
-		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
+		if (!crtc_state->hw.active)
 			continue;
 
 		/*
-- 
2.49.1

