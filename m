Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD338971918
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AA710E486;
	Mon,  9 Sep 2024 12:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMXINDQj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FC210E44A;
 Mon,  9 Sep 2024 12:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884169; x=1757420169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zeIFf1CZiPEkqCGDPsW3l9wzjSExFFJWJYHxI1slisM=;
 b=kMXINDQjv673NezWEVSWbj7G1QJcyENA6/HEomz8IlE2bUjeozIxYRQz
 sd6w5XtXSm0/DocUPUxTy2uLbantn2LPH/66B0ep6RxxsN4Uy6GCUrK7k
 1Fj2te5hQ20ZOM//DXnMmNeRBPjHJgoi4PB3a6mq8I4QIYMT/wNOWrGOx
 BjMzoTFLUj9sjB50a7aeztuhBmbtUwZMOJ2ZcJQSqvzAVznJEJ6wQgqS9
 u4jKRUswOs4eeUJ/S0uJmIJajox0pmmHhmgA+gv/pSQvIvD260zD79sHr
 WkwLMwgMyFIFXcqCeVgUi/YCd+cPd4DMVf+LPxUPdt+pbFEWQs0paqTno g==;
X-CSE-ConnectionGUID: PH857igLTOyJ/8Anm1NhCQ==
X-CSE-MsgGUID: j4iv1x9SROmx9d6gvvkv0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500913"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500913"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:09 -0700
X-CSE-ConnectionGUID: 3Nk+ivbuQf6qceV/jYHj2A==
X-CSE-MsgGUID: IiveUdfmS+e4F36LdauqRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383713"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 4/8] drm/i915/pps: add vlv_pps_pipe_reset()
Date: Mon,  9 Sep 2024 15:15:39 +0300
Message-Id: <c1af97471503638262da7afa6198836d86307fbe.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
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
index c316950218c0..28a3044a3693 100644
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
index 3061fab30097..9c269a138ff0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -47,6 +47,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
+void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

