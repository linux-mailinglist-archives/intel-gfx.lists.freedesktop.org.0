Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C740BDC4E1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A94610E6F5;
	Wed, 15 Oct 2025 03:17:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqVOKtB3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F4710E6F7;
 Wed, 15 Oct 2025 03:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498256; x=1792034256;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=COx5wJgEXUgnETMdB8cloA98YqGnqcGgWwmclWiJg4w=;
 b=GqVOKtB3VGyFgIku+0tQRh9JqKYeB48y1ZhncQofs775G3jqEWeT0jRu
 3Hpc2TdecNSmAPsEbvdXvLhu2yq61ECZ4leegrxMOAth/UpWLb9SeKmgf
 UOCJXzHE6qhHj56vDvCi7G99Bs+P3YkX7VkdDA05eGYpWxc5hQJbkmzP0
 EDOLR3xNiLlyVeMYlGKc+2YvF9H22QC25gcMT35C1DYklTaqpXNfNsr0A
 iiaSw7zAH71UuiqwrNXzfEOLwYBJF6yC7oMjXIS8uzTlTLoaRQhZxsdiX
 nuYdqkI6Bty2IUOb6+mmGeM5achb+w3/Qy5LZTXtPHyPdOVigGFKASJXq g==;
X-CSE-ConnectionGUID: gTVJTkrGTnCoQjOd4fWAww==
X-CSE-MsgGUID: p7RPMfkYQSGawKcHwdCZsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577218"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577218"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:35 -0700
X-CSE-ConnectionGUID: JakRd4xwQw6GlDtUJdCeyQ==
X-CSE-MsgGUID: JZNuvUksQbyb+NQomRAxGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302741"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:31 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:13 -0300
Subject: [PATCH 13/32] drm/i915/xe3p_lpd: Remove gamma,csc bottom color checks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-13-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

With Xe3p_LPD, the SKL_BOTTOM_COLOR_GAMMA_ENABLE and
SKL_BOTTOM_COLOR_CSC_ENABLE bits are being removed. Thus, we need not
set gamma_enable nor csc_enable in crtc_state.

Note that GAMMA_MODE.POST_CSC_GAMMA_ENABLE and CSC_MODE.ICL_CSC_ENABLE
are the documented alternatives for the bottom color bits being removed.
But as these suggested bits are being checked in state checker as part
of gamma_mode, csc_mode fields and as gamma_enable/csc_enable are not
being used anywhere else functionally post ICL, we need not set these
fields in crtc_state.

Bspec: 69734
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 51db70d07fae..9102f3eb0bc4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1090,18 +1090,19 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	u32 tmp;
 
 	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
 	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
 
-	tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
+	if (DISPLAY_VER(display) < 35) {
+		u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
 
-	if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
-		crtc_state->gamma_enable = true;
+		if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
+			crtc_state->gamma_enable = true;
 
-	if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
-		crtc_state->csc_enable = true;
+		if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
+			crtc_state->csc_enable = true;
+	}
 }
 
 static void skl_color_commit_arm(struct intel_dsb *dsb,

-- 
2.51.0

