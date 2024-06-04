Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05398FB70D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE58910E4E7;
	Tue,  4 Jun 2024 15:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPTCPfV+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791B410E4B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514886; x=1749050886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7Hf/N6mglmRjMhNmk+42u2KxsCGU3AX1orq7EVl86M=;
 b=YPTCPfV++lWoTFpo0Ue9jQfPjrTNlwloQXQ9x8GRbdHX+kOJGGXYsik5
 dHp8VTVrmxtKXVOR+eKxqRARFayyxD6NbJr2TbHDEwKYAIy7Huj3Or47m
 yulrc0YCpyNt9xp6Qj2/2qQg1OQae9oNqoRnUKBTZ0WDmlsHgFH1DtCPp
 3/fgTdiGUtZlGmm5pvux4QVHIb2tGz5HmovzooWdXNf+af4WUVR/vwBn9
 i7Y7FC3j+3kad/SkSghkPZ3v1UzahwyiSFe9zzUoMOv5OBQZ3rwxTJNXa
 0siWjOj0HgKVgRGtLv/IC23dN3gu9912Ohdw8QIWs/3rV9dgC3onol5aw w==;
X-CSE-ConnectionGUID: vhAwUOrsS1e/hJxYFsg9+w==
X-CSE-MsgGUID: CqOsqSUgQGK3aKnK9XAsFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225608"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225608"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:06 -0700
X-CSE-ConnectionGUID: qPn/qkrpSKe3DlEyxkqVzw==
X-CSE-MsgGUID: jv6jVGk+Sr6CWTMDgiwGUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37277956"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 20/65] drm/i915: pass dev_priv explicitly to PIPEFRAME
Date: Tue,  4 Jun 2024 18:25:38 +0300
Message-Id: <7e6d1a8d3ae2a42efa3a48884e0e37357e0108c1.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PIPEFRAME register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index e2d20064e68d..ac8ad3ebf4a4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -102,7 +102,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
+	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe),
+				     PIPEFRAME(dev_priv, pipe));
 
 	pixel = frame & PIPE_PIXEL_MASK;
 	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fbd004bd1992..c4f8c50f61d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1878,7 +1878,7 @@
 
 #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
 #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
-#define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
+#define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
 #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
 #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
-- 
2.39.2

