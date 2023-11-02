Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FBF7DFC68
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 23:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF46D10E183;
	Thu,  2 Nov 2023 22:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC0210E183
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 22:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698964199; x=1730500199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=glp3v1OTGGT+2/OJ+I5ER7qNpAwcR0RXjWbZtrJRrXM=;
 b=IhHxjER4qs3KyVn+o+12HtIce5WNrcCznmp3um7Q96+BIHcjdvo36BKI
 x9ihU+DtjexCiGqaIP1O6IbF9FEgXtKQ5ofGtgwiu/aW4s2lVsgMzewLh
 6sZnvoNkxzdC2cfqrQP4caaK8V+Gr+K5npOFd0WPUk5PosYyXWek4pwSl
 KP2Z18DiMtIj1nBTOc3/9x6tkN6lhJi27oCR/jzzv0fUfGhr8EWeH+RtR
 gCm2nBMhBLG/Ls5wlSh+ChlJMNcdHR+XfhNbTyEkAKIgrZdsUEEYrDgB2
 TDeEzONSGSe53TFM8RYeMGLqEWns+bRrjNlZUdz2lD0sQG1BPeyL3Ce4S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453131146"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="453131146"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="934925373"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="934925373"
Received: from jpauw-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.215.30])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:29:56 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Nov 2023 00:29:41 +0200
Message-Id: <20231102222941.144583-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231102222941.144583-1-vinod.govindapillai@intel.com>
References: <20231102222941.144583-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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

Implement the alternate WA for the underruns when both PSR2
and FBC is enabled.

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

