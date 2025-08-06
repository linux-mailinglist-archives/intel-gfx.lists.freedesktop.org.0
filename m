Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72344B1CA12
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093E710E7AC;
	Wed,  6 Aug 2025 16:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OyVSfTAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3246110E7AC;
 Wed,  6 Aug 2025 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499333; x=1786035333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rN9S4bQPwSFkFUl3tzwTekXlPrtXqczXRqc6ZV97CTQ=;
 b=OyVSfTAhgTmUZ6UswMsyyK57GFHow8FJ/xF5evMgewWKpUjXVXGDBhDT
 tdJX7KudfmOubwtdQDn2K4AfYo2znouhAukIsimCocyBfqE6Lb1MDainx
 T+d8+s3//UCI/ZFVbpEWBtXEpygbW03rct6KEj+M6BWWyTBsBI8Il4U3y
 LpGKy+ObfoMTMTlHOeYKcNJhv5SfNLAOscvbCKyZ4p4Pexz570u3Y04Ie
 Fhrd6T/pdw/o0JCV3tW+sLXxRam6guSDoQSLmDsNnBj7lewqgN9a92jqo
 tcvOX9tVZ/Z7NEVQrr8+RflNiCEPfZNEzecaV4f3JcJusVlwL4ASMW1sC A==;
X-CSE-ConnectionGUID: 5Re40uSqTpu6Z/Cq/YY9IQ==
X-CSE-MsgGUID: b48HKoaOQfGLTZos00ZfDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68199667"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68199667"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:33 -0700
X-CSE-ConnectionGUID: TQ+60brKSOKZWFkxqCM6zQ==
X-CSE-MsgGUID: qe8hXwxDSdiFVnDODe048g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195659271"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/15] drm/i915/fb: pass display to HAS_GMCH() and
 DISPLAY_VER()
Date: Wed,  6 Aug 2025 19:55:03 +0300
Message-Id: <8a209e3f60039986794123e6b1631185c9234f8f.1754499175.git.jani.nikula@intel.com>
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

Convert some leftover i915 usages to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index d598a005f847..45af04cb0fb2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -152,7 +152,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	 * happy to scanout from anywhere within its global aperture.
 	 */
 	pinctl = 0;
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(display))
 		pinctl |= PIN_MAPPABLE;
 
 	i915_gem_ww_ctx_init(&ww, true);
@@ -193,7 +193,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		 * mode that matches the user configuration.
 		 */
 		ret = i915_vma_pin_fence(vma);
-		if (ret != 0 && DISPLAY_VER(dev_priv) < 4) {
+		if (ret != 0 && DISPLAY_VER(display) < 4) {
 			i915_vma_unpin(vma);
 			goto err_unpin;
 		}
-- 
2.39.5

