Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7E689A514
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A9110E7C6;
	Fri,  5 Apr 2024 19:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+Jrd6Gl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25FD10E7C6;
 Fri,  5 Apr 2024 19:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345876; x=1743881876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nG9QKp5KMQBqFQtHVYf/GOj5YIWR7g4Yrw424XjXu9A=;
 b=M+Jrd6GlUuMYccy4GWc8Rs/5+a8cvkwy8DbdXVxdhNPNU2ux4WbpHcpr
 2oPRgXJmazlPeq5kc+OgudX0Lv2/EFEvK872jNrSGI9rbMbeXxxIK02Wn
 zCfvNIKjyBenIQ//EapJghj4zCz3ydi5svbAE6VqXXIbyl3zvaU/Bd/Fi
 tWXL1lRwDA3oYZPf8U4Eqr7/leBGEGvsgGIFBfikKZ7o+uV70Yjp6A/3H
 XtF+fsNeRmaDt4UNuxI8AdTtnXB2iWq49HJn42Xyr775mkJSEuGi4FoAf
 zv6uv8meyXwX9QgkZzzdK/jN1q4rsaKY/3GfuT/VWkWN4+ug3oBLzcklP A==;
X-CSE-ConnectionGUID: +FXtEsbrTEGs4o9JOBpdlw==
X-CSE-MsgGUID: WvGdyeWPTlGWoPI60cxIaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7877801"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7877801"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:55 -0700
X-CSE-ConnectionGUID: ZIBlpanJTsaaBMI64/P4Hg==
X-CSE-MsgGUID: lM1PKCODT/mx3Sz0LpGjQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19107774"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:37:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 1/6] drm/i915: use IS_JASPERLAKE()/IS_ELKHARTLAKE() instead of
 IS_PLATFORM()
Date: Fri,  5 Apr 2024 22:37:38 +0300
Message-Id: <7ca5fabac6a6f5ac8e102b84d1e28502e79296f0.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
References: <cover.1712345787.git.jani.nikula@intel.com>
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

Avoid direct IS_PLATFORM() usage when we have the platform helpers.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 39e0ae6734ae..4d21ce734343 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1726,9 +1726,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		else
 			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
 	} else if (DISPLAY_VER(i915) == 11) {
-		if (IS_PLATFORM(i915, INTEL_JASPERLAKE))
+		if (IS_JASPERLAKE(i915))
 			encoder->get_buf_trans = jsl_get_combo_buf_trans;
-		else if (IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
+		else if (IS_ELKHARTLAKE(i915))
 			encoder->get_buf_trans = ehl_get_combo_buf_trans;
 		else if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
-- 
2.39.2

