Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B55A05FD4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 16:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565F110EBEE;
	Wed,  8 Jan 2025 15:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOt8wwRO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD6CA10EBEC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 15:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736349512; x=1767885512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vo8VfFFQ3yx0dLhwJj+Nol4lSU/uFA5FR6wFx00khlw=;
 b=AOt8wwRO5JcuW+1aaoMX+wRKmyEBt5O092HqPChQ54CtT3e7xNlalFCY
 zHeH12jWMMapWH3JvPuSMUjhmuB+/TAGuypPJ5KKjFtmOJmk4UHPfRKLf
 FaI2QWt5G75VCaIoPKaWO4vaZCDU/81xzuAcMNB+zaTZHux0VEFgNMmkZ
 huBlx52CUNpe82Jnla7QWJrx2oOZHbVbqNstD8RR0KXaGupQYOVGAmaxF
 UFdbnhA9Tsetimlk3+wrcWcYEjRUO8I0Ru86weNkj2IKJSX3Oti1e63X7
 XeebzmlQiRY7JcOGXGYvlZH1GddAAJuiVRCbj7CpKDXNIYJf1MGn5S7aq A==;
X-CSE-ConnectionGUID: UWDID4I8RZyCEQRQD+Pp4Q==
X-CSE-MsgGUID: 8gSyL+S8QqqIhQ9TY7esMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694393"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36694393"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:32 -0800
X-CSE-ConnectionGUID: KELpa5PiROu9ram7f8zedA==
X-CSE-MsgGUID: ebBIk/nCSQy33rmkxEJFGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103626829"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/dp_mst: Use intel_display::platform.alderlake_p
 instead of IS_ALDERLAKE_P()
Date: Wed,  8 Jan 2025 17:19:16 +0200
Message-ID: <20250108151916.491113-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250108151916.491113-1-imre.deak@intel.com>
References: <20250108151916.491113-1-imre.deak@intel.com>
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

Use the driver's standard intel_display::platform.alderlake_p instead of
IS_ALDERLAKE_P().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fbc504037a969..e422e4ee9d280 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1219,11 +1219,10 @@ static void mst_stream_pre_enable(struct intel_atomic_state *state,
 static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	u32 clear = 0;
 	u32 set = 0;
 
-	if (!IS_ALDERLAKE_P(i915))
+	if (!display->platform.alderlake_p)
 		return;
 
 	if (!IS_DISPLAY_STEP(display, STEP_D0, STEP_FOREVER))
-- 
2.44.2

