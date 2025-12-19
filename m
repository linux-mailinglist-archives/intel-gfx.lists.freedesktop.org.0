Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717D6CCFF6D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Dec 2025 14:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF3C10EF97;
	Fri, 19 Dec 2025 13:06:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaD3mPD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A838010EF96;
 Fri, 19 Dec 2025 13:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766149570; x=1797685570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yj3vl0FRQSJ+aoSXTzvhWHQQpgiDjcCybuumGAM5O88=;
 b=WaD3mPD20wYzfuOf5qHM7aL7jk+hzViPpd2V6zy17Y4dwzCXgNhFGBRu
 XipKVI2JbbZePwYTWd12Emkex6l32RFt27SOSf6L9pDHWKgY9DSOPUYv/
 orEfef7wHZhHwEp7/p94x6K21uLLZn0JoAjIwK/z0F41XV2qJyhixF/rW
 PY+TiqgjqXK10tMMUugcTzRgLXfvnzLpbFwbssinnreJK4p6Dq9R2dCgX
 DRujwNjekdpe1mpVBdY3hwKydFllpMvDZ4I0Vrt+tH9fz9KlGwMAw/FFI
 CNxQS3g4WEYQEf3SSRP/4Uyln/LzQgFr1A/VaeAZXS42NMSTloLHlKTk7 w==;
X-CSE-ConnectionGUID: E9d/zadRSFaY5Wo6Dn/Yrw==
X-CSE-MsgGUID: kVGgEOQISPWnKZsxLjoauA==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68086579"
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="68086579"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:10 -0800
X-CSE-ConnectionGUID: wDm9+DlMRoKeYpeZIS8kcQ==
X-CSE-MsgGUID: R0RSUPpRQVWuNRMgt8mYGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,161,1763452800"; d="scan'208";a="199337758"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.49])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2025 05:06:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 7/7] drm/i915/psr: Use TRANS_PUSH to trigger frame change
 event
Date: Fri, 19 Dec 2025 15:05:37 +0200
Message-ID: <20251219130537.3024373-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251219130537.3024373-1-jouni.hogander@intel.com>
References: <20251219130537.3024373-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Now we have everything in place for triggering PSR "frame change" event
using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.

v3: use HAS_PSR_FRAME_CHANGE macro
v2: use AND instead of OR in intel_psr_use_trans_push

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4336ba188aa7..c31b7d1d13ed 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4567,6 +4567,7 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	/* TODO: Enable using trans push when everything is in place */
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return HAS_PSR_FRAME_CHANGE(display) && crtc_state->has_psr;
 }
-- 
2.43.0

