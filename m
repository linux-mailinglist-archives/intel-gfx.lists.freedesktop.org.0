Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 277D460DFCA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDA010E4C6;
	Wed, 26 Oct 2022 11:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4909810E4C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784379; x=1698320379;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+LW8DQVU4T5SueNQHFSw0Q3DrD1Hq8zWieAfo1pbFNU=;
 b=C9DANPMfR8IdrdHwSopFZqu1TAUGnmgx72jE80No2YSdyLhFZUQXjURm
 NgD+4mJp4QI0OyIfUGb3T33023a4i8Xb+rNDlQ4kBtzh82D0nYusUnCYg
 1QvOINylnUxDHzbW8//W2kPOfilVz8L7v2pl4HaHNzAtxBHpy3/r9k9Vg
 sf+SG6goMQlg1F8LDXCsLmptTzc7HkfQZ7XWPUVKCs9B5RFN5sSiZKwTE
 P6Fbsui2u3LrAxfalbl5+miFNkOqAeqpcqUczAsJrZIjfkApnIEAb180r
 YieRK7robEW9jA+YEJ4VL6wG9I9Qv2blePSeAmikvEZJAc9yVK14nGIAC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614293"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614293"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164624"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:05 +0300
Message-Id: <20221026113906.10551-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Share {csc,
 gamma}_enable calculation for ilk/snb vs. ivb+
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

ilk/snb vs. ivb+ hardware is mostly identical except for the addition
of the split gamma mode on ivb. Thus we can share the csc_enable
and gamma_enable calculation for both variants. Pull that stuff
into a few helpers.

Note that this also fills in the missing ctm/degamma stuff into
ilk_color_check() pretty much, so for good measure let's also
add a few extra checks relating to that, although we still don't
expose ctm/degamma to userspace. But now it'll be trivial to do
so if we wish.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 49 ++++++++++++++--------
 1 file changed, 32 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 926784f266f2..33871bfacee7 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1442,6 +1442,20 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static bool ilk_gamma_enable(const struct intel_crtc_state *crtc_state)
+{
+	return (crtc_state->hw.gamma_lut ||
+		crtc_state->hw.degamma_lut) &&
+		!crtc_state->c8_planes;
+}
+
+static bool ilk_csc_enable(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
+		ilk_csc_limited_range(crtc_state) ||
+		crtc_state->hw.ctm;
+}
+
 static u32 ilk_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
 	if (!crtc_state->gamma_enable ||
@@ -1487,22 +1501,29 @@ static void ilk_assign_luts(struct intel_crtc_state *crtc_state)
 
 static int ilk_color_check(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int ret;
 
 	ret = check_luts(crtc_state);
 	if (ret)
 		return ret;
 
-	crtc_state->gamma_enable =
-		crtc_state->hw.gamma_lut &&
-		!crtc_state->c8_planes;
+	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
+		drm_dbg_kms(&i915->drm,
+			    "Degamma and gamma together are not possible\n");
+		return -EINVAL;
+	}
 
-	/*
-	 * We don't expose the ctm on ilk/snb currently, also RGB
-	 * limited range output is handled by the hw automagically.
-	 */
-	crtc_state->csc_enable =
-		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB;
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
+	    crtc_state->hw.ctm) {
+		drm_dbg_kms(&i915->drm,
+			    "YCbCr and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
+	crtc_state->gamma_enable = ilk_gamma_enable(crtc_state);
+
+	crtc_state->csc_enable = ilk_csc_enable(crtc_state);
 
 	crtc_state->gamma_mode = ilk_gamma_mode(crtc_state);
 
@@ -1546,7 +1567,6 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
 static int ivb_color_check(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	bool limited_color_range = ilk_csc_limited_range(crtc_state);
 	int ret;
 
 	ret = check_luts(crtc_state);
@@ -1567,14 +1587,9 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 		return -EINVAL;
 	}
 
-	crtc_state->gamma_enable =
-		(crtc_state->hw.gamma_lut ||
-		 crtc_state->hw.degamma_lut) &&
-		!crtc_state->c8_planes;
+	crtc_state->gamma_enable = ilk_gamma_enable(crtc_state);
 
-	crtc_state->csc_enable =
-		crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB ||
-		crtc_state->hw.ctm || limited_color_range;
+	crtc_state->csc_enable = ilk_csc_enable(crtc_state);
 
 	crtc_state->gamma_mode = ivb_gamma_mode(crtc_state);
 
-- 
2.37.4

