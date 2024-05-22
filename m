Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECD28CC599
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8284210E2C4;
	Wed, 22 May 2024 17:34:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRQ/I61q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E353310E1C7;
 Wed, 22 May 2024 17:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399251; x=1747935251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2hd1oTsaBGWwB+YsagGLUrLw0dcd8lQCLG49MqNJDaE=;
 b=nRQ/I61q5i7LZuGnd6earwP/NKDvLTHG5Py88U6g40EjKi092so/59lQ
 k1tfCooCj64EYtix/4m+LuwlbpvHZ5MsqdrV6NPQ6BfujIRFqbZMSdpkF
 6dQlBjQrIuVtgHHcSfoHoI10gHj8nM9e1FXXqqOlaswDNu4Tf7r5JJAYy
 4KNUGxw71IPk1J70yhBmR7ZzgcT1qh0bO1Xtp3QFQaxPK5V2xSRuI/yq/
 5eMMd6yrcB1+/nZE3CjalsJKxUcr7wyvB703JgjU3K6HLl/tmc5WMz6tt
 G2JRj/eBYwVNIyXbFsiHBBTL4DnO48xZfU/19ylxjHPhR9GLeUbtN3ELN g==;
X-CSE-ConnectionGUID: D8EesIBwQXCx+P/7jLuSSg==
X-CSE-MsgGUID: UG5n/lpBSfuNu7KFdxIlSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053823"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053823"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:11 -0700
X-CSE-ConnectionGUID: +4kardNhStSFtN/oKzFWPQ==
X-CSE-MsgGUID: qAgjViehRPS1chfJCgS/9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425200"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 03/10] drm/i915/display: check platforms without display one
 level higher
Date: Wed, 22 May 2024 20:33:40 +0300
Message-Id: <78d5d326c4c89f1942f120655c279c9274e96bfb.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

The main change here is that the check for platforms without display is
now also done for GMD ID based platforms. However, without matches, the
end result is the same.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 03181bb79d21..f548a7b0ec23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -912,11 +912,6 @@ probe_display(struct drm_i915_private *i915)
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int i;
 
-	if (has_no_display(pdev)) {
-		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
-		return NULL;
-	}
-
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
 		if (intel_display_ids[i].devid == pdev->device)
 			return intel_display_ids[i].info;
@@ -930,6 +925,7 @@ probe_display(struct drm_i915_private *i915)
 
 void intel_display_device_probe(struct drm_i915_private *i915)
 {
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
@@ -938,6 +934,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 
 	intel_display_params_copy(&i915->display.params);
 
+	if (has_no_display(pdev)) {
+		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
+		goto no_display;
+	}
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
-- 
2.39.2

