Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EC67263BF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 17:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EB5C10E502;
	Wed,  7 Jun 2023 15:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE0F10E502
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 15:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686150606; x=1717686606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4BstlOkVRSVkzNSEYMFZ4QoRxmDYsPkdrl75vZ/n2ps=;
 b=hCs52mHtMi3oMxA04eVBRs3eWvo8IZRFkfTzASEZhCjPiQTBpVqWgLHh
 wketO6NPZqIkr6xUD+bswMfd+3eJvaA06+m/94wzVkvWGaDrQFm5n427S
 S538tWcKDYspNPr87vShTR3w33fbRikEI/DjuMqWAW+/VCMhxiIWZwDfR
 pGmy57PB0ToUeVrlnB8PGJveW8Nd+wBqjTKBArY0smdDRD4WRPH9jo7rg
 Pv8XBsbkhp/ns04XSshnkrRDvuImcWfc4DDVRYkki6yog3+LbQqLScG/D
 +8OhuFEQgPMBBAPe2toej0lM6Jr+ukUkUAk/uL8c7S60hM+4gFkpCmD1y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336644499"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="336644499"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:09:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="712690115"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="712690115"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 08:09:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 08:09:46 -0700
Message-Id: <20230607150946.1996087-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Include of display limits
 doesn't need 'display/'
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drop the unnecessary directory prefix.  This also makes
intel_display_device.h easier to use from the Xe driver.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4f931258d81d..706ff2aa1f55 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-#include "display/intel_display_limits.h"
+#include "intel_display_limits.h"
 
 struct drm_i915_private;
 
-- 
2.40.1

