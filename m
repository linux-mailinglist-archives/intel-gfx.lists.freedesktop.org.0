Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D0985E263
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 17:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C8F10E7DF;
	Wed, 21 Feb 2024 16:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fufFUM/B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE6110E7D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 16:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708531359; x=1740067359;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w3WsOAd3joHk3+5Ve9mrFrjTDeo3MOblNr16kh5xHVk=;
 b=fufFUM/BJSknBgF46fJ1iIAQ7nBr0k9D+dbPTtX5kVizq7xuZoPSzuTn
 BLGbUB/affm7+rXZWdlaOc1GQ1WSyW86aatQxwZRd1GwAfE9s84AnBNK1
 3Bl+5FWOvqGiSWYbowqnv/RyvX8VavcMP+eBOfyrrtBboaHFgJmmhyCQn
 0s9XVbCk6wG9KdZFZ4j5n7JBXJFbwq0qnch7XfoDfIZ1IeIB/M82ZMBt8
 VNo21TqrsUQXntzywmjoePiHWKOrcnoizVEny4PqtiC3yB74Hv7byc7+w
 vwimcCMC4hCZijzqhYBgvHvqI3M7tQtBDfXHgYxwjRPH+5h0DaPPo0GP3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="28138147"
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; d="scan'208";a="28138147"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 08:02:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,175,1705392000"; 
   d="scan'208";a="5486573"
Received: from hrshah-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.128.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 08:02:24 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/1] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.21
Date: Wed, 21 Feb 2024 13:01:48 -0300
Message-ID: <20240221160148.179024-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240221160148.179024-1-gustavo.sousa@intel.com>
References: <20240221160148.179024-1-gustavo.sousa@intel.com>
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

NOT TO BE REVIEWED/MERGED

Hardcode path to DMC firmware for CI purposes only.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 835781624482..32cee5cd68e5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -93,7 +93,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_21.bin"
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.43.0

