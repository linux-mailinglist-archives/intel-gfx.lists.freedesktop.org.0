Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5BCC70B64
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9588310E689;
	Wed, 19 Nov 2025 18:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fU7iv7Oq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860DD10E689;
 Wed, 19 Nov 2025 18:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578415; x=1795114415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EvUNuHzzQzrwL3V12T3fRTiAekyWi6BSAI3XweAV3g4=;
 b=fU7iv7Oqk/H8wBi1IxNfxVO3FpmxkLYhfWYDKx8IjWVIjLqE4OuP6HhF
 TM/+u+knXcNkynC38LdWhUvEOVFKEdGxMRcV3P0j73//Ce+De/dNjFZfa
 gtlcgZanv0SvudGuALaJRiJOavxfi+d6F8aDmeMf45TjvHXg72ui3RQW7
 +ZbdnDD+GdykMa6hiCW2RGHKh8xCUi+3xQuKMEfi+EU0XjHZQXABXjjf8
 g0pSfQp7kGOVH3tJQYO1h70ZbMod2e1eya0vJWKltb4H74u1+KLTTSWb5
 bTyzf4E10CTrtugtrzgY5/MvWu80O5l/+7RT31NMN5MarBxV2DNWsku4H g==;
X-CSE-ConnectionGUID: d8SRBx0IQHGJtVQSwy4AwA==
X-CSE-MsgGUID: 9uzZYLL4QjCjL3U87c6W+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65672379"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65672379"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:35 -0800
X-CSE-ConnectionGUID: 5K6MPgIgTVuuiKJIShZa/g==
X-CSE-MsgGUID: 2OMrBrMiTJW31RvPzzoDlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196279751"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 08/13] drm/xe: remove remaining platform checks from compat
 i915_drv.h
Date: Wed, 19 Nov 2025 20:52:47 +0200
Message-ID: <a9947337f81e04db342bae6af727e4f75f9818ae.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

With xe no longer building anything from soc/, we can remove the compat
platform checks from i915_drv.h, reducing the file to just the to_i915()
pointer conversion helper.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 3e79a74ff7de..04d1925f9a19 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -19,19 +19,4 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 	return container_of(dev, struct drm_i915_private, drm);
 }
 
-/* compat platform checks only for soc/ usage */
-#define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
-#define IS_I915G(dev_priv)	(dev_priv && 0)
-#define IS_I915GM(dev_priv)	(dev_priv && 0)
-#define IS_PINEVIEW(dev_priv)	(dev_priv && 0)
-#define IS_VALLEYVIEW(dev_priv)	(dev_priv && 0)
-#define IS_CHERRYVIEW(dev_priv)	(dev_priv && 0)
-#define IS_HASWELL(dev_priv)	(dev_priv && 0)
-#define IS_BROADWELL(dev_priv)	(dev_priv && 0)
-#define IS_BROXTON(dev_priv)	(dev_priv && 0)
-#define IS_GEMINILAKE(dev_priv)	(dev_priv && 0)
-#define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
-
-#define IS_MOBILE(xe) (xe && 0)
-
 #endif
-- 
2.47.3

