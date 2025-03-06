Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70828A54BFD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0128410E988;
	Thu,  6 Mar 2025 13:23:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZBoxotU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B20210E988;
 Thu,  6 Mar 2025 13:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267409; x=1772803409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PcVnZOtLMok+IXO0IhpwgO1A7qLrv1m4NunO+MGhUo8=;
 b=VZBoxotU3Rw7lEBsOYLBRC+0pyDJ5wLUOWcrDZaSYSzosLjPAUSuWoRv
 8jUeTipMt9YtVge1a951GK4x7rMO5LsEsAvNiaAKpd9a6bvcY4YaAftz2
 ZolQp0iz8xRfjWVPTo2OWqXxDQDNImM+SPAPfuiJcWJeyFVd0u7EHFu5O
 LSWD5s5ujyPLDSH6RWPctXYiE2iNO22lwsgybPWHwEThtwCxloQMd5ID/
 UBqlln7kqf5JmQfnP9LIRB1g4CTug4F4iRFLJLuj9T1L2ydmPtVGD7myV
 T19hxJguj36Epad/fuy3ct4pPtyc9iKnMmUMmm2PMrrB7kfcYj/b4Eh+/ g==;
X-CSE-ConnectionGUID: q7qqWPT8QRO9KDMicIEUUw==
X-CSE-MsgGUID: dFAfD+DBQl6I6GWEyGgPbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524672"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524672"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:29 -0800
X-CSE-ConnectionGUID: 9ND2tiG1QHOGjZjZ3G5y7g==
X-CSE-MsgGUID: oUGNFSyzSeuw2uCMyZZMhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243168"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:27 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/21] drm/i915/display: Move intel_psr_post_plane_update() at
 the later
Date: Thu,  6 Mar 2025 18:40:51 +0530
Message-ID: <20250306131100.3989503-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e72c6024f33e..322a05648f58 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1050,8 +1050,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_psr_post_plane_update(state, crtc);
-
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
@@ -1080,6 +1078,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
+
+	intel_psr_post_plane_update(state, crtc);
 }
 
 static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
-- 
2.45.2

