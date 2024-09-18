Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BE797BFD6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095A310E60B;
	Wed, 18 Sep 2024 17:48:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3mfBagA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E404C10E60B;
 Wed, 18 Sep 2024 17:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681711; x=1758217711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ha/DHjF4rElgcS50qGoAQJT0qZo7szyp4DzDOYEmIo0=;
 b=X3mfBagAuj8AWw4PFWjHuUB2q9YEXKObSDXxynYZmmn4wiF8Gh/zwtou
 hoRu0+K5ztjRZgxh+EucrpvNVfk8w/AJAF2FoWYd18daKdnfJtIOFToLH
 PIFHKfG2f76tOz0Fc9xEm13gORDOVc9Of9/09WgaCswDEkpxriPr5IZWq
 C0MMq+MmWRSG1SJJld1JHtrT8TwyHqyieBiVDVN6idbsCgHfJm8gGT9wP
 2HxjX6wwRppVi9EBQWs2G6WOZFB2kOwy4VNCNflNQqpGX2W9NqKM5ZBl3
 L9eECIN/4GMDb2xMpFFztav+A4tezNLI5C8kne/PBMbrGBoPYLahGFE2y Q==;
X-CSE-ConnectionGUID: UBFHt6PtTaeNLQhngTvuHQ==
X-CSE-MsgGUID: 27pakVJVTK6P7v+VZrHvKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25492993"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25492993"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:31 -0700
X-CSE-ConnectionGUID: ag2rPvvZRX+hjfJmz6HiUQ==
X-CSE-MsgGUID: 7ZisOIPoSBa4DSwsTdgtsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69660511"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 7/9] drm/i915/pps: rename vlv_pps_init() to
 vlv_pps_port_enable_unlocked()
Date: Wed, 18 Sep 2024 20:47:47 +0300
Message-Id: <3b21141025a5e1e67f28bbe67a82a7008fd3f415.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Follow the naming for vlv_pps_port_disable(), as these are counterparts,
and add _unlocked suffix as it assumes the pps lock is held.

v2: Add _unlocked suffix (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_pps.h | 4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e3db1cba11c9..162802c54d4b 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -690,7 +690,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			vlv_pps_init(encoder, pipe_config);
+			vlv_pps_port_enable_unlocked(encoder, pipe_config);
 
 		intel_dp_enable_port(intel_dp, pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 465a555c9e24..63bae4c3a71a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1227,8 +1227,9 @@ void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
-void vlv_pps_init(struct intel_encoder *encoder,
-		  const struct intel_crtc_state *crtc_state)
+/* Call on all DP, not just eDP */
+void vlv_pps_port_enable_unlocked(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 795e25c91952..5b3eb7fb7e1f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -47,8 +47,8 @@ void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
-void vlv_pps_init(struct intel_encoder *encoder,
-		  const struct intel_crtc_state *crtc_state);
+void vlv_pps_port_enable_unlocked(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state);
 void vlv_pps_port_disable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

