Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0668DC2D6D2
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBA910E458;
	Mon,  3 Nov 2025 17:19:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="biYgvomy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DAA10E458;
 Mon,  3 Nov 2025 17:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190397; x=1793726397;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=V4hvwNPOwGlO9pPLOTp5nvo17RRjh4hGvkN2gFA3tOY=;
 b=biYgvomywqtl/h1ebyE34czcHC5NHlgGI9u4Y8SoFUJdQFB6ChyiLwTk
 jU/+Bm1VWVoh0b9PkF+AsRgZW12CGGLMnsg/1ed1T0tXi1E+uTnqEpSQy
 D+3EUpxkaG9J3hc50AoihLD5P05ZHFc/Ewhy5Ckea0Lnad2yk2jbGahZf
 Fbd8IUApEA9jJqnovjnIu1BMFQCY/I93KFxEaCMI3rFs8TXKnpLY00We6
 XwlagrI87snWv8PXZ4b2Bj9/UMfbQPQO4JujqD4ApU5wLute7saJ8Pljc
 Fw+4rmjiN6QJc97tWvqvmRvsf9Gbtx2pvmWSSu7t2B1DP65jSn39ExAMz w==;
X-CSE-ConnectionGUID: hrstrSFiTTK9nQ9xjrR6zQ==
X-CSE-MsgGUID: PX8AtFq0T7ax7RRhsZ6kcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309978"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309978"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:56 -0800
X-CSE-ConnectionGUID: WhLv9/6HTR6MLqzNV2K7nQ==
X-CSE-MsgGUID: cXg6/kvnQzClUw+kb/VCKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606274"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:53 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:57 -0300
Subject: [PATCH v3 06/29] drm/i915/xe3p_lpd: Horizontal flip support for
 linear surfaces
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-6-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting from Xe3p_LPD, linear surfaces also support horizontal flip.

Bspec: 68904
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ba1bf0bd4c55..bc55fafe9ce3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1748,7 +1748,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (rotation & DRM_MODE_REFLECT_X &&
-	    fb->modifier == DRM_FORMAT_MOD_LINEAR) {
+	    fb->modifier == DRM_FORMAT_MOD_LINEAR &&
+	    DISPLAY_VER(display) < 35) {
 		drm_dbg_kms(display->drm,
 			    "[PLANE:%d:%s] horizontal flip is not supported with linear surface formats\n",
 			    plane->base.base.id, plane->base.name);

-- 
2.51.0

