Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA040AD5B27
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:53:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6357810E6CC;
	Wed, 11 Jun 2025 15:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gj6M9r88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D530310E6C7;
 Wed, 11 Jun 2025 15:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657196; x=1781193196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z/95k5pyz8L8YhB2uhOr2hV1qL7rYY7ypN/v3cqCTxU=;
 b=gj6M9r88srO6D3mYhHT7N3xcK5OH2oUE4vMaCzQwKO5KIZBJWvOCrnVv
 7/Nw6eFiumSzJILcSiQMBLWT4+RhEHOHyUJSU0A8q8oOY92eK/5qOAsWS
 8J+iBsbl1c4qP05c80qW2yFVzVwxP3JrfqERTKBkXKEE8KkipOgSfQusx
 LMAa4XhNKcGImBcaWOwSDTV19j/1Wd6c/gPzHMT75wowQVRUGylJedifs
 T3Ykb9pswZMS+zSd6eOiipuKibmFxcKVO2SdeBj4DByhXR7618zr5e2tj
 Ge9fXYDKmMi3WTuw0prEoqPN7JAC5D1oBkCy8VmyeZsu0r/YRxUD3oxW1 g==;
X-CSE-ConnectionGUID: Riu24mvRTcaivg5FjZ6y3Q==
X-CSE-MsgGUID: vi6KQz8jQAWcKej0bzc4SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419152"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419152"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:53:15 -0700
X-CSE-ConnectionGUID: SA9yQXdTR+WJwjZIIV71OA==
X-CSE-MsgGUID: gx7z2WULS3qtEY1ERYwHFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507436"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:53:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:53:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/dmc: Do not enable the pipe DMC on TGL when PSR
 is possible
Date: Wed, 11 Jun 2025 18:52:41 +0300
Message-ID: <20250611155241.24191-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

On TGL/derivatives the pipe DMC state is lost when PG1 is disabled,
and the main DMC does not restore any of it. This means the state will
also be lost during PSR+DC5/6. It seems safest to not even enable the
pipe DMC in that case (the main DMC does restore the pipe DMC enable
bit in PIPEDMC_CONTROL_A for some reason).

Since pipe DMC is only needed for "fast LACE" on these platforms we aren't
actually losing anything here. In the future if we do want to enable
"fast LACE" we'll just have to remember that it won't be compatible with
PSR.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 0562ee1d0905..f918d08acd0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -663,6 +663,21 @@ static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe
 	return DISPLAY_VER(display) >= 30 && pipe >= PIPE_C;
 }
 
+static bool can_enable_pipedmc(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * On TGL/derivatives pipe DMC state is lost when PG1 is disabled.
+	 * Do not even enable the pipe DMC when that can happen outside
+	 * of driver control (PSR+DC5/6).
+	 */
+	if (DISPLAY_VER(display) == 12 && crtc_state->has_psr)
+		return false;
+
+	return true;
+}
+
 void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -673,6 +688,11 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
 		return;
 
+	if (!can_enable_pipedmc(crtc_state)) {
+		intel_dmc_disable_pipe(crtc_state);
+		return;
+	}
+
 	if (need_pipedmc_load_program(display))
 		dmc_load_program(display, dmc_id);
 	else if (need_pipedmc_load_mmio(display, pipe))
-- 
2.49.0

