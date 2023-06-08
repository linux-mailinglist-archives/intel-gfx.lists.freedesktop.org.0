Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1506B727EA7
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CE710E256;
	Thu,  8 Jun 2023 11:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0288710E256
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 11:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686223366; x=1717759366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OBR0I1rh1eLIM/w/zi/uobLBv+VJvpL+9s3sYKHHfuw=;
 b=gw+FiUVdkRyYEQM9Zx+8PRtitGKCICbnUXFq0GJRr5TyMib3f5RiOITf
 tBtq0RBZKpN4pCgtbFJEKAME03+BrwfOldpVBo94rUWiAlqG/JIN35Prk
 oiytmWUFY7lxJEop+/0FoVkiUfGwh3DlgJJMlqO5Yc0nLJsCO4fYeW1Mq
 v9qSMSJuGkvjQ/8VflaZEOPQvIzykavjV9DpbTcUbhGZWcvi0fGLUR2Wt
 x8pAJnBlrQ1jKshbL50BQNAR5j29kl4syenejvkCcyp5oPyWrnq73X5aq
 NzzOgjsVhjySxLtoln+yee9PZBvwL6ht0B3Y5y5fJcm/WhUy0UcnLoYON Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="423131039"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="423131039"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956667022"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="956667022"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 14:22:33 +0300
Message-Id: <20230608112233.771453-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608112233.771453-1-jani.nikula@intel.com>
References: <20230608112233.771453-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move Makefile display debugfs
 files next to display
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Keep the display build lists together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index ac62cc54474b..5740e71bdef2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -91,9 +91,7 @@ i915-$(CONFIG_COMPAT) += \
 	i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
-	i915_debugfs_params.o \
-	display/intel_display_debugfs.o \
-	display/intel_pipe_crc.o
+	i915_debugfs_params.o
 i915-$(CONFIG_PERF_EVENTS) += \
 	i915_pmu.o
 
@@ -309,6 +307,9 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
 	display/intel_fbdev.o
+i915-$(CONFIG_DEBUG_FS) += \
+	display/intel_display_debugfs.o \
+	display/intel_pipe_crc.o
 
 # modesetting output/encoder code
 i915-y += \
-- 
2.39.2

