Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB8693B051
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 13:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8C110E68F;
	Wed, 24 Jul 2024 11:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzBaYX7U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECEB10E2FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721820655; x=1753356655;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EnQJRyEWZN4sVKhiSOyW6XGhQNtI8DLLf8AbtK2xoyo=;
 b=WzBaYX7U7qw7taJJdGJpzKd2NrmmfsH+CpawW8G8JJEPSkJrFSu25ijg
 SCRROlqqypUDdzJ2hZcNZ/k2Uy01OuUnA7ZjK/8kg71ZHt3OHoJ8ZdkOL
 1uvEwhxwLg527AS1422VbNJpjkg+vp6oP2Uh+dTyH2N2kMDbHV4X+V9ps
 RNDd647DFSSZSIq8VwoGZUGdnrTBXmezD5SFd6bynONfCLAhbajkijeY9
 3faPlR56pZLMnQUimYrnbLXST8OiYd/203AIgmsSPFX3ogdJFefl/Neud
 ZCBINK8Ob4EykxLMOS15eLf76HZhXUauMBuAJWbgT+lvDcxEV11yeRNMN g==;
X-CSE-ConnectionGUID: qlzbluXgQfO+7xEXYYMOgg==
X-CSE-MsgGUID: P5Vzw6qtQNmVTymm2fKGyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30881141"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="30881141"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 04:30:55 -0700
X-CSE-ConnectionGUID: 7tL3nd9BQrWFNg1HGHRJYQ==
X-CSE-MsgGUID: sUOqXrPfRV2e3ZSuAgRD3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="57677539"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 24 Jul 2024 04:30:53 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: juha-pekka.heikkila@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar yuv
Date: Wed, 24 Jul 2024 17:00:26 +0530
Message-Id: <20240724113026.940791-1-nemesa.garg@intel.com>
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

Underrun/corruption issue is seen for NV12 format
for odd panning on LNL due to hardware bug.
Disable the format.

HSD: 16024459452

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..f927e6a0b28b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
 		 * This allows NV12 and P0xx formats to have odd size and/or odd
 		 * source coordinates on DISPLAY_VER(i915) >= 20
 		 */
+
+		/*
+		 * Wa_16023981245 for display version 20.
+		 * Disable odd pan for NV12 format.
+		 */
+		if (DISPLAY_VER(i915) == 20 && fb->format->format == DRM_FORMAT_NV12)
+			return 0;
+
 		hsub = 1;
 		vsub = 1;
 	} else {
-- 
2.25.1

