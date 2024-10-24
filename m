Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446699AE4E6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4F510E91B;
	Thu, 24 Oct 2024 12:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Thsdu1oN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AF210E91B;
 Thu, 24 Oct 2024 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773299; x=1761309299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qfiAjttlyV5Sk3bxVu3zaEbfQA4GBrJP7PDI4luHzaQ=;
 b=Thsdu1oNz8/wZl9gA0I3tvKSOJEul/aQxEnMI1PTQ7wZo7TxxUYCKtEh
 D3NAOPVCJB7MUFFjZErqmFLP2sXGQF8VfIvvGRyHV3sbOpt3Glgq1jr+I
 5gxVxW0O/01xwmolQ2kishSIY5ZAZIBVHijzi9c/B1ceO3ugFKXzZv/bB
 r6h41XoMLbzP75kJiKLIgl5AXbOU0swsDK3AXedg7ka3/S2fZsAq67daJ
 uNAbl+9Opo2d2y+M5FxAz3rVlsWeh4zzRH3p3KjIvar2dUt1RcqnhqnBb
 iv6UY+FwuTwKasv3bC0DlFByetfZnhoURlChTUy0AGutowDniG7thtCrQ Q==;
X-CSE-ConnectionGUID: dJwYq1PsR1yplE5fHyt20g==
X-CSE-MsgGUID: 6uZJMNReRuyBWMpC1e+VsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="32257185"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="32257185"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:59 -0700
X-CSE-ConnectionGUID: MgxuZX6gQzKCSkexVmCzzQ==
X-CSE-MsgGUID: g9tv50wkTxqzcUuam70Chg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80158195"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 14/16] drm/i915/vga: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Thu, 24 Oct 2024 15:33:40 +0300
Message-Id: <6df2634986082b7b4b42dbd769e71924d3d2c46b.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 2c76a0176a35..fd18dd07ae49 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -16,9 +16,7 @@
 
 static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		return VLV_VGACNTRL;
 	else if (DISPLAY_VER(display) >= 5)
 		return CPU_VGACNTRL;
-- 
2.39.5

