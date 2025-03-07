Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B58A571A0
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 20:25:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED4F10E1CE;
	Fri,  7 Mar 2025 19:25:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jslzf/Br";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD75B10E1AD;
 Fri,  7 Mar 2025 19:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741375552; x=1772911552;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=gZeOBaB5HDaUYIKn63YhxTFMDFZzm15MBVapFM7xBaw=;
 b=jslzf/Br13d53pJZMtShvmOjbj/9XPl9vZ+d4285Xtrtdj8H3dU5YEME
 bkb2LzOz/SpsqIVknlLDscWjVa2yurigxav+JOQ0QLl8WqUAXMY59SZeL
 XQfbd8a9t6fKm6GfpI+Ly6m0nM/WkZNjEWHwEwxvbojldYPlq+Pg1v9Et
 TlaaJQXuEkGkCFIy7IIkIxKhK/QnN8S63JkZqAqem0GA/Y+I6Z5GQYEfp
 gSIpEjn4+DV77W70wraSkEGpn7jUTEH8n4BD2dL0jhHgfyM0V/x4fGPIj
 9cUI/kxmvikDfKsOgA+FOiT2RduLEVEFA/5jTm35arxVMbikYiz5wPXFA Q==;
X-CSE-ConnectionGUID: +e/8l0UYTKS7Y3Abjyyl/w==
X-CSE-MsgGUID: 1Sm4uTMcS/a4ns80yECW1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42315903"
X-IronPort-AV: E=Sophos;i="6.14,230,1736841600"; d="scan'208";a="42315903"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:51 -0800
X-CSE-ConnectionGUID: pwwpL/T6SAK8tOCN6UpdjQ==
X-CSE-MsgGUID: HRsjhpFHT/GYgDc8Vf487g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="156622622"
Received: from tjmaciei-mobl5.ger.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.129])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 11:25:50 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Mar 2025 16:25:13 -0300
Subject: [PATCH v3 3/3] drm/i915/xe3lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250307-xe3lpd-bandwidth-update-v3-3-58bbe81f65bf@intel.com>
References: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
In-Reply-To: <20250307-xe3lpd-bandwidth-update-v3-0-58bbe81f65bf@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Bspec: 68859
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 39644ae6932047f2b83f0ae34ed93f73a100685f..ee3e2fbd4a42a232b58f8e2344c134f6a1db1ac4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -404,6 +404,13 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
 	/* Other values not used by simplified algorithm */
 };
 
+static const struct intel_sa_info xe3lpd_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 65, /* GB/s */
+	.displayrtids = 256,
+	.derating = 10,
+};
+
 static int icl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -752,7 +759,9 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
+	if (DISPLAY_VER(display) >= 30)
+		tgl_get_bw_info(display, &xe3lpd_sa_info);
+	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
 		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
 	else if (DISPLAY_VER(display) >= 14)
 		tgl_get_bw_info(display, &mtl_sa_info);

-- 
2.48.1

