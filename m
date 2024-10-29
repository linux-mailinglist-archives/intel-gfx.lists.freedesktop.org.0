Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4A39B54BF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3380C10E705;
	Tue, 29 Oct 2024 21:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8HvvTzH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06DD10E714
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236343; x=1761772343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=quTK1F1BCfiCh9oLmYMNY1J1Hoj/W6MNAE8Sr2mzOT0=;
 b=b8HvvTzH7tapeWGSNeGScm6THF8Mtyv21cZqPaAMXrg05zBc9qugaHQx
 VDqmnKLXIDG3EJMQXzQiRR4GSclZ2VcXePvCgrfft2l2gj3QmOFDE/Jrs
 qgaNh7r4D37HQo4Y1mxd3Tav3PnYD/gNFyuip1A1wU06T7QbczQrWbndx
 WxWrT8LAsqGLlUXC2kMQMs8G39ZHZgSZpiZihbU3O+XyCTLoLttyk88/j
 5u4fauPXVhdo2pel3vMVcZt6LwWa2S7AbFxqN7Pqr06ZPZiXi84Cdm2FQ
 lUT3Zfcpy0l6kemqudwRVITHoA59Rxlqz4GQMbj9fJagbmsV0BBM4NgNC A==;
X-CSE-ConnectionGUID: X1/4nLQuTJSlD23mFtrLRA==
X-CSE-MsgGUID: fhqtkwALSJOZ2wskaoYZug==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019549"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019549"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:12:22 -0700
X-CSE-ConnectionGUID: +AxSuQu+Q7G5yn+rv1pUeA==
X-CSE-MsgGUID: XsJn4selQ4qKBG6S+4m9lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915/scaler: Extract intel_allocate_scaler()
Date: Tue, 29 Oct 2024 23:10:30 +0200
Message-ID: <20241029211030.13255-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

intel_atomic_setup_scaler() is a mess. Make it a bit less so
by moving the scaler allocation loop into its own function.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 31 ++++++++++++++---------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 3cff48443100..ff8cfb8e4536 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -291,6 +291,23 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 				 need_scaler);
 }
 
+static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
+				 struct intel_crtc *crtc)
+{
+	int i;
+
+	for (i = 0; i < crtc->num_scalers; i++) {
+		if (scaler_state->scalers[i].in_use)
+			continue;
+
+		scaler_state->scalers[i].in_use = true;
+
+		return i;
+	}
+
+	return -1;
+}
+
 static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
@@ -299,20 +316,10 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int j;
 	u32 mode;
 
-	if (*scaler_id < 0) {
-		/* find a free scaler */
-		for (j = 0; j < crtc->num_scalers; j++) {
-			if (scaler_state->scalers[j].in_use)
-				continue;
-
-			*scaler_id = j;
-			scaler_state->scalers[*scaler_id].in_use = true;
-			break;
-		}
-	}
+	if (*scaler_id < 0)
+		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
-- 
2.45.2

