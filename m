Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2EB965E57
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E922010E98F;
	Fri, 30 Aug 2024 10:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NXd0KGH6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E2710E96A;
 Fri, 30 Aug 2024 10:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012961; x=1756548961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vnwgi6YCBE/n83PVdIDcr1ofzqQawux/Xb1TvrW5Foc=;
 b=NXd0KGH6xtpSFQcXawrfWTZ/8zKOzEMkbndHDQfCZNlepiUqy4zaCuYP
 5/E/+U8wQgt6d7BhLisMchxCizPT0TGVTgP5SbrhQ7AtFM8Lyv3x2+GX8
 SdQc1mN14IqHlNBvt4grPCVvnkNFYr8SZcQPUGMQ0efeHpZwspvhFhg/a
 0rnnj4Dh3YX09Mx8kx8nhkKpZ3sK0/XVXBzZdIBzJ2Fx2nFhdzlDzKfX0
 p1AGT/v5IIm5XG4MWdjHBXbqDmG150+AlRcazJuKzR7Vv4GaGKBuBbT33
 ClEzfjVHIW8CdFu9ni3i6DcT61HOv9E4Je7ASzS9fF97Irxb5hESElBb+ A==;
X-CSE-ConnectionGUID: 9UDP2a1HSayNlkmotGWdqA==
X-CSE-MsgGUID: wAsy7CWkT5OiaWFyqhk1gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164402"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164402"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:01 -0700
X-CSE-ConnectionGUID: 7enokWSpT5KA0lCoojkpOw==
X-CSE-MsgGUID: 4sVx5gDFRJe6QNstwznJyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252428"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:15:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/11] drm/xe/display: use xe && 0 to avoid warnings about
 unused variables
Date: Fri, 30 Aug 2024 13:15:38 +0300
Message-Id: <2a9960df4d9f6423a2cc6a29a7a7b0c1420690c7.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
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

Avoid warnings about unused variables when the IS_LP(), IS_GEN9_LP(),
and IS_GEN9_BC() macros are the only users of a variable. This is not
currently the case, but prepare for future changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index b7b12b20e390..7b128abcdb93 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -80,9 +80,9 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define IS_LP(xe) (0)
-#define IS_GEN9_LP(xe) (0)
-#define IS_GEN9_BC(xe) (0)
+#define IS_LP(xe) ((xe) && 0)
+#define IS_GEN9_LP(xe) ((xe) && 0)
+#define IS_GEN9_BC(xe) ((xe) && 0)
 
 #define IS_TIGERLAKE_UY(xe) (xe && 0)
 #define IS_COMETLAKE_ULX(xe) (xe && 0)
-- 
2.39.2

