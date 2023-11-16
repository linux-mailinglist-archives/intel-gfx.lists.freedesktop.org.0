Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A708F7ED9D1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 03:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7062210E249;
	Thu, 16 Nov 2023 02:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A34E10E246
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 02:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700103539; x=1731639539;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r1LARUgnifE+d91t0Dwn/wwyhodoZ154k78BURBl55o=;
 b=SYa0YzsDdLCTzf4uOVsqFW6Rd9Kj+MFzTV1eC3RSLm6tlX1j2YyKBxLx
 KCCeV1Bi5F2OitAKBfMIFFdPYaHdvp4oH7qjr797bvzmZOEOWCbnSDbTI
 fgQV45AUM5LI5PVKu1Q3nF/NFckWQb5E1Js4cDJZjNbbZO1VQe78LX3a6
 g9l5DAOrVDF/QpHp/jBD2dDrXaEseGOWOypGBI5HXxY03LIJ1RStxLS2C
 UDwattFSBxla/yzL5w+A6AcCiiYXhBs82IsGhvPzR0jFodWfSdqK+6+HQ
 M0M7gHe6MO8Iz+UqDylu6HdwKQdX5V70S5VGGHDQCtuSl7dn8JbEqyZib A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="455291851"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="455291851"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:58:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="882592726"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="882592726"
Received: from wbardall-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.92.64.35])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 18:58:57 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 23:58:40 -0300
Message-ID: <20231116025840.118378-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231116025840.118378-1-gustavo.sousa@intel.com>
References: <20231116025840.118378-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] [CI] drm/i915/dmc: Hardcode path to MTL DMC
 v2.19
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

