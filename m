Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C7E6C0DBD
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6613089F31;
	Mon, 20 Mar 2023 09:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57ED89F31
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306090; x=1710842090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dEPc3r8TPgIngjGAeItMCruewUlwwCJd2cGV0sbKu8c=;
 b=beElujFp6L0V+AzOGpWOnN67FzgTxe+zOndiAdTwf+RgpXlOuu0/1JkG
 hY5P/1O8skP9egpOBnUQB37gXVZTrxvIcX1bL3uViVDB6rdHKAbkvIvwo
 w16YfSr7E1lYiXkHu323OBavHje8ZBzz3cwl/Je9io15OAYwhaJJmx4qh
 teRSbj5jAyxmqNigUJnR6pllKpHLZfcJwqcdCk6/g2nNdfuy3X80d4rj3
 mnL1M1gPdEWup+Xb7Z8jKjjNXrKs7eRNhd5YQRdhpQvVtctH9JdRCjCF6
 6I5izDSI2i64HbHYvOQ5wP3jTmxNHgwreHA1ibONfA4lXP47nbvEyspsr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366336444"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366336444"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="631067059"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631067059"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 20 Mar 2023 02:54:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:34 +0200
Message-Id: <20230320095438.17328-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Move CSC load back into
 .color_commit_arm() when PSR is enabled on skl/glk
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

SKL/GLK CSC unit suffers from a nasty issue where a CSC
coeff/offset register read or write between DC5 exit and
PSR exit will undo the CSC arming performed by DMC, and
then during PSR exit the hardware will latch zeroes into
the active CSC registers. This causes any plane going
through the CSC to output all black.

We can sidestep the issue by making sure the PSR exit has
already actually happened before we touch the CSC coeff/offset
registers. Easiest way to guarantee that is to just move the
CSC programming back into the .color_commir_arm() as we force
a PSR exit (and crucially wait for it to actually happen)
prior to touching the arming registers.

When PSR (and thus also DC states) are disabled we don't
have anything to worry about, so we can keep using the
more optional _noarm() hook for writing the CSC registers.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8283
Fixes: d13dde449580 ("drm/i915: Split pipe+output CSC programming to noarm+arm pair")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 23 ++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7c8f40cd989e..37fb5a7bc8d8 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -617,6 +617,22 @@ static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 	icl_load_csc_matrix(crtc_state);
 }
 
+static void skl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * Possibly related to display WA #1184, SKL CSC loses the latched
+	 * CSC coeff/offset register values if the CSC registers are disarmed
+	 * between DC5 exit and PSR exit. This will cause the plane(s) to
+	 * output all black (until CSC_MODE is rearmed and properly latched).
+	 * Once PSR exit (and proper register latching) has occurred the
+	 * danger is over. Thus when PSR is enabled the CSC coeff/offset
+	 * register programming will be peformed from skl_color_commit_arm()
+	 * which is called after PSR exit.
+	 */
+	if (!crtc_state->has_psr)
+		ilk_load_csc_matrix(crtc_state);
+}
+
 static void ilk_color_commit_noarm(const struct intel_crtc_state *crtc_state)
 {
 	ilk_load_csc_matrix(crtc_state);
@@ -659,6 +675,9 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
+	if (crtc_state->has_psr)
+		ilk_load_csc_matrix(crtc_state);
+
 	/*
 	 * We don't (yet) allow userspace to control the pipe background color,
 	 * so force it to black, but apply pipe gamma and CSC appropriately
@@ -3103,7 +3122,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 
 static const struct intel_color_funcs glk_color_funcs = {
 	.color_check = glk_color_check,
-	.color_commit_noarm = ilk_color_commit_noarm,
+	.color_commit_noarm = skl_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
@@ -3112,7 +3131,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 
 static const struct intel_color_funcs skl_color_funcs = {
 	.color_check = ivb_color_check,
-	.color_commit_noarm = ilk_color_commit_noarm,
+	.color_commit_noarm = skl_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = bdw_read_luts,
-- 
2.39.2

