Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016D5964903
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8D410E6E9;
	Thu, 29 Aug 2024 14:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PoOdRYdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A35C10E6E8;
 Thu, 29 Aug 2024 14:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724942963; x=1756478963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R1rYBtXjjHnobnQKKV1UvEcwJXepZBfQniX03Vow0mI=;
 b=PoOdRYdFGuaXtJJLrt+HEYlPm7ptlalWMlvxUCdaoEfs2+VFVpDGPTeu
 /rhGnCj0uXp24YzwLo0X8/Zsu/m5eSGyHUCGXui71QXSnx5iHjAj9MP3M
 lQLrRqMLoAGtC4aP/bIdU15E4DXNb1thgc10KGGjzeD7pThBNjuA8yvro
 fo1Y4JtFz6moSbUP4xP9udKdYMo6JKBab2tq58DBNvdATR6QyqW79G+Ka
 5nB6y4vkR5KKjxQVBpvfUjZ8GDA62VPdpAOsc/RPsYT7RYWmDV68vOcXs
 F6LbdfmClOUODnnDrWLZgnCXM62DfC00Oh9Gine4tsYjPYYHnAbpdzBvf w==;
X-CSE-ConnectionGUID: Noxn2/TUQWOweQ3m0c9zWA==
X-CSE-MsgGUID: AgYaKwDMRP6l3Qfn8WWmtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23729053"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23729053"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:41 -0700
X-CSE-ConnectionGUID: 1cNmGzy6QmyrDOQpw9U7xA==
X-CSE-MsgGUID: Y11J3seTQOKs8krFVhcGLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63592772"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:48:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 6/6] drm/xe/display: remove unused compat kdev_to_i915()
 and pdev_to_i915()
Date: Thu, 29 Aug 2024 17:47:48 +0300
Message-Id: <05b948f9012fc7c0b97d567c70b0bac8791d554a.1724942754.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724942754.git.jani.nikula@intel.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index becb6a7ec9d7..cd4994ff7503 100644
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
@@ -112,8 +105,6 @@ struct i915_sched_attr {
 };
 #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
 
-#define pdev_to_i915 pdev_to_xe_device
-
 #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
 
 #ifdef CONFIG_ARM64
-- 
2.39.2

