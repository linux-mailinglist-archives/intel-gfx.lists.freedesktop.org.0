Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 211248FB70E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F00C10E4B3;
	Tue,  4 Jun 2024 15:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sv0aYPV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7ED10E4E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514890; x=1749050890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mAjDGAnlg6PNKB2zwW7ZvaNx80130qYliZVFOVBSF7g=;
 b=Sv0aYPV///7VHv8XS4/23xW1KHVpXZVOGGuif4hLckfZm/aXqxKuQGCb
 wqGkrvKMtbqJkfX7x9cIWOEX9Q+S2z0oxRZOgX0lycayAMNwDnup//v/F
 nPr5LTF5eX6XUvpnxKwAkkPs+9iLgksjd0xKynjbRsyJNXXLHATZE7Lxr
 +l9Cl0YO5oVKQoaOl4plnPid36GS3B1PiXBEZXt8iPxfEoaB7wwf42c1S
 BvRnBiJH2AUvnn0EuFY33/aWY+WcoN5K0XUqnT76ohiQnmZUWU7QJUZCc
 zOYMucNI9xJqlvlhNnowDSL08thSyByGYhecuh8VH1VU+UTdCZfTu9vQ3 w==;
X-CSE-ConnectionGUID: RbY4sLuNSnOvc/Ktr4SaKA==
X-CSE-MsgGUID: xuBPUtNeRbalzIf9JoOJug==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225617"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225617"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:10 -0700
X-CSE-ConnectionGUID: gZfOZF8HROeTB//NM/Q4Fw==
X-CSE-MsgGUID: UgOZMwiTTea7P/ewCDw6kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37277976"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 21/65] drm/i915: pass dev_priv explicitly to PIPEFRAMEPIXEL
Date: Tue,  4 Jun 2024 18:25:39 +0300
Message-Id: <464d4536f90e9d463458cdd315b3ba650e12ada5.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPEFRAMEPIXEL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index ac8ad3ebf4a4..c6e68c0604b3 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -102,7 +102,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 	 * we get a low value that's stable across two reads of the high
 	 * register.
 	 */
-	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe),
+	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe),
 				     PIPEFRAME(dev_priv, pipe));
 
 	pixel = frame & PIPE_PIXEL_MASK;
@@ -386,7 +386,7 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 		 * We can split this into vertical and horizontal
 		 * scanout position.
 		 */
-		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
+		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(dev_priv, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
 
 		/* convert to pixel counts */
 		vbl_start *= htotal;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c4f8c50f61d4..a6dff480bd0b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1879,7 +1879,7 @@
 #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
 #define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
 #define PIPEFRAME(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
-#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
+#define PIPEFRAMEPIXEL(dev_priv, pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
 #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
 
 #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
-- 
2.39.2

