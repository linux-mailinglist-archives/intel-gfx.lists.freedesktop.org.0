Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA62E89A51A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 21:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA4010E848;
	Fri,  5 Apr 2024 19:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bfjbCEsW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC6A113068;
 Fri,  5 Apr 2024 19:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712345900; x=1743881900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LOhKLbWSDDt1edgvouANJq1uzGMJF0dBEHvSiSCAlMo=;
 b=bfjbCEsW0GNX7FmboR8ax41szpCr2gU9vft7FrZJo3sDAXBuZSmAh5Hm
 KH7/IThNzm21z/BYVJb6Nmy9JBnmdHl6YAx8SFlNu+sXl52r0OC29R7fX
 661d8MKqge3vZp5ZBanD3/D+EG2hTFBz1DTJousGG5Tx6voPARzmU/meB
 Xve81lMT94qcSwB0gp1AJ6kOI5JeTK61nQjmYuj9e7I5UXxAB23oK277d
 mFH917msr1G9CZBgIWAJ91MQSpaAYxCMy8JJ8lu+VaQvjTkpuxRdVfIW0
 SKnxDhADLX2DFjeCF+F+92YxblooeV34Ofeu50GP4FYntSpad/s9KVW3i g==;
X-CSE-ConnectionGUID: hj54BcAeT6SzUqTAkzXA1g==
X-CSE-MsgGUID: 8qRWa7SbSK6zah/d8yvl1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7877858"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7877858"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:19 -0700
X-CSE-ConnectionGUID: k7WI2wb+R6GaMDMoy3ekYQ==
X-CSE-MsgGUID: DFMXNRpXQzK+pn0Gg0ay5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="19107826"
Received: from dtorrice-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 12:38:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 6/6] drm/xe/display: clean up compat i915_vgpu.h
Date: Fri,  5 Apr 2024 22:37:43 +0300
Message-Id: <e583679c00aae8fec78f988fa857cfc724a9fa2d.1712345787.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712345787.git.jani.nikula@intel.com>
References: <cover.1712345787.git.jani.nikula@intel.com>
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

There's a bunch of unnecessary stuff not needed by display code. Remove.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/xe/compat-i915-headers/i915_vgpu.h    | 26 -------------------
 1 file changed, 26 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
index 80b024d435dc..4931c7198f13 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
@@ -9,36 +9,10 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
-struct i915_ggtt;
 
-static inline void intel_vgpu_detect(struct drm_i915_private *i915)
-{
-}
 static inline bool intel_vgpu_active(struct drm_i915_private *i915)
 {
 	return false;
 }
-static inline void intel_vgpu_register(struct drm_i915_private *i915)
-{
-}
-static inline bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *i915)
-{
-	return false;
-}
-static inline bool intel_vgpu_has_hwsp_emulation(struct drm_i915_private *i915)
-{
-	return false;
-}
-static inline bool intel_vgpu_has_huge_gtt(struct drm_i915_private *i915)
-{
-	return false;
-}
-static inline int intel_vgt_balloon(struct i915_ggtt *ggtt)
-{
-	return 0;
-}
-static inline void intel_vgt_deballoon(struct i915_ggtt *ggtt)
-{
-}
 
 #endif /* _I915_VGPU_H_ */
-- 
2.39.2

