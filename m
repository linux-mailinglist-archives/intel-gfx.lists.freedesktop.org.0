Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1228A839E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DCE1134BE;
	Wed, 17 Apr 2024 13:02:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgxjmoFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3467A10F5FF;
 Wed, 17 Apr 2024 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713358978; x=1744894978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LxWkEW4+yjZXxBaZBi/ts4k5y+56HLn2nDmcgqK2Q+g=;
 b=PgxjmoFL9LvMoiT6+Niey0pnWN85dN4AQ39Bz/YKsjmOyMxJqSlhHs0D
 7NUY1sM9trL2gc6xRoNNReOHl5qsrTG9HNoBWJ2YQIuMHnEPZWouHN1Sh
 t7Qkzxm9hrWHjAxMfU/aJB/Cr5UrwHGwSKaoWyTkDe4NjfgEk/9GHZH7E
 CVJIr6H+YGppQLJBSzCg6V/Qu7/i12NLJKSVUX+if2cFo3BqHkz/6I7On
 jtKPRu2eHBe1oq8g8CGnHQAzbmV16OvSpZFq/CHd5CFVL3eok9Y15Fh3l
 tik5iZAJyYOwwE6WHSU6Z94BqWX20pE53I/YN+2Uyywpob4gie5Bh/Wol g==;
X-CSE-ConnectionGUID: CO5yslW6RHy1sczNxmmsUQ==
X-CSE-MsgGUID: XuAEdSdbQ96fU0yQTC672g==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8976790"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8976790"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:02:58 -0700
X-CSE-ConnectionGUID: YMkfcgMGRxe+DuDJ8kr4UA==
X-CSE-MsgGUID: xJcznGa3Rn6PrrtPN7VdOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="27199367"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:02:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, Luca Coelho <luciano.coelho@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v4 1/9] drm/i915/display: add intel_display -> drm_device
 backpointer
Date: Wed, 17 Apr 2024 16:02:39 +0300
Message-Id: <47dd7bc4aae3c10b18097824e37617c072c66c0b.1713358679.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
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

As a baby step towards making struct intel_display the main data
structure for display, add a backpointer to struct drm_device that can
be used instead of &i915->drm.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h   | 3 +++
 drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9d89828e87df..7715fc329057 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -283,6 +283,9 @@ struct intel_wm {
 };
 
 struct intel_display {
+	/* drm device backpointer */
+	struct drm_device *drm;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b8903bd0e82a..120e209ee74a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -927,6 +927,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	const struct intel_display_device_info *info;
 	u16 ver, rel, step;
 
+	/* Add drm device backpointer as early as possible. */
+	i915->display.drm = &i915->drm;
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
-- 
2.39.2

