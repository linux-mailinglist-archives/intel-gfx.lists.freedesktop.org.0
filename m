Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D5FA2D015
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 22:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E6F10E143;
	Fri,  7 Feb 2025 21:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XhJiT77k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8298210E143;
 Fri,  7 Feb 2025 21:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738965253; x=1770501253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/N22X57dfIawpmK9XKXDhSiFTLAacsMuQ22BMcBjiMs=;
 b=XhJiT77ksAyL/Bwx+P0Vk/SlIqsW9hUtt2FqUk98eWIyankCkjmngW+0
 5yhpdBxyyg7iFlH4XWaP9XmGSmyUzceL3Z3tcLMCJOFcQmKhxOkSFvIdx
 Q6oJY14UCn5Sjf0on7hJbspKlUJUuMjjJFvc9bU0Wn8cyKWhI3XoT9w7m
 BrrC39gy4SNZaUf7dM8r5mWvWHz3OORmshgFBx3CGalc9Ew7c6kxEAQc5
 ns1ag1uPs9IogN0FPQO4QG0HbeOhtTuMmRu0z66jp+Yto/SZdwDlhkBgC
 EiFPeW9bpKo/Mau3R57cfvCyJp9mY4Bztn4AgbxU/vJQW4UPL9an4zNIk g==;
X-CSE-ConnectionGUID: 38OaYLvfToKDOzIHyNLh2A==
X-CSE-MsgGUID: YKCBDc8mRFuDlhFLpFo0cA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39745984"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39745984"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 13:54:13 -0800
X-CSE-ConnectionGUID: 39d1LmgTTBiaSr+VitbELA==
X-CSE-MsgGUID: l23nMjTbTTewpH2M9v+VRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111851036"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 13:54:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2025 23:54:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	stable@vger.kernel.org
Subject: [PATCH 1/3] drm/i915: Fix scanline_offset for LNL+ and BMG+
Date: Fri,  7 Feb 2025 23:54:04 +0200
Message-ID: <20250207215406.19348-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
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

Turns out LNL+ and BMG+ no longer have the weird extra scanline
offset for HDMI outputs. Fix intel_crtc_scanline_offset()
accordingly so that scanline evasion/etc. works correctly on
HDMI outputs on these new platforms.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 4efd4f7d497a..7b240ce681a0 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -222,7 +222,9 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
 	 * However if queried just before the start of vblank we'll get an
 	 * answer that's slightly in the future.
 	 */
-	if (DISPLAY_VER(display) == 2)
+	if (DISPLAY_VER(display) >= 20 || display->platform.battlemage)
+		return 1;
+	else if (DISPLAY_VER(display) == 2)
 		return -1;
 	else if (HAS_DDI(display) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return 2;
-- 
2.45.3

