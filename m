Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B817E59EB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 16:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FB610E79C;
	Wed,  8 Nov 2023 15:21:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A7F210E79C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 15:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699456897; x=1730992897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TgfJ9s0G/3Mp98gO77prq6pZupgTkMTYmzxBdvVjPRk=;
 b=oDhfnXei2Zrlq4+2CsRHc4xH9sp67Dp3OEgZgX49fLZsr9f8jF8WLjng
 XSW4xFV9UsXfeot2dL232q0SUu68DW3XUshrQ29/WjGRuH0bO1RD9kDnN
 /KfaTIuvGEFAcBaVpdrlB2XH6nl24B1/GwW07Ijwdzr0eOtM9lm7Qv4tH
 Tx+hPCY0QdC6paYDa9XrOuO8fCGtfJ+Wr8t1+hl2CzB+OKc2oNmjG3rYl
 h1rOAlUV6tjg44U8LfUBMAVB1f7gZkXOwNgweU9/KXNN8oLrp3WvjzhsN
 lO++iwby/9HL84zREH2fqZWUNj4Wtqnt7OGEQ0rDBm3C507Sp9ixiGM5v w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2814809"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; 
   d="scan'208";a="2814809"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 07:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="833515976"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="833515976"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 07:21:33 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: 20231107041740.3718419-2-ankit.k.nautiyal@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed,  8 Nov 2023 20:45:39 +0530
Message-Id: <20231108151539.3804191-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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
index 5391b2a83405..30ea4820b210 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1569,13 +1569,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
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

