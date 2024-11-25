Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4594A9D851B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 13:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3ED10E625;
	Mon, 25 Nov 2024 12:10:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LexBOxSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A36A10E2CA;
 Mon, 25 Nov 2024 12:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732536606; x=1764072606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wMVf2NT1DMm1ldblECkAW8MG3X72aQt3vVR0qxlABTY=;
 b=LexBOxSKBhn/Q66dPHoCdS0CpVysw4g+yl+Bvebsl4J93Y3nRDDZUXn5
 jx2dmiQ7j6SJE8KbWe05Ls5W9/+XGfr4Z1IMx5iDm4Iky/uxgGMbTCfOX
 eA/z9Ns2BmBFlp/mueZe51/IfwPbko9t+9HEs/WOscsJ+u6T6PGCz3BXf
 281Jc3IBWi1b0y9+ul3Ab2hExWuK4bde7NT18YDgtFw3Y3AoXCgcC8GDQ
 b7KaDEK3duPAKrKX0bbvoYdQDXqv42zwqXMRjxF/SsuFhfYeokr8UFnig
 k/DGRKPeoeY+zdrBrgj/5IzQaZo/H+PEXd3HDYGFALH4Mmid6JvLC4Qen w==;
X-CSE-ConnectionGUID: fNvvgRO1TgmktPisNZmYfA==
X-CSE-MsgGUID: IigoBbXHSHqFwJvccHlHHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11266"; a="50160175"
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="50160175"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 04:10:06 -0800
X-CSE-ConnectionGUID: KUSZKn7zRsucTq+EJ5zDIA==
X-CSE-MsgGUID: O4YGxqeSRVyRCukr5TQZZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="96313686"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.15])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 04:10:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/ddi: clarify intel_ddi_connector_get_hw_state() for
 DP MST
Date: Mon, 25 Nov 2024 14:09:59 +0200
Message-Id: <20241125120959.2366419-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

encoder->get_hw_state() returns false for DP MST, and currently always
interprets 128b/132b as MST. Therefore the DDI MST mode checks in
intel_ddi_connector_get_hw_state() are redundant.

Prepare for future, and handle 128b/132b SST and warn on 8b/10b MST.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e25b712bf03b..7d37ddd9ad12 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -731,6 +731,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	if (!wakeref)
 		return false;
 
+	/* Note: This returns false for DP MST primary encoders. */
 	if (!encoder->get_hw_state(encoder, &pipe)) {
 		ret = false;
 		goto out;
@@ -752,12 +753,14 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
 		ret = type == DRM_MODE_CONNECTOR_eDP ||
 			type == DRM_MODE_CONNECTOR_DisplayPort;
-	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
-		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
+	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
 		/*
-		 * If the transcoder is in MST state then connector isn't
-		 * connected.
+		 * encoder->get_hw_state() should have bailed out on MST. This
+		 * must be SST and non-eDP.
 		 */
+		ret = type == DRM_MODE_CONNECTOR_DisplayPort;
+	} else if (drm_WARN_ON(display->drm, ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST)) {
+		/* encoder->get_hw_state() should have bailed out on MST. */
 		ret = false;
 	} else {
 		ret = false;
-- 
2.39.5

