Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0EF9967E9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 13:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DFD10E290;
	Wed,  9 Oct 2024 11:01:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AX9SxKqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9D410E1C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 11:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728471668; x=1760007668;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0KrVNnRhAKoYqzpn14TORPl241M+i1NKO3QRhMq0fuw=;
 b=AX9SxKqj1ueUhFZ3T4r8iv9zS6M0mK3eu7s5T9DPTmWbAPKqxjRjgRH5
 w5XnB86TeWFi4LjJb6Ld/0KI5GVNF+AbA66PoAFGq9OrcZoQKHoSiAc4s
 raICh9tiGjt/Tr30cuB+A1/lXolM4p6KoZWG5Yhs70/JYcCK72FFMNdyC
 LGCR6xZTaEmY0wbhSsrltix9/iQ4bNikE+Gxa8ZcCg+ALi1qavgsI338u
 cfMCmzqgDGQ7afcYLJQnanW4lADzA/GHj3Mq5FPhbMN+3LGNsVfombi+e
 3YFg80MOJgI9blFPSBehyxAqFShD1nkRqavsgn8XIOlhEuAW/bJL1LEwQ A==;
X-CSE-ConnectionGUID: TVUZ4ziOR66q+jVolQ2gig==
X-CSE-MsgGUID: ihYtriQBRlaac6umOxtnWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31653630"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31653630"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:01:08 -0700
X-CSE-ConnectionGUID: n/ebehb4QUuF6q3CIeLykA==
X-CSE-MsgGUID: XwU5C86tQWGQ+U8OVZD0cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76659555"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 04:01:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/dp_mst: Don't require DSC hblank quirk for a
 non-DSC compatible mode
Date: Wed,  9 Oct 2024 14:01:35 +0300
Message-ID: <20241009110135.1216498-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241009110135.1216498-1-imre.deak@intel.com>
References: <20241009110135.1216498-1-imre.deak@intel.com>
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

If an MST branch device doesn't support DSC for a given mode, but the
MST link has enough BW for the mode, assume that the branch device does
support the mode using an uncompressed stream.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2822ae1160034..1a2ff3e1cb68f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -467,6 +467,9 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 	if (mode_hblank_period_ns(adjusted_mode) > hblank_limit)
 		return false;
 
+	if (!intel_dp_mst_dsc_get_slice_count(connector, crtc_state))
+		return false;
+
 	return true;
 }
 
-- 
2.44.2

