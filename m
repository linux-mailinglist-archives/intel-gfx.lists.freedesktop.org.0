Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C817F576E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 05:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F20F10E602;
	Thu, 23 Nov 2023 04:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A16910E03B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 04:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700714005; x=1732250005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWmfCmwoIG/Csxbq5vtPWi95yyf5M15C7/JS4fjeBv8=;
 b=cYwRKLqeyFDfbpnks6cVS22DdnQNrL8XWrp/cmne5+d7i9L4NVlzW6Wl
 MTlYnyB2mIDsb2ihcwnzp5R5ooAmU1feF/jFzPwc8PxNVf7KNJF7hZ55I
 LOW/Q5VZYefmfk9rmrwUD4lFg6+EZEEO48vFbEMqfVr/H9Lr3MbK70NFF
 SB3ffe0Ig/JtGj/PzLI1h0f3sdKLwrBpArADMn/Y3xQMi+oQDHsQSLT9U
 116btvAQVZrFLjWSwYdHE3Wmcl0fOZLdfExPw4z/ejEHUbN9AkJ5XFkAh
 C4uVE5tT7lF/X+jtrfcGqQJDO2i68RwoUFQpllbd0UcecD1Xf5Ls6lhvA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5336584"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; 
   d="scan'208";a="5336584"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="796223320"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="796223320"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:23 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:57:30 +0530
Message-Id: <20231123042733.1027046-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
References: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In helper intel_dp_dsc_max_src_input_bpc it is assumed that platforms
earlier to ICL do not support DSC, and the function returns 0 for
those platforms.

Use HAS_DSC macro instead and return 0 for platforms that do not support
DSC.

v2: Updated commit message with clarification. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1422c2370269..54306271f5c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1625,13 +1625,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 static
 u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
+	if (!HAS_DSC(i915))
+		return 0;
+
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		return 12;
 	if (DISPLAY_VER(i915) == 11)
 		return 10;
 
-	return 0;
+	return 12;
 }
 
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
-- 
2.40.1

