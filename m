Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCB77A942C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3BC10E120;
	Thu, 21 Sep 2023 12:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7B710E111
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 12:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695298626; x=1726834626;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TQJAnHBrCuX1deuweZgdlghFj8RSCJzS4/WFNV92yUc=;
 b=ZcseQyO7pXNjwQngjch10gMOc9SEKE4obbklBU39ranAR0kfiVAFKo5m
 lN9RgZBD1+jQl7DJE9c9Lu3oYPjc6wSKltAZcaSeN4pTDnXlCx8D0cqrn
 d7q1133htKhz4pIkzAWdLsCEWNUTL8DQJGdL8nyh1ncqitUyGYJ5YvC57
 xT9mgxOPSLrKeV1z5IOhEWYDeo1LqT3xA/BGRnAVmOtPc8U1Uaw8cbxE1
 KTbBAmmJFFFCNZJyE/YfweXpyUb9UfJOyjPljhdI6KqG31QxgOSiaAvQQ
 fasRw7mDYEjm9dLsfC/jAV6IldA4I6wGe62bvVRoFubDWU5ljKjNgwYUx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="446972506"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="446972506"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="750370178"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="750370178"
Received: from slstiles-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.212.48.165])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:17:05 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	gustavo.sousa@intel.com
Date: Thu, 21 Sep 2023 09:16:37 -0300
Message-ID: <20230921121637.12211-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230921121637.12211-1-gustavo.sousa@intel.com>
References: <20230921121637.12211-1-gustavo.sousa@intel.com>
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

Hardcode DMC path to i915/mtl_dmc_ver2_17.bin for CI purposes.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 1623c0c5e8a1..b0d3cafdc6f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -93,7 +93,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define MTL_DMC_PATH			DMC_PATH(mtl)
+#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_17.bin"
 MODULE_FIRMWARE(MTL_DMC_PATH);
 
 #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
-- 
2.42.0

