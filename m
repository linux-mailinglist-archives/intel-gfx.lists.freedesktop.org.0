Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C074C5B67D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 06:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AECF010E9B5;
	Fri, 14 Nov 2025 05:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XHwmPwfH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7F810E9B2;
 Fri, 14 Nov 2025 05:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763098841; x=1794634841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yDW92O6UI54LoyYu1dTuaDVrHMyWhWw7N89LIi8yXOk=;
 b=XHwmPwfHfskhHiKfQRkRlQJy63awoC+DGwmfVe75GxVYXt1mcmZFcvjG
 su78VSBBFbvA/0B7xQiMbGasqdZdW99ZO574TgMF5IG0GI/fnY3sgOOWL
 a6rtWfs2vX/FjeRyOmppoSxMz7rQNxhltwt2EWvThFfc9ixb6Nnbv5jGg
 LJJI46ZakvWS7Lx0jUbcFRVKkZRkq1lD5Xh9KeW7qDHSb1hl6IUsIvVM/
 M5teWkjIKkAjuODpyekk0uNl0dHJwjVV8zb98/PmyJf6QOvrH1M1KGbHv
 QDnBdb1/9RpML0kY/RLH7rOnQcqECmp2O1mIoCMvfuSf9wgpkfNGByhXr w==;
X-CSE-ConnectionGUID: bv28O33MQaG8R/Q2VLRaZQ==
X-CSE-MsgGUID: fQ+qaEQ7T+CZAoo5MzJoaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76536291"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76536291"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:41 -0800
X-CSE-ConnectionGUID: Z30PJSkUQ3uFFv0S7UiNVQ==
X-CSE-MsgGUID: W3o80FFfTRqtmeAjn45jkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189543654"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 21:40:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/5] drm/i915/alpm: Simplify and align LOBF checks in pre/post
 plane update
Date: Fri, 14 Nov 2025 10:57:45 +0530
Message-ID: <20251114052746.158751-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
References: <20251114052746.158751-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

The pre_plane_update and post_plane_update hooks used slightly different
conditions for LOBF state changes. Rewrite them to be minimal and
complementary:

  - pre runs only when LOBF is being disabled (old=1 -> new=0)
  - post runs only when LOBF is being enabled (old=0 -> new=1),
    with an early return if PSR is active.

This will help for subsequent changes to handle LOBF during LRR and
seamless MN transitions.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5cfb9345776a..db2b9608f7f8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -461,7 +461,8 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 	if (DISPLAY_VER(display) < 20)
 		return;
 
-	if (crtc_state->has_lobf || crtc_state->has_lobf == old_crtc_state->has_lobf)
+	if (!old_crtc_state->has_lobf ||
+	    crtc_state->has_lobf == old_crtc_state->has_lobf)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
@@ -512,7 +513,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (crtc_state->has_psr || !crtc_state->has_lobf ||
+	if (crtc_state->has_psr)
+		return;
+
+	if (!crtc_state->has_lobf ||
 	    crtc_state->has_lobf == old_crtc_state->has_lobf)
 		return;
 
-- 
2.45.2

