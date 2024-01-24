Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CB783A3EF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 09:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C6B10F66F;
	Wed, 24 Jan 2024 08:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D89910F673
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 08:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706084369; x=1737620369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1EDWh3XWS6JUDpSIIgtpk1Z5Q1jO1NGiEDwSbYRy8xY=;
 b=EIBAMwj/roe+wdCj+w5qi2JHDOkgEcMhWbPu5cBNEKJ3fS2CYdp5jvGO
 HvvXKbdIzgg9bVmEZGJqPBVHhO9g/9Q58FCscgXm36gF3TN3FXILoyMWQ
 0pBSTDj5ouwRuVUcbKvbxnh1RNbv3u3uN8wmL1at/r1ZYGFT8KrUqRKo7
 eLqaWdtZ9F1AfUIPNbTkYWB/5tL61plSGn9EJKgYjAgoqScsGeGNAoEJA
 tdEClRMDKLrbr+o2aSt0nDu+uR7fJ7FBShvpwyF/TGR8LJSq/FSfCNy2y
 pRORz5qbtd5NW2Ci/WUq6dLJiI2YVgAvP0/+8qiC8oLJa6IlKBDPvUAyZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8428757"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8428757"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:19:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="735842150"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="735842150"
Received: from mcohen6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.246.32.145])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 00:19:24 -0800
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Subject: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Date: Wed, 24 Jan 2024 10:19:15 +0200
Message-ID: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Sagar Ghuge <sagar.ghuge@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add reporting of the GuC submissio/VF interface version via GETPARAM
properties. Mesa intends to use this information to check for old
firmware versions with known bugs before enabling features like async
compute.

Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Jose Souza <jose.souza@intel.com>
Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
 include/uapi/drm/i915_drm.h          | 13 +++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 5c3fec63cb4c1..f176372debc54 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		if (value < 0)
 			return value;
 		break;
+	case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
+	case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
+	case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
+		if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
+			return -ENODEV;
+		if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
+			value = to_gt(i915)->uc.guc.submission_version.major;
+		else if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
+			value = to_gt(i915)->uc.guc.submission_version.minor;
+		else
+			value = to_gt(i915)->uc.guc.submission_version.patch;
+		break;
 	case I915_PARAM_MMAP_GTT_VERSION:
 		/* Though we've started our numbering from 1, and so class all
 		 * earlier versions as 0, in effect their value is undefined as
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index fd4f9574d177a..7d5a47f182542 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
  */
 #define I915_PARAM_PXP_STATUS		 58
 
+/*
+ * Query for the GuC submission/VF interface version number
+ *
+ * -ENODEV is returned if GuC submission is not used
+ *
+ * On success, returns the respective GuC submission/VF interface major,
+ * minor or patch version as per the requested parameter.
+ *
+ */
+#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
+#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
+#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
+
 /* Must be kept compact -- no holes and well documented */
 
 /**
-- 
2.43.0

