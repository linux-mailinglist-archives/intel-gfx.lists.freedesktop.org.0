Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2D9A6F432
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873D010E54C;
	Tue, 25 Mar 2025 11:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uf2/J8zu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DA710E54C;
 Tue, 25 Mar 2025 11:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902485; x=1774438485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=db3aDJm7yaQszpY+lRZ3Y3Gwbhk14rvqqMCpxrPqS6Q=;
 b=Uf2/J8zuLH7cZtkVt6EeVTC4ssp3WgBJofYtF1pryPto+6GDQemkpYjB
 EFK62kwVwHt+ld4385YnrgrogELLsbdxvMrgTyB8Zq0Vs5kR3nJyKDSKl
 vi1fPDyRU0cVR+3AaMLyLROT0fcEhSHMjdxJP37OOoO6XMiP6yWLcFR5Z
 AT/rEbn4ecpaD8U+ReMbMinRAubd/aOr8VskaQ/cFtxjzTxqzFZPP/J31
 B4qgbqWIAai0Tol/tNK5nT9p9d8jrXIW2UVjUh9PEvvL4pW8GB1FrFhgj
 38vVT6qUacKm95+agsS2KZiFEYEQ1TAXoGiblh6EtX/oDi91uLlPjoAYN A==;
X-CSE-ConnectionGUID: nWnos3tgQhimq1xqtbbZLQ==
X-CSE-MsgGUID: pbcMscU8R7ihgnIv8Svp3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266906"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266906"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:45 -0700
X-CSE-ConnectionGUID: Giiv8DIWQrm+HaebAL4STw==
X-CSE-MsgGUID: 4fVkiwqKS8S1gWW8mS3yaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070553"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 04/16] drm/i915/display: Move intel_psr_post_plane_update() at
 the later
Date: Tue, 25 Mar 2025 16:52:37 +0530
Message-ID: <20250325112249.228444-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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

In intel_post_plane_update() there are things which might need to do
vblank waits, so enabling PSR as early as we do now is simply
counter-productive. Therefore move intel_psr_post_plane_update() at the
last of intel_post_plane_update().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 53675a92bbf5..b68b86923dca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1049,8 +1049,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_psr_post_plane_update(state, crtc);
-
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
@@ -1079,6 +1077,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
+
+	intel_psr_post_plane_update(state, crtc);
 }
 
 static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
-- 
2.45.2

