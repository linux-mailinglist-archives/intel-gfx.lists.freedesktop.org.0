Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943249A0B5A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9131710E6F8;
	Wed, 16 Oct 2024 13:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFfKwZKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6E010E097
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729085040; x=1760621040;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yDSuWWWq7xW5WStexCr+xjPtG01rayGJfoxfPKIOlHw=;
 b=SFfKwZKggdGe6fAO1TxO0iSM53f3ycjqaAsHc2KnezsOgkpA/gR5F5L2
 cvpJEtbxy78P5Ew85Ly6JD8DZzf6po5L1VQZ08UgY5yOBnI2OpyxviIj0
 omFHMvyo3Bcxcy/m8vnvJqBGOiV6aDAqOYb+Et/5Aykjm1R7sdvT/watk
 KAk8n2nVGmvsTyJpKgEwOsC+EKWXPfO6N7X8oetWeya7NC6LbLBxyacyT
 n3wO+9TG8QCKbdsrn0xxNRc0KLYLwrcFvgUX4PtYG8AQCIOZCXSJIZ1nb
 AKNK11ghEbWVTwnhHwWVcuKv3/VbdmvTRA9pzmh1wlm4YaRB2Y82JV6Tp Q==;
X-CSE-ConnectionGUID: wuhMOklxSdmLwBgSMOHREA==
X-CSE-MsgGUID: BE6l7UYUSiuR3HyMPRjmtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46005984"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46005984"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:43 -0700
X-CSE-ConnectionGUID: EttzlE2MS4mOZCP16IgCUw==
X-CSE-MsgGUID: 2Gu0bDItSM2l6wRmVB9Vig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78384458"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:23:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 6/8] drm/i915/dp: Write the source OUI for eDP before
 detecting sink capabilities
Date: Wed, 16 Oct 2024 16:24:03 +0300
Message-ID: <20241016132405.2231744-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241016132405.2231744-1-imre.deak@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
MIME-Version: 1.0
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

The eDP sink's capabilities, like DSC, may depend on the source OUI
written to the sink, so ensure the OUI is written before reading out the
capabilities.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e2c37680caa91..520cc6f50a126 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4200,6 +4200,12 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 		intel_dp->use_max_params = intel_dp->edp_dpcd[0] < DP_EDP_14;
 	}
 
+	/*
+	 * If needed, program our source OUI so we can make various Intel-specific AUX services
+	 * available (such as HDR backlight controls)
+	 */
+	intel_dp_init_source_oui(intel_dp);
+
 	/*
 	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
 	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
@@ -4212,12 +4218,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	/* Read the eDP DSC DPCD registers */
 	intel_dp_detect_dsc_caps(intel_dp, connector);
 
-	/*
-	 * If needed, program our source OUI so we can make various Intel-specific AUX services
-	 * available (such as HDR backlight controls)
-	 */
-	intel_dp_init_source_oui(intel_dp);
-
 	return true;
 }
 
-- 
2.44.2

