Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B739D3AE4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF5610E74C;
	Wed, 20 Nov 2024 12:44:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPEK190v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1E610E74D;
 Wed, 20 Nov 2024 12:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106656; x=1763642656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vCAdj3FCjHHmQlqg4Q44BNmB5W0/sQDiJnx+MUAwS4Q=;
 b=iPEK190v7Y63/8W8zfny06YPi3SQ8V2nJtAErLf4LGFqjiJxcIbfKPKJ
 mR91FPjgw+yyvt3v7IQkaH+BDqX4Ibs7thbn/dpuOSdq0p4RDGyhtSx6j
 oErGlj36wXTMvSAJkI+2Iwwumi6F5sdNitH71ASSdgimkLEXzvaq+w4xd
 F3kOYURbQuZnyU1rXmJ71dG1B0qMJJMWIVy4o82u8SPRHZZRAIMcu4jFl
 VVzn4BfxrewliXfRjiKXnIx1oae9MCza4UheiDIKyKuYWZ9PzXoOMAx0L
 fM2hb6nkjlRD11TYK8AE4LsLk0Zi5HGV6pgxENnl8aRo4tmsoKotIsxbQ w==;
X-CSE-ConnectionGUID: A6t3HUPsT96oEVUJrtW3HA==
X-CSE-MsgGUID: YhqGoLj2QuGaQnJfe/etng==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="35018077"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="35018077"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:44:16 -0800
X-CSE-ConnectionGUID: PN0o0uy8R42DOqAj86LT3Q==
X-CSE-MsgGUID: bCrL0MesQmOX+JKJm155lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90295568"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:44:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 11/11] drm/i915/ddi: simplify intel_ddi_get_encoder_pipes()
 slightly
Date: Wed, 20 Nov 2024 14:43:19 +0200
Message-Id: <84892d31807bd8118474dd873e73c4d459f61448.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
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

