Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291E54C8EB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 14:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6998E10E5B6;
	Wed, 15 Jun 2022 12:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6093A10E5B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 12:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655297298; x=1686833298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QFALSBN9muDXlGrGvoEg/a1az87MfasDqMi/Y8r9O9s=;
 b=fn1SJ8tCKoO77rbyWzAEutbQGpTR12SGhktf4kxGi4qjT1TOUzvDa5Yh
 eJ/wsHVRKt8e3LI3Bwhd70LXOT+q/QIyvYh+8eptAL6wnycHELs+pkW+w
 irxYbI5xrbzvzgXyaj8TANqtoUjRMAfk3FeAtKaJ/7RsipkWbYsrcoOmN
 Pr6/+pG4A8PWtXOgauiM5bU9DA2A5SZ5PcSUpQGLKJM+xgji6dqh3V0qh
 YTlC+mpUsOMqy8EQFw6wstitpDZACSW5KO7XCEHjIUNN+RiZi8u+Q2m1z
 f4dMxfOALbL607PS1SoM48u8BzwMnvYjmg2OGUILfwtlf6DpZG7UV3L5r A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="340607982"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="340607982"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="831023241"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 05:48:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 15:47:57 +0300
Message-Id: <82194fc5f5564e7c3974d15e3403b9a295113c9b.1655297182.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
References: <cover.1655297182.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/mpllb: use I915_STATE_WARN() for
 state mismatch warnings
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The pipe_config_mismatch() function is primarily for logging comparison
results.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ffceda77dea6..064fa2391e85 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6601,14 +6601,12 @@ verify_mpllb_state(struct intel_atomic_state *state,
 	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
 	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
 
-#define MPLLB_CHECK(name) do { \
-	if (mpllb_sw_state->name != mpllb_hw_state.name) { \
-		pipe_config_mismatch(false, crtc, "MPLLB:" __stringify(name), \
-				     "(expected 0x%08x, found 0x%08x)", \
-				     mpllb_sw_state->name, \
-				     mpllb_hw_state.name); \
-	} \
-} while (0)
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)
 
 	MPLLB_CHECK(mpllb_cp);
 	MPLLB_CHECK(mpllb_div);
-- 
2.30.2

