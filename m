Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0429EBB8B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D724F10E3F4;
	Tue, 10 Dec 2024 21:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JJ4R1ctT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C793B10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865013; x=1765401013;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AqyOaYJAQ71MzyoPrWcOfUlOSxk0wfRAzLREmfR++uo=;
 b=JJ4R1ctTTpqjTFUe4SRStDcKKizzm4rSbyvpCS2TCBIedYZ7n1spvli8
 pViOaGy2wgeEb5dOGwiaaYleE1LWU1zg2zxaGAOoJ/UFvnOjgnsG6cnX2
 bUF7++cqAMEBfwCxblwbuXg5r3+zOk/hDYtjPm6hZCfMsQQ6ok7ZXQ2z0
 JrrVxA2oEaN7ULnXOIo77/zcJh2itHd+PlTu+5LOXuJ1FzSln/co5HKQ+
 B3BMgkXg3EK6u+HHisSWceEtxELUX1YCx9cAOOQo8bMLFHNiHWR9PPnGH
 C/HdI8BGfw4QvdbgQjMck6JZX/I4+0DF4BOaDtKzSk0HUh/fPmuEyUL01 g==;
X-CSE-ConnectionGUID: 9Fz2z4MHTfCW3NvX/KOBkg==
X-CSE-MsgGUID: w8joXCKMQsuzYi1dQNiePw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620160"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620160"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:13 -0800
X-CSE-ConnectionGUID: mzIO6mbcTQ2n6xezA/nnuQ==
X-CSE-MsgGUID: TY2ZUto2Tu2mYQkt8rY7Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735025"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/18] drm/i915: Extract intel_crtc_vblank_delay()
Date: Tue, 10 Dec 2024 23:09:50 +0200
Message-ID: <20241210211007.5976-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Pull the vblank delay computation into a separate function.
We'll need more logic here soon and we don't want to pollute
intel_crtc_compute_config() with low level details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++-----
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8e90e99a25d6..ff907afa6451 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2610,16 +2610,29 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_state)
+static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
-		adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
 		IS_DISPLAY_VER(display, 13, 14);
 }
 
+static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int vblank_delay = 0;
+
+	if (!HAS_DSB(display))
+		return 0;
+
+	/* Wa_14015401596 */
+	if (intel_crtc_needs_wa_14015401596(crtc_state))
+		vblank_delay = max(vblank_delay, 1);
+
+	return vblank_delay;
+}
+
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
@@ -2629,9 +2642,8 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 		&crtc_state->hw.adjusted_mode;
 	int ret;
 
-	/* Wa_14015401596 */
-	if (intel_crtc_needs_wa_14015401596(crtc_state))
-		adjusted_mode->crtc_vblank_start += 1;
+	adjusted_mode->crtc_vblank_start +=
+		intel_crtc_vblank_delay(crtc_state);
 
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
-- 
2.45.2

