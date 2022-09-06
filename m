Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA865AE02E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 08:49:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2469610E57D;
	Tue,  6 Sep 2022 06:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B303B10E576
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 06:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662446965; x=1693982965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8jj7uRdpSDkSED9qm2Ip0CAMW2sUNCYeEccipf3PLro=;
 b=jFfrn+tox6Pv5cV/1CDXtnfPp84uki+CRHlnCBsN+pIST4HQ/Ya9H2U1
 +XZD+B2ATKmMqPrD0NBAcDkVDrc3DPFW6waBVUvF4XhJSwSspY3tjth9v
 R6mnrPdapWBKS9mzZ9piERHO1t5CM0M1cEzLFK+C4Rh7XsMCdWjw3M0fZ
 8IUS/6nBoNK+7XtpdcyBWXN9FdoksUZTKPVoikEVlJf9rsFLlaXKxAz4M
 +lzVOoHwhsPbmmKvBrnqYzc3M1sWNbq0ilz9HgX6jimtilKdBgQNg/5f+
 BkPplVGnb/3eEGdTtCfS5+413kSdJiEqVnIQk/etquBU6NQ2jktuMDgng A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="283514590"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; 
 d="scan'208,223";a="283514590"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 23:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; 
 d="scan'208,223";a="675556907"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga008.fm.intel.com with ESMTP; 05 Sep 2022 23:49:23 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 12:15:44 +0530
Message-Id: <20220906064544.27586-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220906064544.27586-1-animesh.manna@intel.com>
References: <20220906064544.27586-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enabled 2nd pps for dual EDP
 scenario
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

From display gen12 onwards to support dual EDP two instances of pps added.
Currently backlight controller and pps instance can be mapped together
for a specific panel. Extended support for gen12 for dual EDP usage.

TODO: For dual EDP scenario and panel type invalid (=255), special condition
check to be added to reject or initialize the panel specific stuff earlier.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 4e770218e29f..a9ed1214a167 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1427,7 +1427,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
 		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
-- 
2.29.0

