Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC0C901BD7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 09:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3931910E320;
	Mon, 10 Jun 2024 07:22:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjDUTYnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050D310E2FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 07:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718004123; x=1749540123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e8qcgTW2dhOOlSCuU4/r4JEBFlvgVr5lgto9D98fpzw=;
 b=hjDUTYnhVWJy9/Xaq57n+REYuELiNHUwXSBrMwD43g/l+jb5x+IT3A0N
 3jAaJdN9UPjX1ESCgo1Q5Dc5Tim5ub/lo+VkiNEXG+rE+BKULgOiKm0KI
 7aminnzNPXTcfWS6dXYoxXIAZPtqVjohysDwH+koHVJuXia5p0uCzsg82
 lHhCf7EOGYFU+4dERuJsJOErOQB0vdPdXJJQCWsCQrKo6QTCtu3vtr/aY
 gG2nZ97M0hiGgd2Eq1UN8Ru611Bp1DYxTh4WFqDDFQguJq0m7629qIkws
 K9gISnCSTlj7k/BRR5IPIr4QjcqGf8n/ZIchw2h2CynjzuicLOObFnIqM g==;
X-CSE-ConnectionGUID: EprQkfDPRj68elEY5Nl07Q==
X-CSE-MsgGUID: rLiKDqGSQP6n7ancwmi89g==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14526406"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14526406"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:22:03 -0700
X-CSE-ConnectionGUID: WNeNLWeoQuOi/qjNW39yBw==
X-CSE-MsgGUID: KCUcbUPkTOO78IAhFvVX3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="43407639"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 10 Jun 2024 00:22:02 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [PATCH v16 6/9] drm/i915/display: Add support for pack and unpack
Date: Mon, 10 Jun 2024 12:51:59 +0530
Message-ID: <20240610072203.24956-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240610072203.24956-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add support of pack and unpack for target_rr_divider.

--v2:
- Set Target Refresh Rate Divider bit when related
AS SDP bit is set (Ankit).

--v3:
- target_rr_divider is bools so set accordingly (Ankit).
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd054e16850d..ac81b172b1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4232,6 +4232,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
 	sdp->db[3] = as_sdp->target_rr & 0xFF;
 	sdp->db[4] = (as_sdp->target_rr >> 8) & 0x3;
 
+	if (as_sdp->target_rr_divider)
+		sdp->db[4] |= 0x20;
+
 	return length;
 }
 
@@ -4413,6 +4416,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
 	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
+	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
 
 	return 0;
 }
-- 
2.45.2

