Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C58958E5A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9FE10E842;
	Tue, 20 Aug 2024 19:01:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjRyzDHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF56E10E848;
 Tue, 20 Aug 2024 19:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180459; x=1755716459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ABT6FQU3D0JEdeqc51OdZ1THTIx3b0BJrxgUAlmtUTE=;
 b=fjRyzDHhdIer+OTjRdPmkgUDdXXBetlYKfADT20mR5yZxj49Z2iHljzr
 C65nfObxLm0XrEPpTB2lNyI9VewBKWoGxVWrrjI7yBbztDjbCT6WjnyGz
 XhX+OBuVES+T3rmyG54b1bh8iRFs9JWahyrV1fmTxPU95McomkDHfteOA
 lBnO4LAfY2YbQQOVi8li55eAiw6kp14rgX/YJLTetUEViz4m8n0eQYIyk
 FpG1K+WlJ5ubKaBQxJh+Ka3xKIjCaFabiM+wQyprfsqdVpm47yNTWHzGp
 qaGPzemTZbJaa/oNBgjf8mFuN17WY/fKQfcmZAAhUc6aLKd02RuH2wS2Z Q==;
X-CSE-ConnectionGUID: 1cKm2OTDQZKFZx6hF9qnWg==
X-CSE-MsgGUID: o1AvAcGeQoGOvkHXsH85xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035880"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035880"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:00:59 -0700
X-CSE-ConnectionGUID: RkC35BxzQuCM0NLH/uGs1A==
X-CSE-MsgGUID: FKei+vuqTH2o/Bgb2z/SbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676240"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:00:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 01/10] drm/xe/display: fix compat IS_DISPLAY_STEP() range end
Date: Tue, 20 Aug 2024 22:00:34 +0300
Message-Id: <fe8743770694e429f6902491cdb306c97bdf701a.1724180287.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
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

It's supposed to be an open range at the end like in i915. Fingers
crossed that nobody relies on this definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 2feedddf1e40..1f1ad4d3ef51 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -83,7 +83,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
 
 /* Workarounds not handled yet */
-#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step <= last; })
+#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
 
 #define IS_LP(xe) (0)
 #define IS_GEN9_LP(xe) (0)
-- 
2.39.2

