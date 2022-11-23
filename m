Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD96636C40
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3146D10E638;
	Wed, 23 Nov 2022 21:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0650A10E643
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238336; x=1700774336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sHJTW14B6PuP26qhR3BMOXnIoA7scQ8kpuge7791mrY=;
 b=eYbwZvpmvCeSvyjMm+yLiZt0JG1geL6CCtx7Vb6mNl4OIqf3Hw8zmnrG
 Wx12CDAsvymbyb7JnIRu3WpCBz/2F8EV0y7DDoh9jEj3uGWBPu3d2gVRJ
 MYoyiic69vPNltqF12yKouxqyi79o2GpkqwQEE6EEW/VUB9wbxjnFqYM3
 fP1IaB28Up/WiRiys2AFy698bFUTboFjNp7xfeu9bzowUV2yxz9rwzPSX
 RBMgHT3+8LrGjieBj9OKImrlWMkMMkDabpLlAJzgLCPBKGt5MoBFbbxIB
 2Q8NsxalEoLGK0mZKVYEx7TFn6cMFnpMjuJbz0yw8Pj4/1lC19r01VEyQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315312717"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315312717"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="641985257"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="641985257"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:19 +0200
Message-Id: <79d038658e94b70d7214d74916fa7136f536d236.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915/dmc: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 081a4d0083b1..2580ccf4d6b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -433,9 +433,9 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	for (id = 0; id < DMC_FW_MAX; id++) {
 		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
-			intel_uncore_write_fw(&dev_priv->uncore,
-					      DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
-					      dmc->dmc_info[id].payload[i]);
+			intel_de_write_fw(dev_priv,
+					  DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
+					  dmc->dmc_info[id].payload[i]);
 		}
 	}
 
-- 
2.34.1

