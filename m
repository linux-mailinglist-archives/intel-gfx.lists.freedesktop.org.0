Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9171E627DA1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7967210E0BE;
	Mon, 14 Nov 2022 12:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B56F10E095
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428593; x=1699964593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ix/pARqpISnap3u5+H3dScpGe1CncjjGMnby3zETASA=;
 b=WUCS7KvN6Xxj3HuuTHnp8TXCktfZssiKQs7LtOde0uiuJLhMHLGFBbD/
 fPH6z52ikb0JtTuNRdJCjG5x10xmpPpBX0OqN6gXJPOPPQs4OXAXet6UD
 /uGXiCptDpihGRV3eAPnMYG68llNq/3+YY+oOx80WYkRJxhVl2S5677HF
 kglao5thweXYtLS1U4YiCKoD31ZBeg8aM0mxytdrgU7fv27YzvozUnuwN
 dWX8h2rvtntrh5htsVzj3D6nMMiPMt1Tnn/K8P4/YQHyxRdQ59qoJBZbn
 xw6AbVEi+np/c8zA+X86Bpdq5JI5h05OxVh1ykSLW6jpuOIUIWD8CnzFm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664106"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664106"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539828"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539828"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:22:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:43 +0200
Message-Id: <20221114122251.21327-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/9] drm/i915: Fix warn in
 intel_display_power_*_domain() functions
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

The intel_display_power_*_domain() functions should always warn if a
default domain is returned as a fallback, fix this up. Spotted by Ville.

Fixes: 979e1b32e0e2 ("drm/i915: Sanitize the port -> DDI/AUX power domain mapping for each platform")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4c1de91e56ff9..1874339e59457 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2433,7 +2433,7 @@ intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
 {
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
 
-	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_io == POWER_DOMAIN_INVALID)
+	if (drm_WARN_ON(&i915->drm, !domains || domains->ddi_io == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_PORT_DDI_IO_A;
 
 	return domains->ddi_io + (int)(port - domains->port_start);
@@ -2444,7 +2444,7 @@ intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port po
 {
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
 
-	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_lanes == POWER_DOMAIN_INVALID)
+	if (drm_WARN_ON(&i915->drm, !domains || domains->ddi_lanes == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_PORT_DDI_LANES_A;
 
 	return domains->ddi_lanes + (int)(port - domains->port_start);
@@ -2470,7 +2470,7 @@ intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch
 {
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
 
-	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID)
+	if (drm_WARN_ON(&i915->drm, !domains || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_AUX_A;
 
 	return domains->aux_legacy_usbc + (int)(aux_ch - domains->aux_ch_start);
@@ -2481,7 +2481,7 @@ intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch au
 {
 	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
 
-	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_tbt == POWER_DOMAIN_INVALID)
+	if (drm_WARN_ON(&i915->drm, !domains || domains->aux_tbt == POWER_DOMAIN_INVALID))
 		return POWER_DOMAIN_AUX_TBT1;
 
 	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
-- 
2.37.1

