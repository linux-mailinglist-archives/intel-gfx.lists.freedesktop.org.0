Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EB1973A01
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 16:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD5E10E102;
	Tue, 10 Sep 2024 14:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYc728sA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DD310E102
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 14:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725978965; x=1757514965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8VEDW5RA8BC7rz8mWsrKa2ZKyLuNDVFmBqrmfdqi5TA=;
 b=jYc728sAUy2zCKRw34Rl8M0Jx7MxnkruG/BgouFcLc6Cz9p8obYSv6lv
 1DlilqJWrfSgRxfiFaw15+DF+mFrmKI65qrQyTxskbdHImDjBgUyXhsR4
 1NGRNQoCnxsmRJV1a4etOfLsUvo65CTym7j30NaL3iM/SJgdv101CezuW
 TtRmYZ823ao7HYjH9nsrGymTgf3/9geK3zGJJzxznQKBSONfjnCKuDTIN
 MAPwncAT65OH9fhXx8gTF0FXAEQJh0jNgWvsoz6qLbkxuUM0tAOiLuZ/o
 CKbKvgUkbfSq+XH5qQleKsoyjfOgvgghujwoK6YlZUoIhtFtGHYQpBgjd w==;
X-CSE-ConnectionGUID: 68gfbDI4Tk68gJzfNPDgDQ==
X-CSE-MsgGUID: RnpzqTHES4yTBmMEfERQ5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35395436"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35395436"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 07:36:04 -0700
X-CSE-ConnectionGUID: MvyuUP8HShyLpmiNEMX/zg==
X-CSE-MsgGUID: gkZGGm9kSmmu4ZNiwcM2DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="71639458"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa004.fm.intel.com with ESMTP; 10 Sep 2024 07:36:03 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar yuv
Date: Tue, 10 Sep 2024 20:06:19 +0530
Message-Id: <20240910143619.143514-1-nemesa.garg@intel.com>
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

Disable the support for odd x pan for NV12 format as underrun
issue is seen.

WA: 16024459452

v2: Replace HSD with WA in commit message [Suraj]
    Modified the condition for handling odd panning

v3: Simplified the condition for checking hsub
    Using older framework for wa as rev1[Jani]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..4afe808f128c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1029,8 +1029,13 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 * This allows NV12 and P0xx formats to have odd size and/or odd
 		 * source coordinates on DISPLAY_VER(i915) >= 20
 		 */
-		hsub = 1;
 		vsub = 1;
+		/*
+		 * Wa_16023981245 for display version 20.
+		 * Do not support odd x-panning for NV12.
+		 */
+		if (IS_LUNARLAKE(i915) && fb->format->format != DRM_FORMAT_NV12)
+			hsub = 1;
 	} else {
 		hsub = fb->format->hsub;
 		vsub = fb->format->vsub;
-- 
2.25.1

