Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FAAB1CA1A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FDE910E7C3;
	Wed,  6 Aug 2025 16:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqC5GE+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AB910E7B1;
 Wed,  6 Aug 2025 16:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499364; x=1786035364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m7wb8nI/mpRfTuCrTko2qhX0wFgQbnKn82B7S1+ThZQ=;
 b=lqC5GE+5rwyvo2/dqM4URwlYY5b70c6tDfMkgCclgFm6Oj1hPOQBmgLD
 egVcxHiagyT2TjVUzWIN1Ea0exjjDi21bkf46Gq5kXtnwg4a5h5MOD9vb
 TVr+ae4SXfmZsquoPdG0mKlLHlm3G0kGmVmMT8K9Q5y/IA6fmZsu8I/CN
 EUNbVI6e75C4b8WbOtPSwpo7xkwE+n2MfTDpGpNKfHqCGq1C1nRVSIcfU
 2LPibOg1DSayf8pQAabz+PiFb5yZr+gYHhadRDmvnjfNWqsmrLNqGf9g4
 1NCwr/8HHiJoQrtqtxqtS0YiQx2qIyokh0F/jOIYd4r/aA2nYb7ZIOX5o w==;
X-CSE-ConnectionGUID: NEV6DvSfQL6fWdBHOIOm5Q==
X-CSE-MsgGUID: R5PiC6uIRd2CUiWDpS4TAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60455972"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60455972"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:04 -0700
X-CSE-ConnectionGUID: MQC8DIYRTc2+AakrJbvBlw==
X-CSE-MsgGUID: LczlVoIGQVeddkabZcyEaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164790"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/15] drm/i915/gem: pass display to HAS_DISPLAY()
Date: Wed,  6 Aug 2025 19:55:10 +0300
Message-Id: <79c87f75771a1d120cdd35dcfd6b380620ce99f1.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Underneath, HAS_DISPLAY() really expects a struct intel_display. Switch
to it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 86d9d2fcb6a6..e747f5ed195e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -110,6 +110,7 @@ struct tiled_blits {
 
 static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 {
+	struct intel_display *display = i915->display;
 	int gen = GRAPHICS_VER(i915);
 
 	/* XY_FAST_COPY_BLT does not exist on pre-gen9 platforms */
@@ -121,7 +122,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
 	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
 		return false;
 
-	return HAS_DISPLAY(i915);
+	return HAS_DISPLAY(display);
 }
 
 static bool fast_blit_ok(const struct blit_buffer *buf)
-- 
2.39.5

