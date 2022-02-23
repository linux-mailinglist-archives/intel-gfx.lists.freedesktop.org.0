Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEAF4C1E71
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 23:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0732D10E14F;
	Wed, 23 Feb 2022 22:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D6E10E14F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 22:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645655309; x=1677191309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Nw02U7j/DUmITwEHAQw86jNK01HZVCDgRKlp0+3vzU=;
 b=FZrkNa7Kzc1kA9eLx/YH+gCEnNeBb0+NAsMBHVE3gir0EF0/93UdTLYT
 Tv1ZUle8uerM6GXkfGEL0bENMXHOLwJwxSl/pas5GRZibQKbim3hc5+y1
 ILGZGu0ec5ot6vZnqPfg0sf73mQfziCO2QsHR0cvrsBHv0ma+/NR9oqlv
 ms1aD13dO8QVG/oL5rK1KvvKo9M0aohNLchyYgibI4LgCJG/NVdzpEoZb
 greGc2CX8VLW48fq3Q32wIqFqvOgzi+RobAvn/j7fwyCQ8WHS1sPnLvLg
 /NS6lADSGl/YEynKiNuoQavEkplyJBuiYUn0TBOeeioz/z8R4SAaLCMfF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="235603092"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="235603092"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 14:28:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="639491422"
Received: from wladeau-mobl.amr.corp.intel.com (HELO mtolakan-mobl1.intel.com)
 ([10.255.230.72])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 14:28:29 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 14:28:01 -0800
Message-Id: <20220223222801.397632-2-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220223222801.397632-1-madhumitha.tolakanahalli.pradeep@intel.com>
References: <20220223222801.397632-1-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.16 on ADL-P
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

Changes since v2.14:
	- Release Notes for v2.15
	    Fix for corruption issue when DC States are enabled.
	- Release Notes for v2.16
	    Fix for cases with flip queue and DC6v are enabled.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 7616a3906b9e..f2ac3bb1c6be 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -47,8 +47,8 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
 MODULE_FIRMWARE(ADLP_DMC_PATH);
 
 #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
-- 
2.35.1

