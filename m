Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187EFA00A0D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC04110E8C7;
	Fri,  3 Jan 2025 13:53:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ex5DI62M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7EDF10E8C8;
 Fri,  3 Jan 2025 13:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912380; x=1767448380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QW4/hZxs7DzgeXEP3cbZYpMqO51aU3/byye4Onjj7uA=;
 b=ex5DI62MsBIUDVKRCxPAxloiSjxGEdYf1nkdOnr1cnKFrzACK3ZHk8Ey
 qMy7BPb/VrHdsb3sufNKMszgS/CJ4jOT4A8+WIsMUjVlxOCquG54YeR66
 09zCtBXfVOG6ve2Vj8aIARcgasJAhOzHB+2JzZLdWeBG4Gs2fh8PgJEvz
 VkOpV4GCpgdy/QuiZ1MQAuUQ1/lTUyadKhn2xFAB27FFcUQk6bMDDNt96
 ImS/4boGoGMrsLJa1W5HcWzkKwZ+dHlPQQbjCbFJ/Q7XzUkHMIW10MKu7
 plSLJD/Q3opidEH3vWuxaHS2mxJrvig29byPiN6F67zXJ+w4Nxzz+3YO8 g==;
X-CSE-ConnectionGUID: MFoodhO8TwWH/mSAOe68BQ==
X-CSE-MsgGUID: nsV2Ys6YTVWDlJmCcJVRrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573806"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573806"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:00 -0800
X-CSE-ConnectionGUID: f3nt2+VvR9m8NgMXA1BpTQ==
X-CSE-MsgGUID: OWlUQLEsT7iSe6tqNyrNBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716697"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:52:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 03/16] drm/i915/mst: drop connector parameter from
 intel_dp_mst_compute_m_n()
Date: Fri,  3 Jan 2025 15:52:26 +0200
Message-Id: <eec2e9a2e2dc3d166ac94bb9de691246a14d3945.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f011d49a616a..ffca0d338bb2 100644
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

