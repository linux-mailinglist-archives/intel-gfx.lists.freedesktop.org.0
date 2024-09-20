Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEB097D42E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 12:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D255C10E06E;
	Fri, 20 Sep 2024 10:26:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5tnrN63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CF710E06E
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 10:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726828008; x=1758364008;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7aQ3ms04nwKOs2Denx9RX3HzD5bHQn0R2KwuxeD3fb0=;
 b=G5tnrN63/fqnCBOgiNGYKW+LMNpRlUqh26T1mnM7bEdXoimZTo2BsB6J
 yEaz9zyBer5ReLXPiX0oUjk+UMVSVPGWFmNMMa4Ay0kwzu5o7lmMCmzZ8
 vuWkoKe1BUkm1JWt3wIBe9aYBblywEPjj4lg6W4zym3dB5R7tsw04OZLA
 6r7H3n6jbYDSZ5FYAxIdSyUsly5DzE22a7lVe0Ce1V64agCqYtdMLsmNc
 NcPigbyzo5XZ8wNJf+z1JLQ3xfyO81ouVeb/Mj2w3EHLE3Q6f1YMFoTQr
 /eNZAtVDtPEI0unugpkO4hcdBe8k7BmxEP/8wh8qOxpYEbK06fwjgOmAH A==;
X-CSE-ConnectionGUID: 9i3yA3rhQ0STwVlSpcZs8w==
X-CSE-MsgGUID: 5isyBFPPS5irTUGhMYoGfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25771982"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25771982"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 03:26:48 -0700
X-CSE-ConnectionGUID: BoUuEDzHRceRMWlfyt4jyg==
X-CSE-MsgGUID: PpGlTStwRV+qCZOxTcY3AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="75026497"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa003.jf.intel.com with ESMTP; 20 Sep 2024 03:26:47 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH v1 1/1] drm/i915/gt: Use IS_ENABLED() instead of defined() on
 config check
Date: Fri, 20 Sep 2024 16:15:41 +0530
Message-Id: <20240920104541.1899779-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Always prefer to use IS_ENABLED() instead of defined() for
checking whether a kconfig option is enabled or not.

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 222c95f62156..e8a04e476c57 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -18,7 +18,7 @@
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
 #define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
-#elif defined(CONFIG_DRM_I915_DEBUG_GEM)
+#elif IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
 #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_1M
 #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_2M
 #define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
-- 
2.25.1

