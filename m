Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB529A487A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C7010E9AB;
	Fri, 18 Oct 2024 20:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PQEEDTSx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E0010E9A0;
 Fri, 18 Oct 2024 20:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284594; x=1760820594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rjp8/tR3gqm4GS5X/ajslw5SDaQIA9QpQg3HsQOXC/w=;
 b=PQEEDTSx+W6DIsj36ep8ifmU/KOPES+bKPlUyCZO6FdgdJ8U3PCvlMC/
 +OST+dh3P4nhSC/HTBh7yufHIJqFMxDIjNP7c7DdubPFUa1/PSeF1d0m7
 QFzY14YLP4fk7ofyuVCqwXF1+96s1QQ/JsuCTbtTYP605q6gAWbV6KK+g
 lvGcN7U5QQDJoakot1s6NNbLXjyn4LOwKPtEo3eJa9za/Rac7W+4Jrur7
 9tkgqd2x09Pqtl+SldFDrP6mVPwTnfYl1SHHSGezGyW6H6Qdh0eF9kh4U
 cgxe9XjAB/k9JEuea36u1suwMb66AHy8E8+MgzsACKA9aI9QutbAeAviB Q==;
X-CSE-ConnectionGUID: 19vJ+cvuTc+sHJTeZXCc9g==
X-CSE-MsgGUID: JGDCnyosR2aGK+8+I4qmKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240192"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240192"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
X-CSE-ConnectionGUID: HElyHhZ/QsGkOQW3kwP1/w==
X-CSE-MsgGUID: sz58Dz4rTISXm9vK5B9sFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798961"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:52 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 07/12] drm/i915/xe3lpd: Skip disabling VRR during modeset
 disable
Date: Fri, 18 Oct 2024 13:49:36 -0700
Message-ID: <20241018204941.73473-8-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Spec does not request to disable VRR in the modeset disabling
sequence for DP and HDMI for xe3_lpd.

Bspec: 68848
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index dad415650b40..90669c7f988b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1310,9 +1310,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	if (intel_crtc_vrr_disabling(state, crtc)) {
-		intel_vrr_disable(old_crtc_state);
-		intel_crtc_update_active_timings(old_crtc_state, false);
+	if (DISPLAY_VER(dev_priv) < 30) {
+		if (intel_crtc_vrr_disabling(state, crtc)) {
+			intel_vrr_disable(old_crtc_state);
+			intel_crtc_update_active_timings(old_crtc_state, false);
+		}
 	}
 
 	if (audio_disabling(old_crtc_state, new_crtc_state))
-- 
2.45.0

