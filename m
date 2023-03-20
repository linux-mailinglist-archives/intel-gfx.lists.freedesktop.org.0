Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD96C0DBC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77C589B57;
	Mon, 20 Mar 2023 09:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062FB89B57
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306086; x=1710842086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9DIvKUSzgFa25xhtMO9G8sUN3o9NGA3hunjA1d7JIuA=;
 b=LtjQAhc8QDc+SGQsRdb4tqy3cF/4CW5iSEEPHeqP2I5Dg3fMOT6oJAzP
 xr6uIJclyCLObob1Hm+f66grK4LTwbR7apeU+ou5PazMZLcnP0O3GR6sW
 MODMEWoKm8Aze+4AlKBmP6jpZIaApjka5trTqVK4FB+50Nwhig1mFAJAS
 NKffjzJLRwdEy9FItvVSizXoZ1H2BDMmYrCor6mwJ15xOyZtgn53DxHbM
 +izc2xop18LUVvSw6MF34HRV+L1Yyhoqnf1Bac9frxT/OFLlVvOQ9GWdN
 pAYUG0s5kCXBRh04W1Z0WLifcy6g0UgfROX1Qu3vwknZuH1M/wvQo4Azm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366336434"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366336434"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="631067054"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631067054"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 20 Mar 2023 02:54:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:33 +0200
Message-Id: <20230320095438.17328-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Split icl_color_commit_noarm()
 from skl_color_commit_noarm()
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're going to want different behavior for skl/glk vs. icl
in .color_commit_noarm(), so split the hook into two. Arguably
we already had slightly different behaviour since
csc_enable/gamma_enable are never set on icl+, so the old
code was perhaps a bit confusing as well.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a6dd08598233..7c8f40cd989e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -677,6 +677,26 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 			  crtc_state->csc_mode);
 }
 
+static void icl_color_commit_arm(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	/*
+	 * We don't (yet) allow userspace to control the pipe background color,
+	 * so force it to black, but apply pipe gamma and CSC appropriately
+	 * so that its handling will match how we program our planes.
+	 */
+	intel_de_write(i915, SKL_BOTTOM_COLOR(pipe), 0);
+
+	intel_de_write(i915, GAMMA_MODE(crtc->pipe),
+		       crtc_state->gamma_mode);
+
+	intel_de_write_fw(i915, PIPE_CSC_MODE(crtc->pipe),
+			  crtc_state->csc_mode);
+}
+
 static struct drm_property_blob *
 create_linear_lut(struct drm_i915_private *i915, int lut_size)
 {
@@ -3075,7 +3095,7 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 static const struct intel_color_funcs icl_color_funcs = {
 	.color_check = icl_color_check,
 	.color_commit_noarm = icl_color_commit_noarm,
-	.color_commit_arm = skl_color_commit_arm,
+	.color_commit_arm = icl_color_commit_arm,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
 	.lut_equal = icl_lut_equal,
-- 
2.39.2

