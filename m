Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 706077E8ABE
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Nov 2023 12:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EFF10E280;
	Sat, 11 Nov 2023 11:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1F310E280
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Nov 2023 11:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699703016; x=1731239016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S6ZA4n3sAE83tE1ddLoDcgnhhvpC8aQAOHMiVyHPKMU=;
 b=APn4wuEJmTidGhLwNf9FzpIeW4vPylOxUTLXkjEPxgc7TeG0Tmawh8Hn
 pk/TbzfKgbAm9yZARyIB/vIaLGot8D0YVsvntFfMpOWu+uLdDiPEuThIx
 sjaim04nupzddmuN/Egf5fEDEbaPGt9ITS0FYZ0ukgerlulU/f9V5nEiJ
 KBUPjRwxrCnzZWrrA9SahdD3WEnNfYFpnlWG3lVjlhda0ZUaI732uPOi6
 wRWW12m+HeReeCxwWTwiosef+7SDv7DtYkY8wGpqTRnIRU6JhZFFA+G8g
 8LENSnXnsz6SkL/zm6kQl7zPY0weauEm3KmGvo+L9iZjX6cf+QR8xjyHb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="389134684"
X-IronPort-AV: E=Sophos;i="6.03,294,1694761200"; d="scan'208";a="389134684"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2023 03:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="1011145117"
X-IronPort-AV: E=Sophos;i="6.03,294,1694761200"; d="scan'208";a="1011145117"
Received: from rafaelro-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.54.52])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2023 03:43:34 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Nov 2023 13:43:20 +0200
Message-Id: <20231111114320.87277-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111114320.87277-1-vinod.govindapillai@intel.com>
References: <20231111114320.87277-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/xe2lpd: implement WA for
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

FIFO underruns are observed when FBC is enabled on plane 2 or
plane 3. Recommended WA is to update the FBC enabling sequence.
The plane binding register bits need to be updated separately
before programming the FBC enable bit.

Bspec: 74151
Reviewed-by: Mika Kahola <mika.kahola@intel.com> #v3
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bde12fe62275..b73cf1c5ba33 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -608,6 +608,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 static void ivb_fbc_activate(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
+	u32 dpfc_ctl;
 
 	if (DISPLAY_VER(i915) >= 10)
 		glk_fbc_program_cfb_stride(fbc);
@@ -617,8 +618,13 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
 	if (intel_gt_support_legacy_fencing(to_gt(i915)))
 		snb_fbc_program_fence(fbc);
 
+	/* wa_14019417088 Alternative WA*/
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

