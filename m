Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A6C97B2D7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A769010E4BA;
	Tue, 17 Sep 2024 16:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nqIpOQQp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E579810E4BA;
 Tue, 17 Sep 2024 16:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589791; x=1758125791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wFrA3ay8wpk9G44li2rwF37TXTUqCBP2Tnwgp4/kLn8=;
 b=nqIpOQQp/t1cuWo5fP8GdMXQFKzVudLuaWd2mQ/UuG9fceKYvwc/Iynj
 Y0H8ViDQRMuffGSgbaORspAvVs0TjhY/5xHPMJfXODgNuZrIdW2KjINoY
 qTFuTZ+H6s3YIjq61qQr5Y1gwyg97sKxCl9nlBtbCmSiPt/U885D8ZKMQ
 w/Gng1sIfchH9xrriNt4hRh4A6Ah4aivneCBg1/MMHufFrsHhXqpc5Uep
 JCRpzIxaxUiJcACmcrRD34fc5ekI/5eC8mFpbfRDMNNSm6ug5ayDc7dWG
 UsSkIQkjdbnjlLnVHFveHEoEpKgh1AG3G+Fwl7JXcJCpyWWu0jGsQndKK w==;
X-CSE-ConnectionGUID: pkGoBOIPRnq3CY3RjQCmOw==
X-CSE-MsgGUID: NQl5HyH5RoKZ4R4vVTS5Iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="42934542"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="42934542"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:26 -0700
X-CSE-ConnectionGUID: khFYrgkeQr6B2OVCF3c6kg==
X-CSE-MsgGUID: 9CjWAI5gR1WG1RNViqxhxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="70023623"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:16:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 22/22] drm/xe: eradicate -Ddrm_i915_gem_object=xe_bo
Date: Tue, 17 Sep 2024 19:14:01 +0300
Message-Id: <0eae2b62b635acafe5dc97dc4b205aaa34ce1e53.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We've now completely stopped using drm_i915_gem_object in display code
that gets built for xe. Kill off the -Ddrm_i915_gem_object=xe_bo
hack. Good riddance.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index e1ab68d3e066..ae245fbd91ee 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -149,7 +149,6 @@ subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
 	-I$(src)/display/ext \
 	-I$(src)/compat-i915-headers \
 	-I$(srctree)/drivers/gpu/drm/i915/display/ \
-	-Ddrm_i915_gem_object=xe_bo \
 	-Ddrm_i915_private=xe_device
 
 # Rule to build SOC code shared with i915
-- 
2.39.2

