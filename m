Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B4EC70B6D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B561C10E691;
	Wed, 19 Nov 2025 18:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UtjORIXb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BAC10E690;
 Wed, 19 Nov 2025 18:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578425; x=1795114425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uVzV1Cmh+nSKYeXukTKipf/TCDUYP5um/ghfQ55WXng=;
 b=UtjORIXbQJpVEdNGUHJqEmrn63u1qry56PQQziNOC/OSJKl5sFSZgoFM
 dzsjMi3Wlrgz0O6Gg7m1CpBYxG16xwSLDUpqMYDBx9pv68x9sdB9rt8kh
 wz54seFpZzT1p4l5ilM/4dmbVRfag+p+B//A7rlAdeOzcsb5G+umGIdm/
 im4PICxiq6edEmcgj5pYAsLlibViqk6BMJEYSm5Iuaocn9VMrY/mRBn/K
 1lSDA5TLEpTCsSpQ7DJQlSUXwOghRLjkr6Xq0suXRISHUrlL02bGdFXLI
 Qr0cOSMY0NDEeOHhrlvJNW6V++kPriR6LxPwL/PmXciqRmW5PnSul/Qdv A==;
X-CSE-ConnectionGUID: VQ6QjCuzReenvCQFUM9suQ==
X-CSE-MsgGUID: 88EB6BVWT3Ca6JM02ASbFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65672404"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65672404"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:45 -0800
X-CSE-ConnectionGUID: zcCpChcuTBimb31lWQhcJA==
X-CSE-MsgGUID: +FEVulUtTxK0DoV2K4fkhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196279794"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 10/13] drm/i915/gmch: switch to use pci_bus_{read,
 write}_config_word()
Date: Wed, 19 Nov 2025 20:52:49 +0200
Message-ID: <5c432540e254108bf73dbdec347d69ad87682fc9.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Switch to use pci_bus_{read,write}_config_word(), and stop using
i915->gmch.pdev reference for the bridge.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_gmch.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 30f489417064..d43b5d89cae7 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -18,10 +18,11 @@
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 {
 	struct intel_display *display = i915->display;
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
-	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
+	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctrl)) {
 		drm_err(&i915->drm, "failed to read control word\n");
 		return -EIO;
 	}
@@ -34,7 +35,7 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 	else
 		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 
-	if (pci_write_config_word(i915->gmch.pdev, reg, gmch_ctrl)) {
+	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctrl)) {
 		drm_err(&i915->drm, "failed to write control word\n");
 		return -EIO;
 	}
-- 
2.47.3

