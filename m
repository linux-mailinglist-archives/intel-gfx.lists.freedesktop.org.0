Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B42AA387BA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 16:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE9910E50E;
	Mon, 17 Feb 2025 15:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JEH7LevP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2635B10E500;
 Mon, 17 Feb 2025 15:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739806573; x=1771342573;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IZZO/pqcGv/pbXhlTUd1739z62XU4lqY714ohUJrK9s=;
 b=JEH7LevPRFoFQg+OLIufdR3uyndXkndskT6kA3RUxa9YA5TjsEXLdAWI
 wGJQkjCtWrfy74zj0ZXhbvmTzYSsifz6im6YTeMxjJK6PnCHMvQiT62U8
 8hbhkNtXWIxCLNsuIhAM0vMnxmIhm5TrO3paMWHisSGVDk4WcoLCdL+7E
 haL1RwgcUWPp7Y52v+fG4oAlle7cMYw2EPtNcOofORCJskM4vqCQNVylK
 kMn7iHxWZh1TmJnGyRwBgdg2PnPyTapL9QvtPKsbPKQH8YMV1iQAMUAGg
 PkFZtewnfmW5FJrhPRDxArVpjPgZTlLY/0WIL6ap6uLWXRLVm3+5WYg5z w==;
X-CSE-ConnectionGUID: /gEqT0JnRTGWuY9qnykoqw==
X-CSE-MsgGUID: qDLnw0hRQrmMLpywHNWhFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="43321634"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="43321634"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 07:36:13 -0800
X-CSE-ConnectionGUID: jfyjwPXMQV6To1Sd6ozcmw==
X-CSE-MsgGUID: yhfDfDd9TiqihvibLlurGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="119258652"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.142])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 07:36:11 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/i915/xe3lpd: Update bandwidth parameters
Date: Mon, 17 Feb 2025 12:35:25 -0300
Message-ID: <20250217153550.43909-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217153550.43909-1-gustavo.sousa@intel.com>
References: <20250217153550.43909-1-gustavo.sousa@intel.com>
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Bspec: 68859
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 51b82979a8e4..32096d3c4b9f 100644
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
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_display *display = &dev_priv->display;
@@ -759,7 +766,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
+	if (DISPLAY_VER(display) >= 30)
+		tgl_get_bw_info(dev_priv, &xe3lpd_sa_info);
+	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
 		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
 	else if (DISPLAY_VER(display) >= 14)
 		tgl_get_bw_info(dev_priv, &mtl_sa_info);
-- 
2.48.1

