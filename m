Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9D4958E5C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF5B10E848;
	Tue, 20 Aug 2024 19:01:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I9G88zZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9032C10E840;
 Tue, 20 Aug 2024 19:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180472; x=1755716472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/GftmgXu91A8NxwO2KQwtZ1iXybLEjVjguGKiL0oXP4=;
 b=I9G88zZR+pgCpKHj4G6S+Ai/MqJej9RYEzVv2Zn/u3fNUieCASin8CLp
 OtPIEEcMa/6XIMkX34sAeWKhBVRSa4L8Vga0lZG1sh6RRehkkCNTFJXct
 7MdvriYlyDEbB+OEpcru8KjA19kKIX4p7rwU0qUxJs8PAQPAjkw6IDjRb
 nxZQig/C9+sT8+2iXyEZtx5T6h6OtWgrebC66DrJykLOCVnq2uJxyY/za
 +3zDy2OHwYzqiOnheZctPr8m9avmnudpMX717xdebWTK2+xt4Kps+BySr
 hMG+eNdy+ZdB46aw6fxsubRdclJ+z9pe8Q4yBzTIbT8ggbyMeLYdAgsKz g==;
X-CSE-ConnectionGUID: 7F7u7BWLSeaywrTHJW+EgA==
X-CSE-MsgGUID: PeUztC9SR0K/MflnVSn4wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035941"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035941"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:11 -0700
X-CSE-ConnectionGUID: Fuj5qty1S9iOXrF8nvuSBg==
X-CSE-MsgGUID: oboF1qPMREiYVdPXxDZKrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676362"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:01:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 03/10] drm/xe/display: remove the unused compat HAS_GMD_ID()
Date: Tue, 20 Aug 2024 22:00:36 +0300
Message-Id: <67571bb0b10fb5c99dba57757f2213ef39bdedbb.1724180287.git.jani.nikula@intel.com>
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

The display code no longer needs or uses HAS_GMD_ID(). Remove it from
the compat header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 82b934fe230a..7492979ac3bc 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -80,8 +80,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
-
 #define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
 
 /* Workarounds not handled yet */
-- 
2.39.2

