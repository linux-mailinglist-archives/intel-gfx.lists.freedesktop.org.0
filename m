Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5D597BFC0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A2710E604;
	Wed, 18 Sep 2024 17:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdK1XKrg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ECD10E604;
 Wed, 18 Sep 2024 17:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726680973; x=1758216973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ODlteYaR/0rfP97gqN8qPh4VkhSb2bXTV2jZ+ihVWm8=;
 b=NdK1XKrgm3KDaN6DDacy9cwVVv9UvwhqHf94IhDFQpxgkRaalQMFrMY4
 rpszsjL6XYMD4iP+kNhq+fb6nGCWvItwmhKJE8Vgh55yNZmYDV2hxUQeb
 CQPVlvuH9xslvEBO51d6th762QrQCI+4S1C5pjownHQUTa5W1LifGkGJ7
 Q2d29u4hzVcRgUVw5cX3QHqQEyBaSwbR8cBVwBJskvg3SDyuI2GOaaMgy
 YLELF8A9ruEw6BKofkmjKjbd2g8Y6/wiLkHBOjXbBChfAKVZL+Ja4ZlBW
 lukWd2iL/Z/D8zD5z4VC+LSxfzHDDuojjdEcM6xHVl1nMuwz7fRUj+ujj g==;
X-CSE-ConnectionGUID: F61vW8S+S9iP3KqL/pwd6w==
X-CSE-MsgGUID: gWcYaY1CTxCWR+uQ8riTFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25704120"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25704120"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:12 -0700
X-CSE-ConnectionGUID: S7Xx+IanShmf0TaXSdng4w==
X-CSE-MsgGUID: dSLvt4EGT7uAadWFTS04iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="107102633"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:36:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v2 3/6] drm/i915/display: return 0 instead of false for
 disabled power wakeref
Date: Wed, 18 Sep 2024 20:35:45 +0300
Message-Id: <263b062a37e7b9c345b5d3335282558ac38c5b73.1726680898.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726680898.git.jani.nikula@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
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

We can use 0 for intel_wakeref_t, but not false. Fix it.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409190032.ZCHBxK9e-lkp@intel.com/
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 40727a22f18b..7b16ba1a8226 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -545,7 +545,7 @@ intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 
 	wakeref = intel_runtime_pm_get_if_in_use(&dev_priv->runtime_pm);
 	if (!wakeref)
-		return false;
+		return 0;
 
 	mutex_lock(&power_domains->lock);
 
-- 
2.39.2

