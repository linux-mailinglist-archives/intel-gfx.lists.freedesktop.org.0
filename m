Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CA5B2C906
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 18:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC8510E633;
	Tue, 19 Aug 2025 16:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbPnn7bE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3390210E633;
 Tue, 19 Aug 2025 16:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755619490; x=1787155490;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BTzTvP10OhdUu217VlBgQhxz3ah5smuECrmxEligkiI=;
 b=jbPnn7bEgOr5ZxiW/o5K9aCAoQUE2TKpm5hYWregtMC39ISeEF27eyXP
 73KIZKYZEwSFwfsjKwG8426IT4wRC/iVsRIIePJIwdxlozZie2f+1TFaH
 SZoNbSZegjv/jzh4bYkJ7plNfvLPde0NB17+UlGtDt0jPEQ4Eg4draIYR
 g1JPu/VbH5+VKz5s6hzFHntbT6dezI88IBHZzu12aCCWJP/NVXbdgBw4e
 30TIKXdRfyse2nKnvlfCQo7m3GEiCzt5G3cvRceSDmmQTs6QE1hb8OwfS
 +4wMcMgGaNBgKQp85PmySHzO8/Mxx+qWGSvOzSSiVOYgDXlubXh8O/Hic w==;
X-CSE-ConnectionGUID: Ho3ab9TpR72pGpq52SMwgw==
X-CSE-MsgGUID: 2Ml029CKSaScYZh4BfwKdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57822865"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57822865"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 09:04:50 -0700
X-CSE-ConnectionGUID: kNcJpzU4R/GdGE2aV2AnTA==
X-CSE-MsgGUID: 92h5hchHSg+PAE5d/OAjUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="172122263"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 19 Aug 2025 09:04:48 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/backlight: Fix divide by 0 error in
 i9xx_set_backlight
Date: Tue, 19 Aug 2025 21:34:39 +0530
Message-Id: <20250819160438.145734-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

pwm_level_max maybe 0 we do throw a warning but move ahead with
execution which may later cause a /0 error.

--v2
-return if the warn_on gets hit [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index e007380e9a63..3b14f929825a 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -236,7 +236,8 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp, mask;
 
-	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
+	if (drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0))
+		return;
 
 	if (panel->backlight.combination_mode) {
 		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-- 
2.34.1

