Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 273CD6CDB2E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB2310EAED;
	Wed, 29 Mar 2023 13:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F18E10EAFA
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097825; x=1711633825;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Dqnsw2/pNTt8dOOlJxXY3FWfIG6ZymmPl8K4VawBNY4=;
 b=ZIrp2MdKRKYNiohehE3jsSWACpMWoy3Jf2Kbwih2c25Db1wArhaSNdUD
 M6gVlFV54aCTEAVRQ4YQbcLSzkw05VtdC6y0hPJSXyqS6em/Gc4tyl4zt
 3EZMCP2akKiuCcJdD/2QZUlR1/WCh0HYqYHfvIUrau9ipLlEbS26FDwxV
 pXEI0xfMRTNvd2Km28ygg7WExvRJbkyUrJdzxtvc/yQNGDW29R08A75IC
 EEr9QFp40GLvRSifzk7vcIAvU26c1vjWOouNH/xNdxS8g+9ESf+HH0rUE
 SZEESFv32PO061ChTnsU7bVUSvq2IsB1m6mQSNA/Ca9TErR3upSTE1Wcz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379059"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379059"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029463"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:57 +0300
Message-Id: <20230329135002.3096-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Sprinke a few sanity check
 WARNS during csc assignment
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

Make sure the csc enable bit(s) match the way we're about to
fill the csc matrices.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7e8820583942..2988c91d8ff6 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -373,10 +373,16 @@ static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
 	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 
 	if (crtc_state->hw.ctm) {
+		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+
 		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, limited_color_range);
 	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
+		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+
 		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (limited_color_range) {
+		drm_WARN_ON(&i915->drm, !crtc_state->csc_enable);
+
 		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_limited_range);
 	} else if (crtc_state->csc_enable) {
 		/*
@@ -406,16 +412,26 @@ static void icl_assign_csc(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (crtc_state->hw.ctm) {
+		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) == 0);
+
 		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, false);
 	} else {
+		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_CSC_ENABLE) != 0);
+
 		intel_csc_clear(&crtc_state->csc);
 	}
 
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
+		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
+
 		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
 	} else if (crtc_state->limited_color_range) {
+		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) == 0);
+
 		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
 	} else {
+		drm_WARN_ON(&i915->drm, (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE) != 0);
+
 		intel_csc_clear(&crtc_state->output_csc);
 	}
 }
@@ -476,9 +492,15 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 
 static void chv_assign_csc(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
 	if (crtc_state->hw.ctm) {
+		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) == 0);
+
 		chv_cgm_csc_convert_ctm(crtc_state, &crtc_state->csc);
 	} else {
+		drm_WARN_ON(&i915->drm, (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC) != 0);
+
 		intel_csc_clear(&crtc_state->csc);
 	}
 }
-- 
2.39.2

