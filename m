Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D68A7E5955
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 15:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC7610E785;
	Wed,  8 Nov 2023 14:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CDC10E78B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 14:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699454379; x=1730990379;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mfQep7ckIkl5Vhh6fltakSCDKizzOpYlxHLh5b7m5K4=;
 b=iZz9UOTRCCWB1oqjl2oCgj0/6lqsE850mHw3A+J/hyrAH/7w+Knf90ik
 CO91aIZ9jhEs8iFu3ynQ9OWBUxxQEekOePpybAFg08IrTrAv0/EcxGTHf
 TdHRysq2XDbaNdrIvrbSPKYexhdELEQ68nc65QjpAJ5wqakbinnchluPu
 bX3qwf5EcEz6w56SWnR4rmQQkdOqaTboNwHnTrDBtwlgyJNv7HA2fXd/d
 1zKmYiGz2Uc+rV4pZgwK2tWrDpGoWuU3hPhObVIZDBYZJISZUpnueS9lq
 q9pCZdJUODUE5IMJH7U4WznCLWEdPrMijTr4uQtTyw8k6UixQvuQxx2gP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="388635100"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="388635100"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:37:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="828992562"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="828992562"
Received: from nofferma-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.43.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 06:37:17 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Nov 2023 16:37:02 +0200
Message-Id: <20231108143702.40495-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231108143702.40495-1-vinod.govindapillai@intel.com>
References: <20231108143702.40495-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/xe2lpd: implement WA for
 underruns while enabling FBC
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Because of HW bug, the FBC enabling sequence need to be updated.
The plane binding registrer need to be updated before programming
the FBC enable bit.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bde12fe62275..b9cd92a997cd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 static void ivb_fbc_activate(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
+	u32 dpfc_ctl;
 
 	if (DISPLAY_VER(i915) >= 10)
 		glk_fbc_program_cfb_stride(fbc);
@@ -617,8 +618,17 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (intel_gt_support_legacy_fencing(to_gt(i915)))
 		snb_fbc_program_fence(fbc);
 
+	/*
+	 * Alternate WA for HW bug with PSR2 + FBC.
+	 * 1.Write FBC_CTL with Plane binding set correctly with FBC enable = 0
+	 * 2.Write FBC_CTL with Plane binding set correctly with FBC enable = 1
+	 */
+	dpfc_ctl = ivb_dpfc_ctl(fbc);
+	if (DISPLAY_VER(i915) >= 20)
+		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
+
 	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
-		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
+		       DPFC_CTL_EN | dpfc_ctl);
 }
 
 static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
-- 
2.34.1

