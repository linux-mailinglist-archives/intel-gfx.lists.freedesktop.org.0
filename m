Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9899EB17158
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F11C10E471;
	Thu, 31 Jul 2025 12:36:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZC0iKoa+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2512310E46F;
 Thu, 31 Jul 2025 12:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753965387; x=1785501387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4I6sOAJe1sg5mbWjA8A3h1pwe1Wh3YU/d2GqETwZkVY=;
 b=ZC0iKoa+uLtA7d1Qnrq+Rz+Ul4KgUCTH4XWU+WepY3q8RXh3Wm89Bss/
 BSw9qNUlqKTUdSzZxLjcJDMMPiEveyDkE0HcSY3TqhaHKkagOyUCTbWjt
 gIeXFXX7Ij8BaCy73JKM8L8/IABsCjPG9qSePFiW6E/6hR3JfZvUX6uKP
 rGQFBSXXe4Q1oIwRvTGHf731zynfU16H+qqnPO2mTqAXCPTkmcM9bOqZS
 zuIIXSFaXptgomUcwzHuf4QSNVvHMr8OAsJUsjqfQz7llQcfVWiMzEeHE
 WW5J26qeBSkKKAp2ya+vFaMQw5f1HfWdYq+URd9KGirzIcZ+NlMxwExwa A==;
X-CSE-ConnectionGUID: aKt/FkeWS1SYci+gDc7t5g==
X-CSE-MsgGUID: tdpYJ6wpSjyLf9Yr6MefJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66852993"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66852993"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:27 -0700
X-CSE-ConnectionGUID: 4YkCGJuZQtO4uYFWbhEXRQ==
X-CSE-MsgGUID: UmkkVU2jS9O6+H/HY+R+pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="186935326"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/xe/compat: remove unused platform macros
Date: Thu, 31 Jul 2025 15:36:15 +0300
Message-Id: <4507b49ead12c997de4615fa6ec277e666e5226a.1753965351.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753965351.git.jani.nikula@intel.com>
References: <cover.1753965351.git.jani.nikula@intel.com>
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

After refactors, a lot of platform macros have become unused. Remove
them before new users have a chance to pop up.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 9b7572e06f34..d8cd66a96621 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -26,34 +26,13 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define IS_I915G(dev_priv)	(dev_priv && 0)
 #define IS_I915GM(dev_priv)	(dev_priv && 0)
 #define IS_PINEVIEW(dev_priv)	(dev_priv && 0)
-#define IS_IVYBRIDGE(dev_priv)	(dev_priv && 0)
 #define IS_VALLEYVIEW(dev_priv)	(dev_priv && 0)
 #define IS_CHERRYVIEW(dev_priv)	(dev_priv && 0)
 #define IS_HASWELL(dev_priv)	(dev_priv && 0)
 #define IS_BROADWELL(dev_priv)	(dev_priv && 0)
-#define IS_SKYLAKE(dev_priv)	(dev_priv && 0)
 #define IS_BROXTON(dev_priv)	(dev_priv && 0)
-#define IS_KABYLAKE(dev_priv)	(dev_priv && 0)
 #define IS_GEMINILAKE(dev_priv)	(dev_priv && 0)
-#define IS_COFFEELAKE(dev_priv)	(dev_priv && 0)
-#define IS_COMETLAKE(dev_priv)	(dev_priv && 0)
-#define IS_ICELAKE(dev_priv)	(dev_priv && 0)
-#define IS_JASPERLAKE(dev_priv)	(dev_priv && 0)
-#define IS_ELKHARTLAKE(dev_priv)	(dev_priv && 0)
-#define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_TIGERLAKE)
-#define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_ROCKETLAKE)
-#define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
-#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
-#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
-				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
-#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
-#define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
-#define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
-#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
-
-#define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
-#define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-- 
2.39.5

