Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0007ED9A1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 03:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A15710E242;
	Thu, 16 Nov 2023 02:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88E810E242
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 02:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700102071; x=1731638071;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dxAGNgBlYk4lW38K+QnTFbiZFOai6sp0JU6pq9gwTLc=;
 b=iat4f3khQvxYlh1f+zOpNQYI7Xb5WBVpoVQgPkt1U2qZu7ScsN9O+gV1
 7uPPWV1eeNg9/zPB/Hx7IWDFiCKtIhG4Dorc5usDsjaBXikkh5sKy/x/5
 CUijZPKaRoGe1mD5Y+X4PJNyYiABkD2JAgy0m8dKAyFOapZ6GGU4R5nPu
 Ag38foAswoOJxq3Z2+Gywmh8vjFBRMcGc4hAVy4k+ApDGY0tmbdxtkrEB
 iGDWnZ6Crk36IJNOKwse/lbFzSu7V7/2ABOdjxj7SYJ9Q8qCJGKTMRQja
 BAhv0FtxIlBNXlK9Na1dDAUTg+ekWaL8/2B1YC5n3IZ6c9lm+xHtFkSKq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422090134"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="422090134"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:34:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="888766639"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="888766639"
Received: from wbardall-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.92.64.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:34:30 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 23:34:08 -0300
Message-ID: <20231116023408.114051-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.19
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

The following changes since commit 44a9510c94ac0334931b6c89dd240ffe5bf1e5fa:

  i915: Add GuC v70.13.1 for DG2, TGL, ADL-P and MTL (2023-10-13 11:34:26 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware 817619ea70a74598b4216dd25c0f49f61b09309b

for you to fetch changes up to 817619ea70a74598b4216dd25c0f49f61b09309b:

  [CI] i915: Add mtl DMC v2.19 (2023-11-15 19:36:22 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] i915: Add mtl DMC v2.19

 i915/mtl_dmc_ver2_19.bin | Bin 0 -> 52476 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_19.bin

From 977126cf47573f6a005f2dfe3cfb25e2dde87c05 Mon Sep 17 00:00:00 2001
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Nov 2023 23:33:58 -0300
Subject: [PATCH 1/1] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.19

NOT TO BE REVIEWED/MERGED
Hardcode path to DMC firmware for CI purposes only.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 63e080e07023..1e56a02cafdc 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -93,7 +93,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_19.bin"
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.42.0
