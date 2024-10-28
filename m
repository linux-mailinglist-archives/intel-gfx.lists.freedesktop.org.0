Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C449B3AC1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ADA010E561;
	Mon, 28 Oct 2024 19:50:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+LtHqkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32ED10E558;
 Mon, 28 Oct 2024 19:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730145015; x=1761681015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qfiAjttlyV5Sk3bxVu3zaEbfQA4GBrJP7PDI4luHzaQ=;
 b=a+LtHqkg7j7/VKejzfmCeKlWU/LQqRxifVfnE6lDL002F08SPcIx1FWO
 kUyaxVcFp2ZkEFQXgHIfoa4XRxbd8PSZ2eUw9adm9AuVF9RdanJcIB8HC
 fv55XDbigb3kMGTXzYjJ7m36Yue63ikytAcc5cZQREy3Tby+D6zgMdjoG
 HdOv3G4fwQjCFwBZue3OZEF+uX6BOR844nZSr1/Z2QmUyqFz70zKA5S/H
 o2KqLMP0rPEaYLTy4aYoQF6p+otc2wYDZAmNUgFuQknoQilmZsFjJcpuL
 oM2q+uXSDWe04P3YIrT5P8cr4wuVnEc8+7Al6LM6HyrEhSojLddQtocG9 g==;
X-CSE-ConnectionGUID: 7g9nl8ZnT+OfREW7/oTbpw==
X-CSE-MsgGUID: CxAL2z0WQVa1/wClxfPiiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857986"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857986"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:14 -0700
X-CSE-ConnectionGUID: ubv1kvMUSVGUXWnsW7ItWw==
X-CSE-MsgGUID: pMTsVeWzTmCgJYxY+nSrig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86860021"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:50:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 14/16] drm/i915/vga: use
 display->platform.<platform> instead of IS_<PLATFORM>()
Date: Mon, 28 Oct 2024 21:48:47 +0200
Message-Id: <ee09546f217723a5f869749562eea7d6e97472f7.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
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

