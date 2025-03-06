Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78729A55118
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122AF10E9FC;
	Thu,  6 Mar 2025 16:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNjRhmDk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEEDC10E9FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278870; x=1772814870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/ULyhlhtuyceL744dCUd3QactzKgJwGIxpVGEudNGto=;
 b=XNjRhmDkCTc6W7cUv0QLFPQUBlXZhoJmWMGu8Y8iRAFbRoar/RNnufXk
 dqU61ejiae4LLeSnNP+j71MMCyAB3OV5w5+DDOhLp86A5ZLtmv2wtsRwR
 2PrUev6ZOVK9rdmbaelVBTlgBF9OmZthiGxDSfW7Z4KzCpifWRaQaiWBK
 P6Erp81QjN02g9JDMOTJ+JMmphJAiVry2+4B8sKevQPFE0eriJvrErwBf
 a120+6jzkC5T46IocNDo0naucZThC+Xp2WnA0zY9P2gtsBPfLz+Yh8vh9
 3D46V2ejVjhrgx6/p5nvo72eSFW85671Gk5DTIsONd1H/OG9iewquA9m6 A==;
X-CSE-ConnectionGUID: 8Ju1zJmzSZqpUFWsumM69A==
X-CSE-MsgGUID: GHDbAxZKQ5u7ZyuvDlUvkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704280"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704280"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:30 -0800
X-CSE-ConnectionGUID: XC8vz4A8QueHmfK+b1g9Yg==
X-CSE-MsgGUID: vuDr1aMrQvWPCAI7tv7Pdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288811"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 02/18] drm/i915: Don't clobber crtc_state->cpu_transcoder
 for inactive crtcs
Date: Thu,  6 Mar 2025 18:34:04 +0200
Message-ID: <20250306163420.3961-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Inactive crtcs are supposed to have their crtc_state completely
cleared. Currently we are clobbering crtc_state->cpu_transcoder
before determining whether it's actually enabled or not. Don't
do that.

I want to rework the inherited flag handling for inactive crtcs
a bit, and having a bogus cpu_transcoder in the crtc state can
then cause confusing fastset mismatches even when the crtc never
changes state during the commit.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++-----------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c1c2cb83d51..8d94ab7de669 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2985,26 +2985,25 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	enum intel_display_power_domain power_domain;
+	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
 	intel_wakeref_t wakeref;
+	bool ret = false;
 	u32 tmp;
-	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
-	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->sink_format = pipe_config->output_format;
-	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-
-	ret = false;
-
-	tmp = intel_de_read(display,
-			    TRANSCONF(display, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(display, TRANSCONF(display, cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
+	pipe_config->cpu_transcoder = cpu_transcoder;
+
+	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
+	pipe_config->sink_format = pipe_config->output_format;
+
 	if (display->platform.g4x || display->platform.valleyview ||
 	    display->platform.cherryview) {
 		switch (tmp & TRANSCONF_BPC_MASK) {
@@ -3328,23 +3327,22 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	enum intel_display_power_domain power_domain;
+	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
 	intel_wakeref_t wakeref;
+	bool ret = false;
 	u32 tmp;
-	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
-	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
-
-	ret = false;
-	tmp = intel_de_read(display,
-			    TRANSCONF(display, pipe_config->cpu_transcoder));
+	tmp = intel_de_read(display, TRANSCONF(display, cpu_transcoder));
 	if (!(tmp & TRANSCONF_ENABLE))
 		goto out;
 
+	pipe_config->cpu_transcoder = cpu_transcoder;
+
 	switch (tmp & TRANSCONF_BPC_MASK) {
 	case TRANSCONF_BPC_6:
 		pipe_config->pipe_bpp = 18;
-- 
2.45.3

