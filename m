Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8952C35FA6
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B76110E770;
	Wed,  5 Nov 2025 14:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YhrKlOBs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 044ED10E766;
 Wed,  5 Nov 2025 14:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351730; x=1793887730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HpbABsIT+lSGaMaHw3kQTsRRM+ysYJiywA3XrJ3rC/U=;
 b=YhrKlOBs0dBvi8PNodGXFRznpR9RPADE9tw5Df3opKFfHDzjJYfDwGSQ
 eBF9A/ajqmdEh1iUJ+wGDXcoX6o9dFE43uxgJgv8kre/HPKoBcn9bUzYT
 6OxSCKYA5mh1ylFDwDIDFr4HOamm6OfWb+JD47foszdqb1JMZ1xwMvyDS
 KrUiqH9aiR1FmJ/htm93lOBGpc8B57+VEdEFqhSdsiFcHOhfRo9XXTL6L
 P7qLBdkjifv6qXFQKyxmOV1Lc6UEVYFaa1y8JVWSqboW3x8VDY7QKH91v
 Tt+AejBOy1ENXlWWXeHpcRR2ll+52fEP4E5S4tK7A3HwUjb3Pfvf7ohNB g==;
X-CSE-ConnectionGUID: ZHVGd9QSTXmPV3dNKku7VA==
X-CSE-MsgGUID: P3cWx81uTG6UX2zo+jzZMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348421"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348421"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:28 -0800
X-CSE-ConnectionGUID: Y0gQraaXQxKET15Y+bK+dg==
X-CSE-MsgGUID: L2Mw6UoGSVSo/r3bUC+oWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562993"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:26 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 12/17] drm/i915/xe3p_lpd: Don't allow odd ypan or ysize with
 semiplanar format
Date: Wed,  5 Nov 2025 11:07:01 -0300
Message-ID: <20251105140651.71713-31-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>

Disable support for odd panning and size in y direction when running on
display version 35 and using semiplanar formats.

Bspec: 68903
Signed-off-by: Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-12-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 505c776c0585..5105e3278bc4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1051,6 +1051,9 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		     DISPLAY_VERx100(display) == 3002) &&
 		     src_x % 2 != 0)
 			hsub = 2;
+
+		if (DISPLAY_VER(display) == 35)
+			vsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.51.0

