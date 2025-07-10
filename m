Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5DCB00CE3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 22:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CD8110E955;
	Thu, 10 Jul 2025 20:17:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ike8GakO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8747810E95B;
 Thu, 10 Jul 2025 20:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752178666; x=1783714666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+3ZM6Xqxcti4ur5QkGlRYN6LWx4PJzswGTqDKzB0v+4=;
 b=ike8GakO8fV2SYpxEWKphhML1jX+EX4IxFva/jOaJZ4jiRmBLU1vQUPq
 UdLNjqmWWJoMmrlrE0rCHg1tTz7PnKHDTdXgVvPGb8nhxi59Ll5BPHufl
 iyDaWB0U30GX/7J2yzBDkPgy1rt6wrS+LDVXhjuEbyURGNLgVuF2LUB0w
 ByrKpfzO+Z/CDu6Dj4kRl9ycfSq2FJhzZx1/43RrnoMbWGKlI24v+G8nT
 DQ9DY1d1Djn/R8Zlnt26GD88kLX8zTwwYNmEGrmtHa7zazbeMF2lP2VQP
 ii345dOKNQPLLVLRh4yx7ZSOLuKCOYLj60IiK1WI40G4251S+f9xzWIGg w==;
X-CSE-ConnectionGUID: anYk0kQEQRK32XIv3pvbog==
X-CSE-MsgGUID: 4bxIUjuxSFOswn1/Noa4OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54444589"
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="54444589"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 13:17:46 -0700
X-CSE-ConnectionGUID: CH6PRzHOSa6u7jgkIF7sVw==
X-CSE-MsgGUID: pi+eTSniRyOlYSr0nvLyVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,301,1744095600"; d="scan'208";a="161877631"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 13:17:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 23:17:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 7/7] drm/i915/dp: Make .set_idle_link_train() mandatory
Date: Thu, 10 Jul 2025 23:17:18 +0300
Message-ID: <20250710201718.25310-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Everyone implements the .set_idle_link_train() hook now.
Just make it mandatory.

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index cb3870427f3f..344b74109a83 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1138,9 +1138,6 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	intel_dp->link.active = true;
 
-	if (!intel_dp->set_idle_link_train)
-		intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
-
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 
@@ -1381,10 +1378,8 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
 	if (ret)
 		ret = intel_dp_link_train_phy(intel_dp, crtc_state, DP_PHY_DPRX);
 
-	if (intel_dp->set_idle_link_train) {
-		intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
-		intel_dp->set_idle_link_train(intel_dp, crtc_state);
-	}
+	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
+	intel_dp->set_idle_link_train(intel_dp, crtc_state);
 
 	return ret;
 }
-- 
2.49.0

