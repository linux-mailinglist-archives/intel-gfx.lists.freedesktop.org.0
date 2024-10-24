Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD57C9AF513
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CB810E9A7;
	Thu, 24 Oct 2024 22:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTsWB6Pi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E861910E3C5;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807679; x=1761343679;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cIIVovLXv4XZPy+czo3A1oY3sAYW5lP/cjUme+/0Z5o=;
 b=gTsWB6Pi2f2fYFFkCRi+YBNw7thoD9x27yaW9YPsoG2FAkf0lv5xrGzL
 Mn/8zQQvEozJfCUYd1xQlz5/qFkSa+DNrqBAqd6ACENulQrbe8SHn9W6M
 /WiiT+3mcm2RZOaAxiD8rpOaHNh2WvpBe6saIwmCF9qze+x+ms8x4A/fJ
 Vcye5uUrFRnqTNnOOS8MOOfjbJx0/aUO5TF88uAMn1anouZIQxiNZ2jnG
 Ls6jan8Vd4m2xy1A3JBrrfpg0CE36BZkZahkgowmoQa7rA9yKbd3rpUF2
 kKYzthVelEiDbIbjxUqMLAlRQmI6e4/PuJ9fESDvPkhwqgUYzFQILXaRO A==;
X-CSE-ConnectionGUID: T8UjulQUSA21It+ZEMpDEg==
X-CSE-MsgGUID: 4pZq8BYSSE+MoMs1RFZg1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367642"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367642"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
X-CSE-ConnectionGUID: EIJz26fmS4+/mN4hGupczw==
X-CSE-MsgGUID: R927U8pkSOqrqIg/DKHbAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687969"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 10/11] drm/i915/xe3lpd: Skip disabling VRR during modeset
 disable
Date: Thu, 24 Oct 2024 15:07:51 -0700
Message-Id: <20241024220752.714457-11-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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

