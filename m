Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1576194C0CC
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC38A10E77A;
	Thu,  8 Aug 2024 15:16:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aT4RTHHJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C3510E775;
 Thu,  8 Aug 2024 15:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130204; x=1754666204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XBo4gHOxC9DvlTM8t32KK/8UkfFv+75lKg2Xy3LeRI4=;
 b=aT4RTHHJmtNrOvvhdXxE8TSNMEB4TArqiGo30V29vi+ip3LJVPwpCqnh
 0m1/p90bpd3gp8gIJKjspF72cCetsQgjcblVls92wpxrGhAeicd7cKD+w
 HdyuOLTdMe5Du8xMXhURw4FgJPNvt58CKNJOhQuSp2uhG0cyIV+QJxXs+
 gHj3ymV4hG3HCG9pdHJHB0nEHXM0K81zoVWLgw+tIFBidlW5JZcvSYGij
 wrSg1DzgJ/zvxeTsGQKD2EegBVKZPxe0GBNQ+GwBuldJzLF4saZu1mpzu
 C84vjsYOETSnqJyHXAYMdwA3QMAmFshSDjPV91IdHzAnKxwLxJyY4HB0u Q==;
X-CSE-ConnectionGUID: qI39FNb8TLejDarS0KUGTg==
X-CSE-MsgGUID: YGK49G3FRWCTIxqeFTBslQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="46667109"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="46667109"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:44 -0700
X-CSE-ConnectionGUID: i/kwH5G0RnqWevWvgqEPCw==
X-CSE-MsgGUID: cG6+JtUFSiK9z1s2Odwblg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="56920204"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 10/10] drm/xe/display: remove unused compat kdev_to_i915()
 and pdev_to_i915()
Date: Thu,  8 Aug 2024 18:15:55 +0300
Message-Id: <706c3893f11ec3bd1e49e704a48c03cd5c987b84.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

The display code no longer uses kdev_to_i915() or pdev_to_i915()
helpers. Remove them.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 766fba88a3c8..e1d6ce829a0b 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -21,13 +21,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 	return container_of(dev, struct drm_i915_private, drm);
 }
 
-static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
-{
-	struct drm_device *drm = dev_get_drvdata(kdev);
-
-	return drm ? to_i915(drm) : NULL;
-}
-
 #define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
 #define INTEL_INFO(dev_priv)	(&((dev_priv)->info))
 #define IS_I830(dev_priv)	(dev_priv && 0)
@@ -117,7 +110,6 @@ struct i915_sched_attr {
 };
 #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
 
-#define pdev_to_i915 pdev_to_xe_device
 #define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
 
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
-- 
2.39.2

