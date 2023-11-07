Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5D77E3481
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 05:23:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C19A10E146;
	Tue,  7 Nov 2023 04:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03F210E122
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 04:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699331020; x=1730867020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HlHRc7IYf3v8BrRXNqaX1C91t96i8UaxvEZrGwdspXM=;
 b=TXftLPtzdxRAYqDSpPxdD0EX7Rcj5B5zjIRvEb6xkVdQQfWSq6VBmdc5
 ksS6d3PN99TV2kMpLnnGz3UKSt6V6pfNNGREWh4Bny2ECLN67ZmmJPAwX
 SO7AvsJnNKb+g1nkZTCunBILPvaus2mTYOlMYAoYFTCLLRWL5n7UoYRAG
 Nc9yfKeW63qcENVmPjkNFWbeBbhwdhZvogTqkgLi7SKmcZ9nODW/kMUl4
 DlUIJJqI7MixV7/fi35erAPK2IuJY3ckDacS1SqYKCR913iMM/biZcp0d
 pyCVx0iFwk5TRG9R5xiPyiiB1FVEWxtvGs6ZdXdHkpXKbsNCAQFa3XnsJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475667574"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="475667574"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="712435775"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="712435775"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 20:23:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 09:47:37 +0530
Message-Id: <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
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

Return 0 if platform doesn't support DSC, and return 12 for Display ver
12+.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1891c0cc187d..d9e1d15a386e 100644
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

