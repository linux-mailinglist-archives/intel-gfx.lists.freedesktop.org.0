Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5053498CB6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850C110EA42;
	Mon, 24 Jan 2022 19:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A11E10E93C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052703; x=1674588703;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wI3LbQZcJUsL3fPqH8iqgkYmQ2FNa4GHebhakSRee+Q=;
 b=QKRPyIKB6HROXwyNcSWo1kmMF/yiPflgZ5XenjCtBF4lpR+/UqsKOLyJ
 rznm6NN/HKMr33/O95meSgEpX5PXZoIGAaOfgf9O9x5VTNA0jYlqhavYF
 2NYG2iCViouXxcJYaaqxwJArBOYZqN7U3gpHtpUEfpFNJjKgKNNYfVDRK
 MwFWhvuPaaHR44mTyQn9pcwxksa10D7IEJQwrW3c8d1QmnyldumQz9M7p
 ChPSm8Ieal9mB2ay4lz0UxgxM5Oc9RwHJawtR7YkMGb9MT+AH5HBVxEMZ
 jo9IhP4WLzF52tRk6MAJ4W+UwcAJvcNmM7hxc/W3O/WdqPhJmozbwXoOw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246075121"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="246075121"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:31:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="494730142"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 24 Jan 2022 11:31:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:31:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:31:36 +0200
Message-Id: <20220124193136.2397-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
References: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Introduce ilk_pch_pre_enable()
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

Complete the ilk pch modeset abstraction by adding ilk_pch_pre_enable().
I did the disable vs. post_disable split already for the disable
sequence, but the enable sequence was still left with the naked
ilk_fdi_pll_enable() call for some reason.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     |  5 +----
 drivers/gpu/drm/i915/display/intel_pch_display.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_pch_display.h |  2 ++
 3 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80bc52425e47..1c82cfc54bd4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1858,10 +1858,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_pre_enable(state, crtc);
 
 	if (new_crtc_state->has_pch_encoder) {
-		/* Note: FDI PLL enabling _must_ be done before we enable the
-		 * cpu pipes, hence this is separate from all the other fdi/pch
-		 * enabling. */
-		ilk_fdi_pll_enable(new_crtc_state);
+		ilk_pch_pre_enable(state, crtc);
 	} else {
 		assert_fdi_tx_disabled(dev_priv, pipe);
 		assert_fdi_rx_disabled(dev_priv, pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index a55c4bfacd0d..0c528c612cb2 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -211,6 +211,20 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	}
 }
 
+void ilk_pch_pre_enable(struct intel_atomic_state *state,
+			struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	/*
+	 * Note: FDI PLL enabling _must_ be done before we enable the
+	 * cpu pipes, hence this is separate from all the other fdi/pch
+	 * enabling.
+	 */
+	ilk_fdi_pll_enable(crtc_state);
+}
+
 /*
  * Enable PCH resources required for PCH ports:
  *   - PCH PLLs
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 2c387fe3a467..f915fa4241d7 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -10,6 +10,8 @@ struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
 
+void ilk_pch_pre_enable(struct intel_atomic_state *state,
+			struct intel_crtc *crtc);
 void ilk_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc);
 void ilk_pch_disable(struct intel_atomic_state *state,
-- 
2.34.1

