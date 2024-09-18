Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F6297BFD4
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490A910E611;
	Wed, 18 Sep 2024 17:48:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m5oHJuav";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17B5810E611;
 Wed, 18 Sep 2024 17:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681701; x=1758217701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9riQHNynQ65NEI6xunTcKVxOr+eVD3dL26HpNkD5Bpk=;
 b=m5oHJuav9PEhUjt1nmBiRdWGZX4iCbmqqnsWShF77ihUdJcfdQXJNuR1
 /mCQQKmxmBbW3nUM2qTPjCiNshBSs6MXRMLThUjfsKxk980J6x6U4Nh+i
 dqlF2GJsteOp2rJWi3VDpCtftVxDTPLx3VimbggxMMct+cfCURkeJnfgX
 WPTkYg5Pn4FC6vh3qfh8Yf4Yb+OdP7/viyhZB4Lb601EtMgUfW43wQAzj
 VSA/I2t99CHCiYRHxJ3LnhwXQNsCdW+Bxbnty72S29mPZJO27h2WMlnUC
 /s33QAiQYHPyuyxaSVGMvazDqcSUgMgflx7JVd7q2tJNhSrfs3nRynE/z w==;
X-CSE-ConnectionGUID: I6fJmJUHT6Wx3wwdxy3Ihw==
X-CSE-MsgGUID: 5s+pJNELROa/wRcrQe9Wmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25492976"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25492976"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:21 -0700
X-CSE-ConnectionGUID: hRCEXezTTNeZMhVuKCR9AA==
X-CSE-MsgGUID: 0fhnkt/BQFaTfdNOyHYhMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69660455"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 5/9] drm/i915/pps: add vlv_pps_pipe_reset()
Date: Wed, 18 Sep 2024 20:47:45 +0300
Message-Id: <e1bae913533baea8e502d8c63c06f6852a1cdb93.1726681620.git.jani.nikula@intel.com>
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

We need to track PPS also for non-eDP usage on VLV/CHV. Add new
vlv_pps_pipe_reset() for resetting the related parts, hiding the PPS
pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 8 ++------
 drivers/gpu/drm/i915/display/intel_pps.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_pps.h | 1 +
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 1699fbbb56c9..edbd654757e2 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1273,12 +1273,8 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 
 	intel_dp->reset_link_params = true;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_wakeref_t wakeref;
-
-		with_intel_pps_lock(intel_dp, wakeref)
-			intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
-	}
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		vlv_pps_pipe_reset(intel_dp);
 
 	intel_pps_encoder_reset(intel_dp);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5957e79186f0..e4b17bd5efb5 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1218,6 +1218,15 @@ void vlv_pps_pipe_init(struct intel_dp *intel_dp)
 	intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
+/* Call on all DP, not just eDP */
+void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
+}
+
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 5686e900e7de..6509768cd55f 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -46,6 +46,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
+void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

