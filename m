Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16F898A6EF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 16:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B8010E50D;
	Mon, 30 Sep 2024 14:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6cBVINO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC4F10E50D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727706349; x=1759242349;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sCt8ZWWagrokexPUl3fJrXt/lf22oJEp4NbSqZhcJuY=;
 b=L6cBVINORUVX2ssaULRHtnkv5kyH7I0IGPX/0U1wg/s8f2v9E9JiB3rE
 GkewNhoPYngShelYwSjOFSTiF3kMacf4Wa6Dl7vBimfSiJ2rHNiobN/np
 0jr+Y9W3/Dg1TWZgGa8HaOrngv+FnfOZNflkS4w7I6s2qkZBRngqVqWWd
 BfXAxmWOijm/iBb4TaN0XmieeM/AzX+MMivDvc5kuyseDTCI7GC76xjoU
 93XSLZAaXlvAr2V/3rPM3r7RkWo46Fl91wGFEKxEcdOIHAPDU6yCqZz4k
 Vjo1O1ws3EgsWYqndSTic8/q0M4Cvvm5+26JnceUeAAaJV3VVcGOwtdXT g==;
X-CSE-ConnectionGUID: iwKv+rMPQ8+f0EXDJkKHwg==
X-CSE-MsgGUID: LU8T5eozSgaMY2cDVJcQZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="38183633"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="38183633"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:25:49 -0700
X-CSE-ConnectionGUID: uC7GjdZGSfWLl2g50kwwug==
X-CSE-MsgGUID: eoisdAVxRWa/lifIemPsEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73590056"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:25:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/dp: Write the source OUI for non-eDP sinks as
 well
Date: Mon, 30 Sep 2024 17:26:12 +0300
Message-ID: <20240930142612.214061-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240930142612.214061-1-imre.deak@intel.com>
References: <20240930142612.214061-1-imre.deak@intel.com>
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

At least the i-tec USB-C Nano 2x Display Docking Station (containing a
Synaptics MST branch device) requires the driver to update the source
OUI DPCD registers to expose its DSC capability. Accordingly update the
OUI for all sink types (besides eDP where this has been done already).

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11776
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ab6c917052b5c..85fbc851095ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3341,9 +3341,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
-	if (!intel_dp_is_edp(intel_dp))
-		return;
-
 	/*
 	 * During driver init, we want to be careful and avoid changing the source OUI if it's
 	 * already set to what we want, so as to avoid clearing any state by accident
@@ -4156,6 +4153,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp_init_lttpr_and_dprx_caps(intel_dp) < 0)
 		return false;
 
+	intel_dp_init_source_oui(intel_dp);
+
 	/*
 	 * Don't clobber cached eDP rates. Also skip re-reading
 	 * the OUI/ID since we know it won't change.
@@ -6032,6 +6031,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 	if (long_hpd) {
 		intel_dp->reset_link_params = true;
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		return IRQ_NONE;
 	}
 
-- 
2.44.2

