Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E02E89B718
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 07:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 109D0112068;
	Mon,  8 Apr 2024 05:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Juh0Jipv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E4510F5D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 05:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712553269; x=1744089269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7NFdnI8RpQ0eCx8hWYOR7faGXoLhbGblNz/QS52evLA=;
 b=Juh0JipvkzaFZ6hM3E4ToEMvpdrwcwrQlllTTmj+JKwiQN1DmraNRftQ
 A741Lp7o34vxyqW/heIPX4jtFRQuRHjCw9nkeT5cwkmGXFu0Vepl3Tjzb
 zDgMwY58pJWd6v/dIBr4rP7U8xj3KIMBCW8ipVPBsdkJCWSD60UFZ3WO+
 B6s/9RIi/a6aAZq31kKiDinO1aUQ6OZtnZiGIE8LrCaJCksvJyLg6ES9u
 w8F+4tSqMQh7NUCev2lO+aiWxmXnAFyEEyNlyJUTpgTz3f9wmgeZvNcha
 zM8100sF+GaERepxRDHkDukfNUI4o9oSvyPb+ZAvn5u57D7NE8aUQcWBk Q==;
X-CSE-ConnectionGUID: N4LPEc21StSS+cXANvCJMg==
X-CSE-MsgGUID: ERcrhs7oTN+VcDAFwNxhzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18429010"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18429010"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:29 -0700
X-CSE-ConnectionGUID: y2nz0l7fT2q9AM9Po4P3lw==
X-CSE-MsgGUID: e+gGykWASDSoAR/+Xj5AMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24401486"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 22:14:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/lspcon: Separate out function to set pcon mode
Date: Mon,  8 Apr 2024 10:35:57 +0530
Message-Id: <20240408050558.865396-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
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

Currently lspcon_probe tries to probe for LSPCON and also set the
PCON mode on the LSPCON. If any of these fails, it returns fail
resulting in error message. So even if there is nothing connected to
LSPCON port we get error messages for probe failure.

Separate out the function to set pcon mode from the lspcon_probe
function, and show the error message only when the set pcon mode fails.
Do not show error message if no LSPCON is detected.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 24 ++++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 36e8d9fb2bbb..16ee0dc179f7 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -277,17 +277,22 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
 	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
 
+	return true;
+}
+
+static bool lspcon_set_pcon_mode(struct intel_lspcon *lspcon)
+{
 	/*
 	 * In the SW state machine, lets Put LSPCON in PCON mode only.
 	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
 	 * 2.0 sinks.
 	 */
-	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
-		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
-			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
-			return false;
-		}
-	}
+	if (lspcon->mode == DRM_LSPCON_MODE_PCON)
+		return true;
+
+	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0)
+		return false;
+
 	return true;
 }
 
@@ -671,8 +676,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 	lspcon->active = false;
 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
 
-	if (!lspcon_probe(lspcon)) {
-		drm_err(&i915->drm, "Failed to probe lspcon\n");
+	if (!lspcon_probe(lspcon))
+		return false;
+
+	if (!lspcon_set_pcon_mode(lspcon)) {
+		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
 		return false;
 	}
 
-- 
2.40.1

