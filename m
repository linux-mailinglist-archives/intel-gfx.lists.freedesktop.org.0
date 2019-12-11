Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C232F11B8AB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166E46EB88;
	Wed, 11 Dec 2019 16:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0DA56EB88
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:24:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:24:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="387990621"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:24:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 18:23:47 +0200
Message-Id: <f00e9d55ce20b256177222588780c660aa587cc3.1576081155.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576081155.git.jani.nikula@intel.com>
References: <cover.1576081155.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: clarify DSC support for pipe
 A on ICL
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The check for cpu_transcoder != TRANSCODER_A is more magic than
necessary, and potentially misleading. Before TGL, DSC is supported on
pipe A if, and only if, it's used with eDP or DSI transcoders. No
functional changes.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index e6f60be9ee84..41718f721484 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -337,7 +337,10 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
 bool intel_dsc_source_support(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	enum pipe pipe = crtc->pipe;
 
 	if (!INTEL_INFO(i915)->display.has_dsc)
 		return false;
@@ -347,7 +350,10 @@ bool intel_dsc_source_support(struct intel_encoder *encoder,
 		return true;
 
 	if (INTEL_GEN(i915) >= 10 &&
-	    crtc_state->cpu_transcoder != TRANSCODER_A)
+	    (pipe != PIPE_A ||
+	     (cpu_transcoder == TRANSCODER_EDP ||
+	      cpu_transcoder == TRANSCODER_DSI_0 ||
+	      cpu_transcoder == TRANSCODER_DSI_1)))
 		return true;
 
 	return false;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
