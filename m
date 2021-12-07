Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8E46B372
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 08:11:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484F68B848;
	Tue,  7 Dec 2021 07:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EF98B848
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 07:11:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261579644"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261579644"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 23:11:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="679331747"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2021 23:11:37 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 12:41:33 +0530
Message-Id: <20211207071135.3660332-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207071135.3660332-1-uma.shankar@intel.com>
References: <20211207071135.3660332-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3 1/3] drm/i915/xelpd: Enable Pipe color support for
 D13 platform
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

Enable pipe color support for Display 13 platforms. Currently
limit to just 10bit gamma and later extend it for logarithmic
gamma, once the new UAPI is agreed by community and implemented
by a userspace consumer.

v2: Updated dev_priv to i915 (Ville)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 840f13b75492..42fe549ef6fe 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1574,6 +1574,8 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 
 static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 gamma_mode = 0;
 
 	if (crtc_state->hw.degamma_lut)
@@ -1586,6 +1588,13 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.gamma_lut ||
 	    crtc_state_is_legacy_gamma(crtc_state))
 		gamma_mode |= GAMMA_MODE_MODE_8BIT;
+	/*
+	 * Enable 10bit gamma for D13
+	 * ToDo: Extend to Logarithmic Gamma once the new UAPI
+	 * is acccepted and implemented by a userspace consumer
+	 */
+	else if (DISPLAY_VER(i915) >= 13)
+		gamma_mode |= GAMMA_MODE_MODE_10BIT;
 	else
 		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
 
-- 
2.25.1

