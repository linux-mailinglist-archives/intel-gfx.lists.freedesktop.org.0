Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A732521434
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 13:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925ED10E283;
	Tue, 10 May 2022 11:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F37610E283
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 11:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652183403; x=1683719403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2Y7ARuDyBU4Or6UHUVThTTdL/H6eJhKVBLTytjMGcZs=;
 b=VmOCM+EsjAXBSuu2gEoyllq7OPW6yC8/xEwDxco2I7QjZXlpiyCUH6+q
 3MfkCkW+PoCpN00CmqNwuk5kzaBpmNockNcCTdEMp/5w72L72iQZnm0sl
 yWXECTcBYq3uYAdFfvBcfFuYq/5/miin6ZFC/XgCV2uQkx2/PkuE4Seti
 bpwHZuW2PTpdRBhVqTwXQm/NAGOv1FOP3is8DDuJTmFjtWipNbCOQDFrG
 fDj5NefWInHJEb94oE46v3FApjsx/CbHOTaUHFtbME48p7Sov69yvB1R7
 gKsAv37hOv+6jkEvfIm2ZfHuo6Rv4Vzat94XTBhlb7BArbN1JfAqMQfw3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269485677"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="269485677"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 04:50:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="738635382"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 04:50:00 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 14:49:57 +0300
Message-Id: <20220510114957.406070-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix 'mixing different enum types'
 warnings in intel_display_power.c
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the following sparse warnings:

drivers/gpu/drm/i915/display/intel_display_power.c:2431:34: warning: mixing different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    unsigned int enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    int enum port
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37: warning: mixing different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    unsigned int enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    int enum port
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43: warning: mixing different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned int enum aux_ch
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35: warning: mixing different enum types:
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int enum intel_display_power_domain
drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned int enum aux_ch

Fixes: 979e1b32e0e2 ("drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform")
Reported-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1d9bd5808849f..949edc983a169 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2428,7 +2428,7 @@ intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
 	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_io == POWER_DOMAIN_INVALID)
 		return POWER_DOMAIN_PORT_DDI_IO_A;
 
-	return domains->ddi_io + port - domains->port_start;
+	return domains->ddi_io + (int)(port - domains->port_start);
 }
 
 enum intel_display_power_domain
@@ -2439,7 +2439,7 @@ intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port po
 	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_lanes == POWER_DOMAIN_INVALID)
 		return POWER_DOMAIN_PORT_DDI_LANES_A;
 
-	return domains->ddi_lanes + port - domains->port_start;
+	return domains->ddi_lanes + (int)(port - domains->port_start);
 }
 
 static const struct intel_ddi_port_domains *
@@ -2465,7 +2465,7 @@ intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch
 	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID)
 		return POWER_DOMAIN_AUX_A;
 
-	return domains->aux_legacy_usbc + aux_ch - domains->aux_ch_start;
+	return domains->aux_legacy_usbc + (int)(aux_ch - domains->aux_ch_start);
 }
 
 enum intel_display_power_domain
@@ -2476,5 +2476,5 @@ intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch au
 	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_tbt == POWER_DOMAIN_INVALID)
 		return POWER_DOMAIN_AUX_TBT1;
 
-	return domains->aux_tbt + aux_ch - domains->aux_ch_start;
+	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
 }
-- 
2.30.2

