Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6962842F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A55110E2F2;
	Mon, 14 Nov 2022 15:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617E810E2EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440300; x=1699976300;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fyQZT6oiBjaOE5NBuFpF2JCDj8ZMgqSSWqgziDfpTpE=;
 b=gBXyiFHqf3t8AbAmpj7ImnWH1IW3NTnAie7LnaTvMSJklokzTW+K31vl
 7F9O99BrHOwndJBHZHpqGnJ63MOw/ciDptfn40smL997KkpqGX3ZP3i/M
 gD5BVMwLSI4LbJc8gjM5mEgOh1kvGSPYMA6Cu2S+YsdzUIUB/lYsrFyLF
 yl+fJ9/64W3zBqufo7+GV8jiUQ6Hdxda+jSGF8xspL8ZGWVZD7syXs9JL
 sD8K6tAMX1hPLPTGl+tN6j33pmea8CNLjc/Vrdt8E90Gse0CZd0dkp83E
 gd7ip1y+mj/rIQwe7FlolPsnW1haN5cylnzkHnTooJoB6SDRTKBYabWDr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398290864"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398290864"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:38:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968676"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:38:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:38:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:25 +0200
Message-Id: <20221114153732.11773-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/20] drm/i915: Prep for C8 palette readout
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

Add the approproate c8_planes checks to make the LUT
code ready for C8 palette readout. Note we currently
lack the actual c8_planes readout, so this won't work
yet. But no harm in making the code somewhat more ready
for the day when we do get c8_planes readout.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ef171837ef45..ca01b3e6b585 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1801,7 +1801,7 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
 
 static int i9xx_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return 0;
 
 	switch (crtc_state->gamma_mode) {
@@ -1817,6 +1817,9 @@ static int i9xx_post_csc_lut_precision(const struct intel_crtc_state *crtc_state
 
 static bool ilk_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
 {
+	if (crtc_state->c8_planes)
+		return true;
+
 	return crtc_state->gamma_enable &&
 		(crtc_state->csc_mode & CSC_POSITION_BEFORE_GAMMA) != 0;
 }
@@ -1847,7 +1850,7 @@ static int chv_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 
 static int glk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return 0;
 
 	switch (crtc_state->gamma_mode) {
@@ -1863,6 +1866,9 @@ static int glk_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
 
 static bool icl_has_post_csc_lut(const struct intel_crtc_state *crtc_state)
 {
+	if (crtc_state->c8_planes)
+		return true;
+
 	return crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE;
 }
 
@@ -2009,7 +2015,7 @@ static void i9xx_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	crtc_state->post_csc_lut = i9xx_read_lut_8(crtc);
@@ -2049,7 +2055,7 @@ static void i965_read_luts(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
@@ -2180,7 +2186,7 @@ static void ilk_read_luts(struct intel_crtc_state *crtc_state)
 		ilk_has_post_csc_lut(crtc_state) ?
 		&crtc_state->post_csc_lut : &crtc_state->pre_csc_lut;
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	switch (crtc_state->gamma_mode) {
@@ -2240,7 +2246,7 @@ static void ivb_read_luts(struct intel_crtc_state *crtc_state)
 		ilk_has_post_csc_lut(crtc_state) ?
 		&crtc_state->post_csc_lut : &crtc_state->pre_csc_lut;
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	switch (crtc_state->gamma_mode) {
@@ -2303,7 +2309,7 @@ static void bdw_read_luts(struct intel_crtc_state *crtc_state)
 		ilk_has_post_csc_lut(crtc_state) ?
 		&crtc_state->post_csc_lut : &crtc_state->pre_csc_lut;
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	switch (crtc_state->gamma_mode) {
@@ -2372,7 +2378,7 @@ static void glk_read_luts(struct intel_crtc_state *crtc_state)
 	if (crtc_state->csc_enable)
 		crtc_state->pre_csc_lut = glk_read_degamma_lut(crtc);
 
-	if (!crtc_state->gamma_enable)
+	if (!crtc_state->gamma_enable && !crtc_state->c8_planes)
 		return;
 
 	switch (crtc_state->gamma_mode) {
-- 
2.37.4

