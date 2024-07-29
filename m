Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25B793FEAE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 22:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B35810E47A;
	Mon, 29 Jul 2024 20:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbbgIf3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F95610E47A
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 20:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722283346; x=1753819346;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f7LIgdP1mSdBMOrrqd0LxAGEr0xm8KKHTAci4zk2iTA=;
 b=UbbgIf3Is2BCSLMxEPKwODcMo5yq9P4fLx2STYB/cbAy0Idc96UfOAxn
 Hl6KNiy/h4/nZ7doj9se1xFbsz3O+mKFDRcW/2uoUm89FoHFRWf3HXuQo
 pNXh3b1cCE6LStwyE5xiyCFl1GhkEiozucLti0UOCBItdOx9vMtju/J1S
 nrFoGhPiPgWnXB2w3vxXesQxnav7JobyTj+SCXWtr9Bw3q7fqoAnEi1PJ
 qn6Mb+9drQO0BqMmqsgrEUYqmWVDqD0MAshOi/2RnhopvpBP0j8xvaeIM
 gnNMSdIk3hauyW67i00ZdThYns/LOSQpZklTSFx6Kebf9Ddx1k2ttGwE2 g==;
X-CSE-ConnectionGUID: paNY3P99RIG4JLOYeBV/iw==
X-CSE-MsgGUID: zLVkosC9TUqFu+WCq+N8XA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="30731611"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="30731611"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 13:02:05 -0700
X-CSE-ConnectionGUID: zcNg6iXkQKKFTXXUtMrnYQ==
X-CSE-MsgGUID: VDtS3L7DQcOpdw9Pil4Zsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53978873"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa008.fm.intel.com with ESMTP; 29 Jul 2024 13:02:03 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Date: Tue, 30 Jul 2024 01:34:41 +0530
Message-Id: <20240729200441.2337924-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 73977b173898..5ef22a76c11e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
 #define BMG_DMC_PATH			DMC_PATH(bmg)
 MODULE_FIRMWARE(BMG_DMC_PATH);
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			DMC_LEGACY_PATH(mtl, 2, 22)
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.34.1

