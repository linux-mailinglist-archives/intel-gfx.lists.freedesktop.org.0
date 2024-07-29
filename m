Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ED293FF8F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 22:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA2B10E481;
	Mon, 29 Jul 2024 20:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ke+cYlju";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83DA10E481
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 20:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722285135; x=1753821135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i3j6gc2tOeMF4YXONDNGS5ljof2uocP65WsJLbnlfKQ=;
 b=Ke+cYlju3P1ohr9Bz2rWsgFuhw1nfKmh6M3+5Ca4XAz5ltsxBz2o32ov
 Eh5jWxXeVRzu/09GZ+eGJwlNSsnF08wMRE3CG5qaq0wObV8R9PahI9oRn
 EZPpI7oAi9t8A5UskSGCviBrPhyMG8iTZcIyyrhCpMgHp3Bf6TOK09Q2i
 4zcUOAyjBT0ZtTlzlYJK44o/TeMc9Yb0zFR3H+qOM++c4VSW5rPwHCKcB
 VU23By8HaIsVDNkRlkgpS6eH4wWyxUgJeJogomQHa0+McLF2vMAgKvDj5
 jgFIVSJIWkUUWAfKdRcTILHX0tRWZsnGY3d7sq9R7e0qFCKOwXA0dKRMH w==;
X-CSE-ConnectionGUID: SXQXI11iQ5KfFw+SoggOig==
X-CSE-MsgGUID: de6uKQuHSjWyHgmlyd27nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45486231"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="45486231"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 13:32:15 -0700
X-CSE-ConnectionGUID: xqxNMGI8SQSdez2YA0hUQQ==
X-CSE-MsgGUID: YF4yqW18R0abMPCwhd5fzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53744805"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa006.fm.intel.com with ESMTP; 29 Jul 2024 13:32:13 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2] [CI] drm/i915/dmc: Hardcode path to MTL DMC v2.22
Date: Tue, 30 Jul 2024 02:04:51 +0530
Message-Id: <20240729203451.2392398-1-dnyaneshwar.bhadane@intel.com>
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

v2: Update intel-ci firmware directory path[Gustavo]

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 73977b173898..b6c58b932d58 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
 #define BMG_DMC_PATH			DMC_PATH(bmg)
 MODULE_FIRMWARE(BMG_DMC_PATH);
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			"intel-ci/i915/mtl_dmc_ver2_22.bin"
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.34.1

