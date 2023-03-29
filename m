Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60926CDB33
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4640A10EAEC;
	Wed, 29 Mar 2023 13:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C76A10EAED
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097834; x=1711633834;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oLtp7wdCw5tByCl8YUETiU1Mj1aZC5evCelisXHv2MI=;
 b=DvcTSL5cXefD14Zhldx0fwg1+ZRuQ2gGzdboPCcLJMGfS8R2NPtfXhB8
 0zae2L1NG9/ARffaswuX02cOObX/4YsJbzTYfhyHFPD1UguN0BA78nsK2
 TZknNj5NyQuwdz6B3zzpUqcZ9B3X6v6j1PUeHP2WnFPeQAvZ5pUJTCEO9
 CmFVJkXOdRM2Mif6SS1p9uXatiOSRLFnXxTO87DOKA0lP8aKYIQpMXVIU
 XJE8N+yr2rwqCJW95E+qfa9GQBQpUmrmAQy9S3fhQmx2NEKNM5sTMUUyg
 GSTvbD1I9JASxzpYIeeQiE4C23uEOvF94gv1kpdSObCoYbVpvfEwxfsZ0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379084"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379084"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029501"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029501"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:50:00 +0300
Message-Id: <20230329135002.3096-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/12] drm/i915: Include the csc matrices in the
 crtc state dump
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

Include the csc matrices in the state dump. The format being
hardware specific we just dump as hex for now. Might have
to think of some way to get a bit more human readable
output...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 766633566fd6..2c410ad53ccd 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -158,6 +158,41 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
 			    DRM_RECT_ARG(&plane_state->uapi.dst));
 }
 
+static void
+ilk_dump_csc(struct drm_i915_private *i915, const char *name,
+	     const struct intel_csc_matrix *csc)
+{
+	int i;
+
+	drm_dbg_kms(&i915->drm,
+		    "%s: pre offsets: 0x%04x 0x%04x 0x%04x\n", name,
+		    csc->preoff[0], csc->preoff[1], csc->preoff[2]);
+
+	for (i = 0; i < 3; i++)
+		drm_dbg_kms(&i915->drm,
+			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
+
+	if (DISPLAY_VER(i915) < 7)
+		return;
+
+	drm_dbg_kms(&i915->drm,
+		    "%s: post offsets: 0x%04x 0x%04x 0x%04x\n", name,
+		    csc->postoff[0], csc->postoff[1], csc->postoff[2]);
+}
+
+static void
+chv_dump_csc(struct drm_i915_private *i915, const char *name,
+	     const struct intel_csc_matrix *csc)
+{
+	int i;
+
+	for (i = 0; i < 3; i++)
+		drm_dbg_kms(&i915->drm,
+			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
+}
+
 void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   struct intel_atomic_state *state,
 			   const char *context)
@@ -325,6 +360,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		    pipe_config->post_csc_lut ?
 		    drm_color_lut_size(pipe_config->post_csc_lut) : 0);
 
+	if (DISPLAY_VER(i915) >= 11)
+		ilk_dump_csc(i915, "output csc", &pipe_config->output_csc);
+
+	if (!HAS_GMCH(i915))
+		ilk_dump_csc(i915, "pipe csc", &pipe_config->csc);
+	else if (IS_CHERRYVIEW(i915))
+		chv_dump_csc(i915, "cgm csc", &pipe_config->csc);
+
 dump_planes:
 	if (!state)
 		return;
-- 
2.39.2

