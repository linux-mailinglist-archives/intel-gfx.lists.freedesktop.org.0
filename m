Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E69B1731E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 16:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CE210E7AC;
	Thu, 31 Jul 2025 14:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCiVeqZ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560C610E7AA;
 Thu, 31 Jul 2025 14:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753971707; x=1785507707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oFS0agkHQD8XA1SeZwpm3xbR7C3q8Ud6rZXfHmKOCJo=;
 b=MCiVeqZ0U96aYjQWfp5YEK7SHM20VIuMGcI4ozBmIHXxwpgZkrcG/KDg
 UkisMUTc7Pb1KWFePfiMzWZ3IO+hc0tYGFKCjVQwfY4hzKge8MURd/Xu3
 BRTZISQ0JYafc+FUVVLq6i4MVdbZtxMIRci5fBO0sLFurhnuz/jSHXzg7
 rjC4qPKuayPbl1X7dZXcwsI8R+8ikoEUCBVEVEsKA8rfhaJWhsW3IMY9O
 sodjgzwtYBakvpAcE8cDwFtktGOFSvGz71qXbnotihpUU0Ip2BmT1sYK8
 GsAQEeGV7behVh6vkrZDt+goodWvz8kutW9ezXK8aznbSglcIexJqC6Q4 g==;
X-CSE-ConnectionGUID: 8V/2NFxNTZu4q5zZjNcARQ==
X-CSE-MsgGUID: feCoJbmJTw2JaRt5PQRecw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66992244"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66992244"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:47 -0700
X-CSE-ConnectionGUID: xrbUZrMZRH6BbA9lulI7rA==
X-CSE-MsgGUID: DaeP0oNvQL+RQ8gh2NIlIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167453076"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/rps: use intel_fsb_freq() and intel_mem_freq()
Date: Thu, 31 Jul 2025 17:21:23 +0300
Message-Id: <c97769ae07cf42dfc8358b7177ab889c048fee89.1753971617.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753971617.git.jani.nikula@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
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

The rps init only happens once, so it's not important to use the cached
versions, and we can drop the dependency on them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0b35fdd461d4..006042e0b229 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -9,6 +9,7 @@
 
 #include "display/intel_display.h"
 #include "display/intel_display_rps.h"
+#include "soc/intel_dram.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -276,20 +277,24 @@ static void gen5_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
+	unsigned int fsb_freq, mem_freq;
 	u8 fmax, fmin, fstart;
 	u32 rgvmodectl;
 	int c_m, i;
 
-	if (i915->fsb_freq <= 3200000)
+	fsb_freq = intel_fsb_freq(i915);
+	mem_freq = intel_mem_freq(i915);
+
+	if (fsb_freq <= 3200000)
 		c_m = 0;
-	else if (i915->fsb_freq <= 4800000)
+	else if (fsb_freq <= 4800000)
 		c_m = 1;
 	else
 		c_m = 2;
 
 	for (i = 0; i < ARRAY_SIZE(cparams); i++) {
 		if (cparams[i].i == c_m &&
-		    cparams[i].t == DIV_ROUND_CLOSEST(i915->mem_freq, 1000)) {
+		    cparams[i].t == DIV_ROUND_CLOSEST(mem_freq, 1000)) {
 			rps->ips.m = cparams[i].m;
 			rps->ips.c = cparams[i].c;
 			break;
-- 
2.39.5

