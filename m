Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB7A7E6069
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 23:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0F710E880;
	Wed,  8 Nov 2023 22:26:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6D810E87F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 22:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699482381; x=1731018381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fY8D/lkdANbM1JDhqHrLAk7BXPpOqgUb7pGyWO4Qkgw=;
 b=LaTR9R9Qr5MCTOx7/dGmKw7a3YAy3BShdg991yMJYFLhH+t/oQUn1PQf
 v5TZV1f1UH59TFYsSNIGU44ccOt+HclmaE/EBjV40iXH8t/2GcG/SAxZX
 uYhCTtYhvussXSwYK2nbD2faoyaLIdFOoWb+mQvGn4NKm3nHXBrku7R2/
 8zziDC2vt+o4sX40veNgMt7qOpq8/0C5o7paEfmLhJriGx47HhmkEpDAN
 x/V8jZFqPpWDi6nGIFsdcnY5dDiX25pID61M6SM1tAfstlAPQtTmftY7S
 YB0zBJIZDSPJhluz/DE/qXfUmwwQf4w9yBfr2nwI28DWJcuEi82Dahld7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2829455"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; 
   d="scan'208";a="2829455"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 14:25:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="798150745"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="798150745"
Received: from sbelhaik-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.217.128])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 14:25:29 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 00:25:14 +0200
Message-Id: <20231108222514.26297-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231108222514.26297-1-vinod.govindapillai@intel.com>
References: <20231108222514.26297-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/1] drm/i915/xe2lpd: implement WA for
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

FIFO underruns are observed when FBC is enabled on plane 2 or 3.
This is root caused to a HW bug and the recommended WA is to
update the FBC enabling sequence. The plane binding register
bits need to be updated separately before programming the FBC
enable bit.

HSD: 16021232047
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bde12fe62275..8a3594e4d992 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 static void ivb_fbc_activate(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
+	u32 dpfc_ctl;
 
 	if (DISPLAY_VER(i915) >= 10)
 		glk_fbc_program_cfb_stride(fbc);
@@ -617,8 +618,18 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (intel_gt_support_legacy_fencing(to_gt(i915)))
 		snb_fbc_program_fence(fbc);
 
+	/*
+	 * xe2lpd: WA for FIFO underruns while enabling FBC on planes 2 or 3
+	 * 1.Write FBC_CTL with Plane binding set correctly with FBC enable = 0
+	 * 2.Write FBC_CTL with Plane binding set correctly with FBC enable = 1
+	 * HSD: 16021232047
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

