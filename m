Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1DAAD4A7D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 07:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F7B10E342;
	Wed, 11 Jun 2025 05:41:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uye74xx1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C7310E342;
 Wed, 11 Jun 2025 05:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749620491; x=1781156491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZvqoQYQ07OOR4mUqscoY9oba9IfcbvToKIq4RMvc29I=;
 b=Uye74xx19gtEWVj2VYvzNV06RVtcMTQOWDzpR0CnVCpr5B0CFpeYTdca
 +n20CoX9mIjG4ebr9FCRlYgfoa89VjeWM7dGNZDlO6ZmZ3BvPszQJePg+
 ji97FrEubAJjYzh1qtJAuBYKhVmfbqyfXCz5EjY3tNQchw1IFHrRZzAdy
 hNMmt6kt/gD084utme60FzUXXORuPfZVWZ/ekskNl6QwFD4zTX/GHvQrW
 Vpgfxcq3t1JKlFDDleX5TYVrpQzLjf2FCC5DncaSR9yqbrdLg/ugMi3vD
 rAaxhOmSqCJjk4vxENWZ/cgI0zcALrKNcdrGwXWuElI+Hp6zNsNP2R+xJ w==;
X-CSE-ConnectionGUID: lmS/j+UzThiHV/QmpfUjCg==
X-CSE-MsgGUID: nh5OhstlSMahmreMUTgBug==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="63160409"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="63160409"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 22:41:30 -0700
X-CSE-ConnectionGUID: eY/a4FVyTnaJAk91auyWgw==
X-CSE-MsgGUID: A1NsdXFORcSR0dWPxGgJCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="151864185"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 22:41:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH] drm/i915/display: Fix macro HAS_ULTRAJOINER
Date: Wed, 11 Jun 2025 11:00:39 +0530
Message-ID: <20250611053039.377695-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Currently, Ultrajoiner is supported only on Xe2_HPD.
Update the HAS_ULTRAJOINER macro to reflect the same.

v2: Clarify the commit message to specify platform. (Jani)

Bspec: 69556
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 0ac5484c0043..4308822f0415 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -192,9 +192,8 @@ struct intel_display_platforms {
 #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
 						  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
-#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
-					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
-					 HAS_DSC(__display))
+#define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
+					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
-- 
2.45.2

