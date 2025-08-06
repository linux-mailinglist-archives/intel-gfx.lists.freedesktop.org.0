Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9BAB1CA19
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C1510E7BB;
	Wed,  6 Aug 2025 16:56:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nX1j8ODr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01FF410E7B1;
 Wed,  6 Aug 2025 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499359; x=1786035359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOsaQU29Pv9pctZNiupCgDVpZwu8oUtHHtQePgYC7bo=;
 b=nX1j8ODrzu4EQRJp2/282gNS9XotjEBuhyVD9aTed+E9zzRVk9/6u9cu
 7izG84My8qI5mBQHBY9Lomin4NuRp4TiLcDBbHPE5vvGfyNEq21ku/NEW
 26AURY8aRmVrqoLjwWizAQpFZYMIuk3oGhwdtCPQr8S2EM+E/kkv5HE1V
 X+6FW3Urwa7jPCHwx/nkGGPrwsuz/5L5B6vjT2C+/nW2KhvJVRQGPupIf
 T10QXDeieDcTLlnby6cG23+uoNlGdPuVVGVbqOdsegCG9rBKw62Jk5zHy
 vreAC3TLichKTdYxj7TKrVJq6ETJiv1BnSqGH5MFSzPNnsx48rhrCr6Vp Q==;
X-CSE-ConnectionGUID: HjVLj9MRTzKc2C3CYtHqQQ==
X-CSE-MsgGUID: +yICf9YHQ8SIH8owG++Klg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="60455954"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60455954"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:59 -0700
X-CSE-ConnectionGUID: hOHA+1WVQMiYZvfHaKrhqQ==
X-CSE-MsgGUID: 0rmeP+vQTpGSaUE6VhRzJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165164774"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:55:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/15] drm/i915/gmch: pass display to DISPLAY_VER()
Date: Wed,  6 Aug 2025 19:55:09 +0300
Message-Id: <1f951102b3d073fd58c5211f399750aa80b51548.1754499175.git.jani.nikula@intel.com>
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

Underneath, DISPLAY_VER() really expects struct intel_display. Switch to
it in preparation for removing the transitional __to_intel_display()
macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_gmch.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 5346b8dda79a..f210c9655b53 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -148,7 +148,8 @@ void intel_gmch_bar_teardown(struct drm_i915_private *i915)
 
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 {
-	unsigned int reg = DISPLAY_VER(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+	struct intel_display *display = i915->display;
+	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
 	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
-- 
2.39.5

