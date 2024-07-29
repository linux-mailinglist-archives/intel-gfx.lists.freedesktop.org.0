Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2FE93F7FF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:31:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D99E10E3FC;
	Mon, 29 Jul 2024 14:31:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fB4NJ2Fw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF4110E3FB;
 Mon, 29 Jul 2024 14:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263466; x=1753799466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chfzjEcvufavYahSO7FOgkr71BGIezA65Io9YSQnmm4=;
 b=fB4NJ2FwE1SzA9jsQDB/hSOwpep3ETZpYzd9+FxVjoG3ebq5lpcqlhTU
 SLjA1dN38tjCCVFlzltpoxe0dA4uXzMotESyZOZRzCRz1Re1qRgDVhonw
 e+ew8CUMKgnojIlvK0+PoQDdaNP3GJWGo4R7fTLDFqvkwI4EDtJdC2bpL
 R2tATMhyxNNz57B5LeZEuu9bL0eqlbOX51g9ZVJybqbYNXn7Ms029AXBt
 +1tHErf3YNfrrGC+WTyALa1EBj5xhOr9nBXwy8Ydn/w/1brb2UJnO4b4s
 VG9g+FpsHw+6ouSEA5s1rIONYLyjgt+gAvdPrYPL9dSuk+C9X/12qaWfv g==;
X-CSE-ConnectionGUID: k/eDMYVdSkGpuChQEY0Esw==
X-CSE-MsgGUID: P9XzJ1CNQNu708uwzAo13A==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823156"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823156"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:31:05 -0700
X-CSE-ConnectionGUID: 8d/MhO5TSO2Ecvdbh7UzMw==
X-CSE-MsgGUID: GIptGvZ9TXe7qquy4zvHdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651704"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:31:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/10] drm/xe/display: remove unused compat kdev_to_i915() and
 pdev_to_i915()
Date: Mon, 29 Jul 2024 17:30:11 +0300
Message-Id: <6c8fbc2b891094603666cfb59f2884dee6089bd9.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
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

