Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43425BC7BA1
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E6A10E944;
	Thu,  9 Oct 2025 07:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2XNXpYq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD48210E947;
 Thu,  9 Oct 2025 07:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995062; x=1791531062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=24cfM/3/o8WjgwXkInWoaXRUq/STalaVRBYSOf464YU=;
 b=l2XNXpYqLpjXWYeosOJZB6WegZLPtL67IYnuCLUOYSZun+GQ1uZLWmKU
 JrQTcs9sXnKfRGnLprT7Pvw6WL019cxEXebKbdTrKo8K6ITiDC+ytdOaX
 2NbwvKi3p7m/om7DhOmiNTAUc4ctrrDw+u3wO5pHQ+yAyAJbSndedKDK/
 PYS2M49Ky0xJbWYUFbOOh44MCS8T8DAvrTCstAu2VuFGGW2bG9GFXAADg
 SpfC5tyz3XcRkqKNs/KF9Z/QQV255QddEKHFgOEV0IRzsEYW1mwcDRjsz
 nNVaOiDur22yvDK9zeZTeciBBVE0+aWXTIENcnoVT4hnniG3Owwv+D1QR g==;
X-CSE-ConnectionGUID: sOBuKdTZTpavf1p0/iNaog==
X-CSE-MsgGUID: kWSITVmsRNaxusOJHHA7JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050845"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050845"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:31:02 -0700
X-CSE-ConnectionGUID: bCLez5RHRj62qRhSeICGhQ==
X-CSE-MsgGUID: FVoRd5WlSWeYSLdz6kxKyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073566"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:31:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/8] drm/i915/display: Prepare for vblank_delay for LRR
Date: Thu,  9 Oct 2025 12:47:36 +0530
Message-ID: <20251009071736.800248-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

Update allow_vblank_delay_fastset() to permit vblank delay adjustments
during with LRR when VRR TG is always active.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cd499e58bed3..1426218c01d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4958,9 +4958,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * and optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
-- 
2.45.2

