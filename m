Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 584CF9AB413
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 18:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F8610E6C5;
	Tue, 22 Oct 2024 16:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eHe33ByN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E33F210E6C4;
 Tue, 22 Oct 2024 16:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729614715; x=1761150715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QsQbPkAbJMt8bv4wR4E/RwPv2jdEZ656pOSi/vSPgJY=;
 b=eHe33ByNOj22d5hp5R3OVAEHpDJxtkwDd5fuVBmRx+4AMLRHJ0sktblY
 JL+pf/TkFrnhEDWmdmBajxe3Shr10HR8IETgsAp4yre2Qor+cDARnyDlh
 MF+Ehn06dE61vLk1CXsokSnb02JXf/awpUeMniQ/EadsXLGoApWTAR85L
 a6xdmkP244GyIGD7mQxcXYnvzrAnfRxRwP1Nb382VKod5juB2OvZ6p1Xj
 mqfrc1BhCWKPnpCzU0TmWfGIE30EdgsrcWRZt4inH47psaVvyxKrEd5UA
 8PVtJAPgpT6qWWvLIlBvPOxurrvUZnyila6S6rU/d8W6XtrEm/ReQbELA A==;
X-CSE-ConnectionGUID: 50Z/dQGeQjmrqwc4JOAX6w==
X-CSE-MsgGUID: CsvoCRNpQhaPZe8VTRBJ3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32023459"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="32023459"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 09:31:54 -0700
X-CSE-ConnectionGUID: yyVAxkkCQcerxjVsMJPTmQ==
X-CSE-MsgGUID: UaYnk3AyTuOu08uDJxHJsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84737473"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa003.jf.intel.com with ESMTP; 22 Oct 2024 09:31:52 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Add Wa_16023981245
Date: Tue, 22 Oct 2024 22:01:17 +0530
Message-Id: <20241022163117.758401-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Disable the support for odd panning in x direction.

v2: Replace HSD with WA in commit message [Suraj]
    Modified the condition for handling odd panning

v3: Simplified the condition for checking hsub
    Using older framework for wa as rev1[Jani]

v4: Modify the condition for hsub [Sai Teja]
    Initialize hsub in else path [Dan]

v5: Replace IS_LUNARLAKE with display version.
    Resolve nitpicks[Jani]

v6: Replace -EINVAL with hsub [Suraj]
    Remove src_w check as not required

v7: Remove check for NV12.
    Add check for PTL as well [Matt]

Continuing discussions from:
https://patchwork.freedesktop.org/series/136416/

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b7e462075ded..d61528f18a36 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1024,6 +1024,12 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 */
 		hsub = 1;
 		vsub = 1;
+
+		/* Wa_16023981245 */
+		if ((DISPLAY_VER_FULL(i915) == IP_VER(20, 0) ||
+		    DISPLAY_VER_FULL(i915) == IP_VER(30, 0)) &&
+		    src_x % 2 != 0)
+			hsub = 2;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.25.1

