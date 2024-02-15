Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF42C8569B9
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A66310E9D2;
	Thu, 15 Feb 2024 16:41:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IRpCRuIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 924C610E9D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015271; x=1739551271;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TDb78EO6MmrHuHNDniIyMk+iAaptj50JrP9hcJ7J+Io=;
 b=IRpCRuIrOtabf/Egv+CtqklFtI5rBROrnoSL9fDkQy8R+SjLZR231OR/
 JOOdNxB3tVMr0WtoH6aiNBun6rL1bhiWzt1KIJntGjM1Tl6bRrm8DXovA
 /nHsV///jy8FSteXWdprZG0JRG7nMYH0uX1K3GJ5opn9PrfXOy63aIyWx
 jctV92zueumj+c4lB+7vPR9XIBq32EhVaDLzsFvMclGrFd+LxcIu0Bir6
 2qVDj7ltamKJak+tP4CgV+XOTRt/YXJoz8v9MvqNFC8Idqr0TNhxB4q7R
 ZnLjYa5WytjaO0oa8UeXWIs+EpzAQYJz2uvy9s75+Ft4v4YnkFDSy6btV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19629937"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19629937"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434819"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915: Include CRTC info in VSC SDP mismatch prints
Date: Thu, 15 Feb 2024 18:40:46 +0200
Message-ID: <20240215164055.30585-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Most crtc state mismatches include the CRTC id+name in the
prints. Also include it in the VSC SDP mismatches.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e3520a3da468..2aabfa154d8a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4817,21 +4817,24 @@ pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
 }
 
 static void
-pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *i915,
-				bool fastset, const char *name,
+pipe_config_dp_vsc_sdp_mismatch(bool fastset, const struct intel_crtc *crtc,
+				const char *name,
 				const struct drm_dp_vsc_sdp *a,
 				const struct drm_dp_vsc_sdp *b)
 {
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_printer p;
 
 	if (fastset) {
 		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
 
-		drm_printf(&p, "fastset requirement not met in %s dp sdp\n", name);
+		drm_printf(&p, "[CRTC:%d:%s] fastset requirement not met in %s dp sdp\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	} else {
 		p = drm_err_printer(&i915->drm, NULL);
 
-		drm_printf(&p, "mismatch in %s dp sdp\n", name);
+		drm_printf(&p, "[CRTC:%d:%s] mismatch in %s dp sdp\n",
+			   crtc->base.base.id, crtc->base.name, name);
 	}
 
 	drm_printf(&p, "expected:\n");
@@ -5086,7 +5089,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
 	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
 				      &pipe_config->infoframes.name)) { \
-		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+		pipe_config_dp_vsc_sdp_mismatch(fastset, crtc, __stringify(name), \
 						&current_config->infoframes.name, \
 						&pipe_config->infoframes.name); \
 		ret = false; \
-- 
2.43.0

