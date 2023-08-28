Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6791678BACE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 00:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D7610E0FB;
	Mon, 28 Aug 2023 22:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBD210E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 22:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693260512; x=1724796512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GDf7xksZeykSw1Ao6hDRTEFjw1/rGRA9v+F24PGhzY8=;
 b=Wg07dAQvp22WH81D/tK/pkRXUOX7xLKsxoNd2OPfdDS91GG/5FPFEaY5
 x9J4I/W1hoTGdD2t1eOjuyXateoclmcsxu3xT2EEPIKjnF8jXHxq2KX6W
 AMnbSlMonU+vtE7FjjY9TLNH6cQVTCT/foQHJRCTU8O4ClQT0jFH1WHeW
 VXCJtx2IpfTIlF+5k8FilYmAXEL++0bP8+lCEl8fhLkbTQjvRP8wLNQPS
 VWSvmHJNTHY7Kbs/bSWUk3mb3XYoCIH55gH9v6x6wsaslmD2r2kbIpLuw
 QJSzDdyMhvChDxJZ9NcWKupO1Hrlzbn1Lp++BOHN33wnZIi4LEuGdXmvm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="365420884"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="365420884"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 15:08:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="741575540"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="741575540"
Received: from kelvin-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.140.209])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 15:08:31 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 19:07:56 -0300
Message-ID: <20230828220756.119766-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230828220756.119766-1-gustavo.sousa@intel.com>
References: <20230828220756.119766-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] [CI] Test MTL DMC v2.16
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

NOT TO BE REVIEWED/MERGED.

Hardcode DMC path to i915/mtl_dmc_ver2_16.bin for CI purposes.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1623c0c5e8a1..a7667302a68c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -93,7 +93,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_16.bin"
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.41.0

