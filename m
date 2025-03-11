Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C4A5CB90
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB68E10E606;
	Tue, 11 Mar 2025 17:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HzxzloKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B6510E5EC;
 Tue, 11 Mar 2025 17:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712758; x=1773248758;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=4j5sUcgMGeEFB5Oelujd1JbDFjdR3oavyRdB3CoZWIs=;
 b=HzxzloKYRivOSgEHxrFdc8JyMoBDKA1T8tkg1dl+VC5+TcvqHeeqW1dU
 bfubcRQc89BzWzLNViWJJUM+rSSgWC+bniIhYDZH3zDVt5RR7wzVzSM1e
 0oMxyY6KHfe9kZjETVqXgQNZpVgodFv3raX3zksWEiq9DtrgzMTY+6nvO
 aoLmvY2D0Yl+ZvCjP0+9Tvqju6nKi0lW4Pl5AIGpwF4LeUV22xOqmPVsE
 UfyivINelXFavlI3Dv/sK/mL7OlLm3DrrfMCxGMhJNJuKsd2pR6fh3vQJ
 atFhokW8i7XpEw4WCa4fVYKKvhkYTKiDxdpEM1KpkZgP33q/mmLTEvwiz w==;
X-CSE-ConnectionGUID: sxVEayXQQ5+Zs2JSxxCHWQ==
X-CSE-MsgGUID: P0IV7xwZTaaCNhB4mAJguA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53405671"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53405671"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:57 -0700
X-CSE-ConnectionGUID: mJc6sPE2S8Sfbj22SD6jLQ==
X-CSE-MsgGUID: EMFiB0aGTXOsOFVqFOVzFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157581934"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:56 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 11 Mar 2025 14:04:52 -0300
Subject: [PATCH v5 3/3] drm/i915/xe3lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-xe3lpd-bandwidth-update-v5-3-a95a9d90ad71@intel.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
In-Reply-To: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
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
index bda080d9ed4cfd1804fab818ac489dbe0bfaf640..dc7612658a9da9493ad9068f28126c76d187f2ea 100644
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

