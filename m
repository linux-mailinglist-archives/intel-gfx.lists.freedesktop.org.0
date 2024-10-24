Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708879AF569
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB1910E9AE;
	Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uy/craPl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354C610E9AD;
 Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ot5Sui5uzaMucMBL3gsVp983UMv0eszFGYD1PtcmYLI=;
 b=Uy/craPla1DfMPOuzDZ73QDdCGsDaV75yBVeu8FoYCB1WhShO2oINXP8
 I+qQyeIqgn+WpVcg9FfSBXP6wtEwINthJVxdaq3iVdR8/+yWUOX8klUNm
 VaAt7cWcSKvgqjNqsVod9b7B+AqGvILgMAXh/jwUp++CuY9R31Nj1NYXS
 /MpsuTWmS9QQGQJDlRvIppeOzUz9QQ7CFFq6C71cDjVF2jG7qSOYucsOC
 bQHBbgw6gyRLFT4aug+cpFepyTMh3XnOZB/85b3TI7/LZ8TiGDgk3tGLq
 I7S2iyh3J09UhEhrPLxLCUIxoYmdHmHXlDYTKIoWRom1XpIyZpX/pg/p3 A==;
X-CSE-ConnectionGUID: FZO+oPfAR5GIphfHJf4QUQ==
X-CSE-MsgGUID: my1gCd4STbOBK8rNR297Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950813"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950813"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: 8HVKJsOWTF6W1QVTaXiHtQ==
X-CSE-MsgGUID: VqCgVCl5QQSmz3boSPXU5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838678"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during modeset
 disable
Date: Thu, 24 Oct 2024 15:31:13 -0700
Message-Id: <20241024223114.785209-11-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c904f529d0c5..7a6961432616 100644
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
2.25.1

