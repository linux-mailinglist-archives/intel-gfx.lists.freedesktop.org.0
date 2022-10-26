Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740AA60DFCB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E9710E4C2;
	Wed, 26 Oct 2022 11:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C83610E4C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 11:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666784376; x=1698320376;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EMnlPrfru4CgacmQSL/SbJAwoZFt++M1zuHu8qsjqPw=;
 b=FhbJelUBWHx915iDQi/4kQfOIkFz1T/V9n2rWZtv+NLD5+t4cCUVWpO6
 WYX7D1tYrTC1kHwpZWUCg5Y2nAz1aRlKJBvaU+o/KwuLBXw8O0hN87xKQ
 f4mp650RWk72ZBpQbC99l68RjQM7GaFVs8KNzLSigYBQ4Ea0tzAnwiaXk
 IqxIVpIVdJl8E4yJv1c4vxrt6/vHvzdqPCZ4Ry7MAIlfemcUy2kLqxbyc
 UQkcQ+FofCyxvxH0pVxwr6qHJBBrkUaFcSha5QI9GmFNLECroL8z72kNH
 zgnjQqwIgXb3FUH5s+h6rXp8YJAeTH0ZqRVECLZHaNqURIqPd5XGAMGky w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="309614284"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="309614284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 04:39:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="663164600"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="663164600"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 26 Oct 2022 04:39:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 14:39:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 14:39:04 +0300
Message-Id: <20221026113906.10551-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915: Reject YCbCr output with
 degamma+gamma on pre-icl
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

Since the pipe CSC sits between the degamma and gamma LUTs there
is no way to make us it for RGB->YCbCr conversion when both LUTs
are also active. Simply reject such combos.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 435394cad359..926784f266f2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1556,7 +1556,14 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
-			    "YCBCR and CTM together are not possible\n");
+			    "YCbCr and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
+	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
+		drm_dbg_kms(&i915->drm,
+			    "YCbCr and degamma+gamma together are not possible\n");
 		return -EINVAL;
 	}
 
@@ -1622,7 +1629,14 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
 	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
 	    crtc_state->hw.ctm) {
 		drm_dbg_kms(&i915->drm,
-			    "YCBCR and CTM together are not possible\n");
+			    "YCbCr and CTM together are not possible\n");
+		return -EINVAL;
+	}
+
+	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
+	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
+		drm_dbg_kms(&i915->drm,
+			    "YCbCr and degamma+gamma together are not possible\n");
 		return -EINVAL;
 	}
 
-- 
2.37.4

