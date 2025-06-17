Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A8BADD9B4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6BB10E79A;
	Tue, 17 Jun 2025 17:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNYf3Dvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED53B10E7A2;
 Tue, 17 Jun 2025 17:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180116; x=1781716116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tZIdmRm2rQ+Jjxts9JwhcLHv2AE1idvEZjUZwLigIJ8=;
 b=gNYf3DvkMtaCOb8kbQaBOrNwBdIQqPamsR7qzex3LSQThzvDHpKkw3VW
 wcge/gLyUy8ZolViYWsOec5oBUeE+Xiiy9botiAJ2Irrkzras5Kvs9sxj
 1GSHbpyT3siruzvKcBbP7bh7Qt1j4wYS5s97HyPl9Yvmv5PnkJXCirYTY
 g1bvGc7+UcnrtnMNr7l6Q9ggWN9rRXMcioYflZ4UObxXTOtVO6a56/6tV
 8cTnJsGSKbEWme7WVTzftC2Fvhs4jUVrqtOtu459rItr1BQRad0PInDok
 GRrQ94lpiPEp9xu+1Jel+fkUh1AXvAzHWqOmNn7VkViy+ZL0pWNPRiB4y w==;
X-CSE-ConnectionGUID: hIaNPguhTLyTIZWXNy7sbQ==
X-CSE-MsgGUID: 27nEELgXS+6pnEEqMFdf0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644647"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644647"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:35 -0700
X-CSE-ConnectionGUID: Z/rWd7S7T+Cb0paL2Oz5iw==
X-CSE-MsgGUID: /SZVaxXzQmaETEeVTXBqRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138902"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 9/9] drm/i915/dmc: Do not enable the pipe DMC on TGL when
 PSR is possible
Date: Tue, 17 Jun 2025 20:07:59 +0300
Message-ID: <20250617170759.19552-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f41dcb2a316a..f2e1f103af62 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -698,6 +698,21 @@ static bool need_pipedmc_load_mmio(struct intel_display *display, enum pipe pipe
 	return false;
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
@@ -708,6 +723,11 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
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

