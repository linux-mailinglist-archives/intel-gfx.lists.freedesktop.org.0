Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACA79974D1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7DF10E7B3;
	Wed,  9 Oct 2024 18:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cy7g59xS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE11E10E7B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498136; x=1760034136;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4KlXhi8vTYMQPzobaYyNJ3qbMBRK9eI0CLC3urk4vOo=;
 b=Cy7g59xSnCWOsHuvQkZ2KN1wtGV/0iZ6rx+j5d6Q/MCnG9wDxASRaTaA
 4hkG4l0s8eQefjpXskC/fESIhMuaUSrJhga5I8XW9oBvxgWrsv4NhXuO8
 fnkY5cYU1yge8QJ33j9TtkrUKOFNixJC8iPCkzIqGWdrgCUFGTx+MOsea
 IyvmsHUTDflhg49NzUgsFMiZPRBXhUWWy625KaaDSVERpIcj7aOW9h3Na
 iOjLyTKfCyQRP/J1Z7E88P69lJUXE+bCgP/bmIfYGAx36yohRgF10GMj9
 8BfZAHKCRHUqd77gWpTPwzqQbP9ZQAipdlkjm/7CC3pjclmbay3jymH5T w==;
X-CSE-ConnectionGUID: iyMS0RMmSOq67L0BRPX8Yw==
X-CSE-MsgGUID: Djj0CjqkRBubjnFPb9LUIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15438994"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15438994"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:16 -0700
X-CSE-ConnectionGUID: X21JThZsTR6lhGf/INkoUA==
X-CSE-MsgGUID: GIEIFe7dQZ2Wnm28K/R5kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430363"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915: Allow async flips with compression on ICL
Date: Wed,  9 Oct 2024 21:22:00 +0300
Message-ID: <20241009182207.22900-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
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

Apparently ICL can do async flips with CCS. In fact it already
seems to work on GLK, but apparently can lead to underruns there
so we'll only enable it for ICL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 21d412b158e8..70a5e5357a14 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6507,7 +6507,26 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 				return -EINVAL;
 			}
 			break;
-
+		case I915_FORMAT_MOD_Y_TILED_CCS:
+		case I915_FORMAT_MOD_Yf_TILED_CCS:
+			/*
+			 * Display WA #0731: skl
+			 * WaDisableRCWithAsyncFlip: skl
+			 * "When render decompression is enabled, hardware
+			 *  internally converts the Async flips to Sync flips."
+			 *
+			 * Display WA #1159: glk
+			 * "Async flip with render compression may result in
+			 *  intermittent underrun corruption."
+			 */
+			if (DISPLAY_VER(i915) < 11) {
+				drm_dbg_kms(&i915->drm,
+					    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip on display ver %d\n",
+					    plane->base.base.id, plane->base.name,
+					    new_plane_state->hw.fb->modifier, DISPLAY_VER(i915));
+				return -EINVAL;
+			}
+			break;
 		case I915_FORMAT_MOD_X_TILED:
 		case I915_FORMAT_MOD_Y_TILED:
 		case I915_FORMAT_MOD_Yf_TILED:
-- 
2.45.2

