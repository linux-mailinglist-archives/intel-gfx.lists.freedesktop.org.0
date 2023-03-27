Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 616E66CA1C1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 12:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DE710E0F3;
	Mon, 27 Mar 2023 10:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7164910E0F3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 10:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679914422; x=1711450422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2xoaydIwc/E7t/PLkggtWv6A7M4SRS/LDrJqDiXKASw=;
 b=nrlD1OhB25MmS5ltK9ZDVDupZBUsF1mH5pDl5dhkov0oLN9s2mY3haXv
 z0UeupCYB8jXZQB5MSBwhKVGd2XDof3d1nc8KRxwksbqtWAChRqhbcUMS
 B/FfYDSZuBbV+2v5di1u0YMdIEB19b8Qoh1wNmrw5n47QV2rm0IBfHl7j
 zEjGjneVDriqe9Hq30OIrROrgFPJalOmwiTcraZUiPXuuSNGRjAo9wraJ
 qVqgIdtHVTQVkt4nIJ3+dg5peTnlk5X19lXa7P7F9mVAycwlGn+b4/yNa
 XTUbPuWGMWsGyEqLLpOz3iGqYbuVDkXj10l+Hzfn9IEvMV6hRHJje8Iea g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="426496883"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="426496883"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 03:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="752646735"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="752646735"
Received: from mstancu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 03:53:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 13:53:30 +0300
Message-Id: <20230327105330.312131-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327105330.312131-1-jani.nikula@intel.com>
References: <20230327105330.312131-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: remove unused config
 DRM_I915_UNSTABLE
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Essentially this is a revert of commit d9d54a530a70 ("drm/i915: Put
future HW and their uAPIs under STAGING & BROKEN").

We currently have no users for this config option. The last one was
removed in 8c26491f5853 ("drm/i915: Kill the fake lmem support"). Drop
it altogether; it's easy enough to resurrect if need arises.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig          |  6 ------
 drivers/gpu/drm/i915/Kconfig.unstable | 21 ---------------------
 2 files changed, 27 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/Kconfig.unstable

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 98f4e44976e0..06a0ca157e89 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -164,11 +164,5 @@ menu "drm/i915 Profile Guided Optimisation"
 	source "drivers/gpu/drm/i915/Kconfig.profile"
 endmenu
 
-menu "drm/i915 Unstable Evolution"
-	visible if EXPERT && STAGING && BROKEN
-	depends on DRM_I915
-	source "drivers/gpu/drm/i915/Kconfig.unstable"
-endmenu
-
 config DRM_I915_GVT
 	bool
diff --git a/drivers/gpu/drm/i915/Kconfig.unstable b/drivers/gpu/drm/i915/Kconfig.unstable
deleted file mode 100644
index cf151a297ed7..000000000000
--- a/drivers/gpu/drm/i915/Kconfig.unstable
+++ /dev/null
@@ -1,21 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-config DRM_I915_UNSTABLE
-	bool "Enable unstable API for early prototype development"
-	depends on EXPERT
-	depends on STAGING
-	depends on BROKEN # should never be enabled by distros!
-	# We use the dependency on !COMPILE_TEST to not be enabled in
-	# allmodconfig or allyesconfig configurations
-	depends on !COMPILE_TEST
-	default n
-	help
-	  Enable prototype uAPI under general discussion before they are
-	  finalized. Such prototypes may be withdrawn or substantially
-	  changed before release. They are only enabled here so that a wide
-	  number of interested parties (userspace driver developers) can
-	  verify that the uAPI meet their expectations. These uAPI should
-	  never be used in production.
-
-	  Recommended for driver developers _only_.
-
-	  If in the slightest bit of doubt, say "N".
-- 
2.39.2

