Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0253F896E0B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F15810EF3B;
	Wed,  3 Apr 2024 11:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W8VUHWds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18D2112A0F;
 Wed,  3 Apr 2024 11:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143373; x=1743679373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xzrFbXEDQUB8nd70SidKMIXoBJZQIcCHF292AjuMF8Q=;
 b=W8VUHWdsE6/+JKJNHp/dQJCqNB4zoQ4u3M0J+4aqLxisw/FufVHP4Kmf
 rfa88vDzH+z/7uUxyDbOikmyZbdG5R9ACUOOjRZzvhDf3cMCuoUE4lA7z
 mxqlMsPXzTPv61MR+7Nh85VXLhr1ExL3d2sajttPxw5h481uppRhffy7O
 gUEHFnRTUGSQM8iMQPP8Q6xcDhQjMlRcTqVEVFVpptzVgSDtbYNlqx75i
 Byws5xF75ppsVNZbLpWZLQ8zzn1sZrQpMdvTKyunjc5nhZHKg3ICVZQtB
 DvUZaMz008D1T92ryUuSQDDyrGLaxR9Wk43g7sgxUBkWZKfQkhpR7RGYL g==;
X-CSE-ConnectionGUID: dgiRcADDSIK19hHbKcrYGg==
X-CSE-MsgGUID: e58ghcTRTyCx+ZMflxHELQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824006"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824006"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:53 -0700
X-CSE-ConnectionGUID: PA4PbNqkQhK4fHduQu0BCA==
X-CSE-MsgGUID: tO2vG1OeS0GMsdtGKqF9qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358495"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:52 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 03/25] drm/xe/bmg: Define IS_BATTLEMAGE macro
Date: Wed,  3 Apr 2024 16:52:31 +0530
Message-Id: <20240403112253.1432390-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Common display code requires IS_BATTLEMAGE macro. Defined the macro.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index a01d1b869c2d..9161d1fdf239 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -88,6 +88,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
+#define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
 
 #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
 #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
-- 
2.25.1

