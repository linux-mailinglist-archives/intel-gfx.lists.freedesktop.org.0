Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681A6712AD3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C7D10E82C;
	Fri, 26 May 2023 16:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE3510E829
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119152; x=1716655152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yGlIP1ZZuYJpsv8ER5otodLTjdEN0q6nbJ2y1RznZf8=;
 b=C14/MPyfsxFZVmtBUbbnBMmVPdxEqM8zWhySD3A1ZcLMqfuHkLk2bCur
 G0WGe5uBhcEEbVCNqFO/dZQ7CCjyeldMLF35/ZgMlaGjeczJ6vkq7v5JZ
 6S5PI2cp6P2INBDBtyRXA/gRZCoEw7aEzZ2HuDi7u6F9cjjwkn4aFnd6t
 XEnIlaivygOm3QgQbrUPDZ5uy0fbfW/GS2yL/FRcuPEuuLDf1Fc2td6Et
 djxBA6ntR+5GrokA5IpHCAIvButvHTZutjfMA0iBTCZ2i59aUHjW3hck9
 A2pNXpe++KzIRML8tNFi2qJeZ+sf7I7tPxXmQsA8h08UEU5dCFEg/826R Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="420006282"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="420006282"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="951949695"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="951949695"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:39:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:08 +0300
Message-Id: <28ca3f95fe77ceb8aa35b87fca73f7afbc89859a.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: re-enable
 -Wunused-but-set-variable
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

W=1 enables -Wunused-but-set-variable. We disabled it locally in i915
Makefile as we were hitting a bunch of warnings. See commit 6a05d2900464
("drm/i915: Disable unused-but-set compiler warning").

With the issues fixed or annotated with __maybe_unused, re-enable the
warning not only in W=1 but also locally as part of i915 build.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 06374fc072d3..c704824e2a8c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -19,7 +19,7 @@ subdir-ccflags-y += -Wno-type-limits
 subdir-ccflags-y += -Wno-missing-field-initializers
 subdir-ccflags-y += -Wno-sign-compare
 subdir-ccflags-y += -Wno-shift-negative-value
-subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
+subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
-- 
2.39.2

