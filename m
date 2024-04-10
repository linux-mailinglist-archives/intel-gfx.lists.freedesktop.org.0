Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E11389E85F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 05:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3E410FD8F;
	Wed, 10 Apr 2024 03:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WB49/6rm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7C810FD8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 03:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712718869; x=1744254869;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8euM0pXgk1EXABtcYN/m3sFssQtAlE+Rfabf50AYnro=;
 b=WB49/6rmq9sMHrArW0F9qup9sUBKfp1wTVQGW9t2z7u5yDfqwqsWQsR/
 RSwZgKrYGOo7MyGLmqDi1pWNwQBhXRvlZegp5yEVVxc/pgNJ5v7intImK
 Nz52hI28vk68uzlJZE6lqeeKYFKLB3xB8ClGfFzwYKXO9Y5aOzmOziC8P
 Z6V2WojB13acYZcrKFguYKZQAebHwlUzwId2R1yP6nEplrjL3nkHX4VOt
 papK+eDUrA4pe1kNZjqzGajYpnXdGPxeArszyaLUEXxqAUdtUDv8kwipV
 wZHf+j8hu+lsUDqR5gEmR6WKjqpydfTue9waBkvY0mf7wY9TvvSrROgX+ w==;
X-CSE-ConnectionGUID: 6Ja07Wv0RVyqusnpAWtlIQ==
X-CSE-MsgGUID: p2UyVsJtSsyl5KvtBtvO2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="7919251"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="7919251"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 20:14:28 -0700
X-CSE-ConnectionGUID: ceAfl4tgRFeP0hFnOOTiBw==
X-CSE-MsgGUID: s+xbr3unTB2QSoAUIjBp7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20302015"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 20:14:27 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/915/lspcon: Reduce dmesg errors during lspcon_init
 failure
Date: Wed, 10 Apr 2024 08:35:55 +0530
Message-Id: <20240410030555.1135615-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240408050558.865396-4-ankit.k.nautiyal@intel.com>
References: <20240408050558.865396-4-ankit.k.nautiyal@intel.com>
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

Currently lspcon_resume calls lspcon_init and in case of failure we get
error messages from lspcon_init and then again from lspcon_resume.

Just have a single error message in lspcon_init.

v2: Add the relavant info with each error, and avoid mix of dbg and
error messages. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 16ee0dc179f7..84d953496098 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -680,23 +680,27 @@ bool lspcon_init(struct intel_digital_port *dig_port)
 		return false;
 
 	if (!lspcon_set_pcon_mode(lspcon)) {
-		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, mode change to PCON failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
-		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, DPCD caps read failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
-		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
+		drm_err(&i915->drm, "Failure: LSPCON init on port %c, vendor detection failed\n",
+			port_name(dig_port->base.port));
 		return false;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
 	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
+
 	return true;
 }
 
@@ -718,13 +722,8 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return;
 
-	if (!lspcon->active) {
-		if (!lspcon_init(dig_port)) {
-			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
-				port_name(dig_port->base.port));
-			return;
-		}
-	}
+	if (!lspcon->active && !lspcon_init(dig_port))
+		return;
 
 	expected_mode = lspcon_get_expected_mode(lspcon);
 	if (expected_mode == DRM_LSPCON_MODE_PCON)
-- 
2.40.1

