Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 788139F09CB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150CB10E15E;
	Fri, 13 Dec 2024 10:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGEFr0Yk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AE910E15E;
 Fri, 13 Dec 2024 10:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086431; x=1765622431;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZvZe3yRc14kF4Mlh4qZ1QfLykJE495Tpx43hpRNKSlw=;
 b=kGEFr0YkmJ48uXRSW3bq8106Y/bB79v2h+A8sr9zEYlXoCjOQAfYki2H
 HUvpXdgM1aA7i2Y9ZXdLFTc9CW/5NUwCE5xL3LGgbnwT6zvJXnS85SotH
 RcXQ3BnzdJZFF3WZWtKS+umwzCfe27dGH5hPftjzlC1lteWtAZ5M8nUju
 97yhfgc1GkKCo8bo3VvlyZv15Q2yL+BKnG7IW2kpWick8p3mNSE2Fdc5w
 vr2CZZI1ILYBh8puoWK8vB+qIx1Up3Bc2Cy+SBiqJrS6AMSwMivtp+DFr
 CE5qEBbracCimSDFIjvTDZBRXfCkUlVZdEqbNZS7+FXmFn+s2FSXo35Oe w==;
X-CSE-ConnectionGUID: ksjpbDI6Swi1lSI6dpdPEw==
X-CSE-MsgGUID: sjyXlvjhTE6GOLYSJNp26w==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34670995"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34670995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:31 -0800
X-CSE-ConnectionGUID: N4P/8EnJThONWirUUAC0KA==
X-CSE-MsgGUID: PumQ0EEWTyOCeu9w06kxQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287437"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 04/13] drm/i915/mst: drop connector parameter from
 intel_dp_mst_compute_m_n()
Date: Fri, 13 Dec 2024 12:39:48 +0200
Message-Id: <4c83723abbd569e517f7f240a188b2a79b3e5ab5.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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

intel_dp_mst_compute_m_n() doesn't need the connector. Remove the
parameter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b7e4c530f7a6..322c8a1c8b0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -167,7 +167,6 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 }
 
 static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-				     const struct intel_connector *connector,
 				     int overhead,
 				     int bpp_x16,
 				     struct intel_link_m_n *m_n)
@@ -282,7 +281,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
 							      true, dsc_slice_count, link_bpp_x16);
 
-		intel_dp_mst_compute_m_n(crtc_state, connector,
+		intel_dp_mst_compute_m_n(crtc_state,
 					 local_bw_overhead,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
-- 
2.39.5

