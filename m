Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8543B8391A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4F210E681;
	Thu, 18 Sep 2025 08:41:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4etvyO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CAE010E680;
 Thu, 18 Sep 2025 08:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184877; x=1789720877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZbCSKRT2so/TPxko1UvXIoQnthSy71RCssh7UUFA87E=;
 b=g4etvyO09i0ywN2fiHYLoGWMR/kAnVy9ircWulrImdH43THY2Gu4RXCj
 TJCGbTF3+DrCulfluxlC/Fguoki4vKp/oetKqYjI9yEN0MZzQQVxBUynv
 s78qjVL9fQyHr7SZA73zxLaIh/XHa46niRSEPIEg91sPoc0xS58DaY40f
 sa8ZRbSMTLs+b+Lp4RJ3lRutEJDoppDv/gS2+TgWfy4W0L67z1ugDnqmI
 UByiZR3wmldRdxHmlRS16pTgbU2QljmtBd38YD96EqBhJIUhHUCMAWjeP
 A7s+KPu2W0VscQP3B3CKRCqKDl9D6KVMzVJ6H1hy5LYYqOkkxhOn8zXYq w==;
X-CSE-ConnectionGUID: 9cW6h4LtSsyMiBuTTBJnBQ==
X-CSE-MsgGUID: 4zFHxkBcQReSocxREJyTUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932926"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932926"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:17 -0700
X-CSE-ConnectionGUID: uPWASjsNR/KTy2tiDQdV5A==
X-CSE-MsgGUID: mlfKMobvR9KmViXJ+mSbgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760697"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 02/10] drm/i915/fbdev: make intel_framebuffer_create()
 error return handling explicit
Date: Thu, 18 Sep 2025 11:40:52 +0300
Message-ID: <17631db227d527d6c67f5d6b67adec1ff8dc6f8d.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
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

It's sketchy to pass error pointers via to_intel_framebuffer(). It
probably works as long as struct intel_framebuffer embeds struct
drm_framebuffer at offset 0, but be explicit about it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 210aee9ae88b..b9dfd00a7d05 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -67,9 +67,16 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 							  mode_cmd.pixel_format,
 							  mode_cmd.modifier[0]),
 				      &mode_cmd);
+	if (IS_ERR(fb)) {
+		i915_gem_object_put(obj);
+		goto err;
+	}
+
 	i915_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
+err:
+	return ERR_CAST(fb);
 }
 
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
-- 
2.47.3

