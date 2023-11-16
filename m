Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BC17EE4F1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 17:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7783E10E625;
	Thu, 16 Nov 2023 16:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9977E10E638
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 16:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700150888; x=1731686888;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r1LARUgnifE+d91t0Dwn/wwyhodoZ154k78BURBl55o=;
 b=R9uEAC5sR6OwNuh33/RAZgkQHe/Eyg3aKmUkdFT2qmZQJ5ry4Mgv+hRI
 81o+0jTq9tQP1iJA/hz/TCh+uV8Fr2LwftjnDlwjoeJReMMlN4FiRVCbO
 temWvXlSXBSOyZX1dznw826GfTY4u3wmpOgFQ3qoVk3db/eFcCrhPWPQN
 RpaSauFFRoepZSzJZv8YOY7r1uzB66QvwdTibyyzPaMUrRzW834qPnxMj
 MStVLlGDcxwHCvleevXhW2N1uRQPfx01W5FtcQXdRwG+z+ClwsFc0SwZv
 BFoQXL9/JL6ZMgXNkmehEtjoANt4HKxXnmDulFW0ptxRQiFJQIfxiOB5s g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="389974149"
X-IronPort-AV: E=Sophos;i="6.04,204,1695711600"; d="scan'208";a="389974149"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 08:07:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="882794253"
X-IronPort-AV: E=Sophos;i="6.04,204,1695711600"; d="scan'208";a="882794253"
Received: from tjlunife-mobl3.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.34.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 08:07:44 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 13:07:32 -0300
Message-ID: <20231116160732.37923-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231116160732.37923-1-gustavo.sousa@intel.com>
References: <20231116160732.37923-1-gustavo.sousa@intel.com>
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

