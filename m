Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 600BBC70B76
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A6410E695;
	Wed, 19 Nov 2025 18:53:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vfd/L7hX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B2B10E693;
 Wed, 19 Nov 2025 18:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578439; x=1795114439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G9LsrSCsfV+8qn4XY0h901XX6FxkUqjKhqUM8f1yvak=;
 b=Vfd/L7hXHspZXZ+Umsmw7qvwe6UtfLTWatYvYZPeaJhgGPsN+5iBfeqA
 TDuDv+jXVKwtjgv1mRBs1tazGWOalYySh+m47Pe3IkVg36YafTSdgHqw3
 VTJ8qH4CftCveKU0V1ZjhBzlSOsbMfzpg9a15mudVL5PzMOiJofQrkaxs
 snLSpScuP6cl3EvpTSx7d+yPEZgUig9xep9KPzinaGDHPtX5LuJzY0V7W
 BtHcOkcr3AAQAQwxRwN1um60pfZwVNjimqMPwCiLd33Ir8u44eMbt6MLR
 QD623p0KnGjr8e3r8uLb5ZPVIxBhcnrcIVLZx3udbpf8R7RFOhZZZi3eR Q==;
X-CSE-ConnectionGUID: uLSXU+g4Sh2oDTxIjidwkg==
X-CSE-MsgGUID: /1GsKGcDTjO4jQ/+5mMKpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76991085"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76991085"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:59 -0800
X-CSE-ConnectionGUID: Pri9pfvTR4OsWLs1eH3iWA==
X-CSE-MsgGUID: ghE1D9+GTNOxgkoF8CZ5Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="221782972"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 13/13] drm/xe/vga: use the same intel_gmch_vga_set_decode()
 as i915
Date: Wed, 19 Nov 2025 20:52:52 +0200
Message-ID: <f4121e6c70bac6c26ef3cf51aaf72822f2cb2d54.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

Drop the #ifdef I915, and use the same intel_gmch_vga_set_decode() for
both i915 and xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 5e516c79e2f7..c45c4bbc3f95 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -95,7 +95,6 @@ void intel_vga_reset_io_mem(struct intel_display *display)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-#ifdef I915
 static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
@@ -135,13 +134,6 @@ static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_
 	else
 		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 }
-#else
-static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-{
-	/* ToDo: Implement the actual handling of vga decode */
-	return 0;
-}
-#endif
 
 int intel_vga_register(struct intel_display *display)
 {
-- 
2.47.3

