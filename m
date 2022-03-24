Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A124E652C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 15:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A1910E0D3;
	Thu, 24 Mar 2022 14:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA87610E0D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 14:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648132300; x=1679668300;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jp1b+Z31BUU6tPo2/OENlpCKgWcUSYe/d7v3vI/YdNk=;
 b=WCAUtbcXbK35whxlLkaX+CisMe6rrcl3kYnisWLAQMvMOitinLH44xb7
 ZXrq5vKDTHz0z6UZjxUjMtlFuNSbyY/7Lfzriw5SP/yVrR1otZiXPfbpG
 3Ce/KacdIhTabs9RTD36t4Z1J2DhhX74FGLcMy2uiDGL9AKqwjn3eqA77
 LU0b/ZKh2eXyOlUuZtz5cV6ighjLttqU+JNU5xKBDTiBg2IZwVOAD6jdS
 uIJgEoT9b1UDYgOATbW+s0L5F18pJHNPwLbCc9WeGRiPTBfEC2Qv+Z9Os
 fhS1zi553tMhteQtDXstYUMXLSSUyeZjns5z4A58ZI6BW7zORduavMl7C Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238995946"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="238995946"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:31:40 -0700
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="501411486"
Received: from smurkank-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 07:31:38 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 14:31:23 +0000
Message-Id: <20220324143123.348590-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220324143123.348590-1-matthew.auld@intel.com>
References: <20220324143123.348590-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/1] drm/i915: add lmem_size modparam
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

lmem_size is used to limit the amount of lmem. Default is to use
hardware available lmem size, when setting this modpraram which is in MB
unit.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++++
 drivers/gpu/drm/i915/i915_params.c          | 3 +++
 drivers/gpu/drm/i915/i915_params.h          | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 783d81072c3b..f5111c0a0060 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -123,6 +123,10 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
 		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
 	}
 
+	if (i915->params.lmem_size > 0) {
+		lmem_size = min_t(resource_size_t, lmem_size,
+				  mul_u32_u32(i915->params.lmem_size, SZ_1M));
+	}
 
 	io_start = pci_resource_start(pdev, 2);
 	io_size = min(pci_resource_len(pdev, 2), lmem_size);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 5ad071e09301..701fbc98afa0 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -202,6 +202,9 @@ i915_param_named_unsafe(request_timeout_ms, uint, 0600,
 			"Default request/fence/batch buffer expiration timeout.");
 #endif
 
+i915_param_named_unsafe(lmem_size, uint, 0400,
+			"Set the lmem size(in MiB) for each region. (default: 0, all memory)");
+
 static __always_inline void _print_param(struct drm_printer *p,
 					 const char *name,
 					 const char *type,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index c779a6f85c7e..b5e7ea45d191 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -73,6 +73,7 @@ struct drm_printer;
 	param(int, enable_dpcd_backlight, -1, 0600) \
 	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
 	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, CONFIG_DRM_I915_REQUEST_TIMEOUT ? 0600 : 0) \
+	param(unsigned int, lmem_size, 0, 0400) \
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, load_detect_test, false, 0600) \
-- 
2.34.1

