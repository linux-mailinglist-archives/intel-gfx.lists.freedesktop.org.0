Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDEE9D139E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC7110E4FC;
	Mon, 18 Nov 2024 14:50:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNZGjBAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F02A10E4FC;
 Mon, 18 Nov 2024 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941405; x=1763477405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nmyT4R7uNbBOKPqYXsQHjT8JxkWsGxgFusBdv6zW2CI=;
 b=WNZGjBAEnVHm2fWQI8lRJpC0YRUtl/HvsufzyLdmbXjTaJFKHfZEzhtX
 ArP5j8PpGNH3urPACWqOafe1iO5THzFm9QjxaXN/B60+J5k5Wnmo2D5z4
 Op915KtBNtMoaPxAkH2G+05Ajorsz9+eC5/1paN2gv0KFjlfBHETs9hSy
 H9TBF1gu9wOmQCw3/t7I5t1eDMzpnerHQ2CpIpamYGGCngSwQCYIO9Yfc
 oJzCS1hEEDhY6oncYXL6Ajdx2P+udNpOlH4/RoIdZ6tOsrTTYrYOLzXki
 3As47eUtVVaNIScDAkwA2g0+nIfeiMx5F7+pHkZGdpPWncveACak/EhyF w==;
X-CSE-ConnectionGUID: ng/f4w2LSeKcJTLPR1DmKg==
X-CSE-MsgGUID: wmCfuG2qTk6tAZo08m0nXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31307172"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="31307172"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:50:05 -0800
X-CSE-ConnectionGUID: hjpYaks5Rl2nYJdEvRXNHA==
X-CSE-MsgGUID: Ma2V6zmzSIetFCt50vGv2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="94289260"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:50:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/11] drm/i915/ddi: simplify intel_ddi_get_encoder_pipes()
 slightly
Date: Mon, 18 Nov 2024 16:49:06 +0200
Message-Id: <0aa1274597fa84a0dc3c9ccf7bb20997d1d154bf.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

Use a temporary variable for DDI mode to simplify the conditions. This
is in line with the other places that read DDI mode.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 33628cbc0f72..e25b712bf03b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -818,7 +818,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	mst_pipe_mask = 0;
 	for_each_pipe(dev_priv, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
-		unsigned int port_mask, ddi_select;
+		u32 port_mask, ddi_select, ddi_mode;
 		intel_wakeref_t trans_wakeref;
 
 		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
@@ -842,9 +842,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		if ((tmp & port_mask) != ddi_select)
 			continue;
 
-		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
-		    (HAS_DP20(display) &&
-		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
+		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
+
+		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
+		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))
 			mst_pipe_mask |= BIT(p);
 
 		*pipe_mask |= BIT(p);
-- 
2.39.5

