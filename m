Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 970AB61608B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8144B10E475;
	Wed,  2 Nov 2022 10:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD02E10E470
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383720; x=1698919720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qf/MRDfrzjagyQfBJrSf1HZr2KZPSt9bXCin8Qkfkkw=;
 b=Rwe7rMZnMXb2oAZk7GsJ2jWe4PiWtFZO+xO2Zlh11c0UOIyT/3Xq/SFb
 n+GjnUcLtzCvYuaGsCpg/DZ3PpG9R/2Y7Pj/foGlEvNYaHZW8MuLclRzX
 Cki8FabdBkCUy5Gca1mvOYoh/56TcGGeGQBzEED6Kqn+5sGrJP5adokTU
 g9mvh6upcEVAesGbYjfwqVydsZvXn3BKT6kCmfYRggrkRMzuVqbvfxS7T
 O/7pynPMYXpCnvjKISyhRMzj9IWMMW3A4/F+1LIb34jsrMAvJoLYgBvZY
 716igWLtTEAvSisCcwIMTFccAKHnDF0Jjpi5NVSUtQ32Sx6ZViSVVLF4p g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807554"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807554"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="628899238"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="628899238"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:10 +0200
Message-Id: <3aa1e27284e0ac308938978ae7da9ea9fbacad9e.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 02/16] drm/i915: reduce includes in
 intel_connector.h
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

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
index 7d7b588d2286..9d2bc261b204 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.h
+++ b/drivers/gpu/drm/i915/display/intel_connector.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_CONNECTOR_H__
 #define __INTEL_CONNECTOR_H__
 
-#include "intel_display.h"
+#include <linux/types.h>
 
 struct drm_connector;
 struct edid;
-- 
2.34.1

