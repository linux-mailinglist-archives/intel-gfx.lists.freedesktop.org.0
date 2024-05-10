Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8728C279C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4EB10EDB5;
	Fri, 10 May 2024 15:24:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eorUKw3l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBD510EDBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354642; x=1746890642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fc9LMzfVfA8kIGsQHROwitMeqJT/4MCgMtc32Sl13Uw=;
 b=eorUKw3lDtImUhohX8/HSVYsWxsZIxh1O/wKAH08QoJUHXkiQVSiGoYE
 Ea6bQHhEW9FmM2cY7zjtQnUpLt2PnuUF4pgWtvTvRxmRs7kerLQxpzE3x
 yn2ihoGbB2m23Q4o5tED8b5nj0v94liIKwyzxfwwaOv7LuVxhk50INk6s
 3CfEVSwnn25ufIsVYsPwEJD6QTmN86YzdYBFOJh8/Bw/KVljDat6+L4VF
 qfV+8gI3AhxsweNLHgHWOAU/MS1UIdGMKSJJasXNaq7Se2nqqs9Z0Lp5P
 shiOCXZqvdNmD0S+CwaOcKtTn+xT4KBpc+AbrcmJawEpb8xK2WYW6PT1q Q==;
X-CSE-ConnectionGUID: eEGOxrB8SAOu8CJHoJJbeQ==
X-CSE-MsgGUID: NtgWmqrXQNKYU4hrvKX97w==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468869"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468869"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:24:02 -0700
X-CSE-ConnectionGUID: yUM1mrBgTNe2QTwrGO0HjA==
X-CSE-MsgGUID: 3sR8y/FATJiYfIIcels36g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594997"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:24:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/16] drm/i915: Drop useless PLANE_FOO_3 register defines
Date: Fri, 10 May 2024 18:23:22 +0300
Message-ID: <20240510152329.24098-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We only need register defines for the first two planes
on the first two pipes. Nuke everything else.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane_regs.h  | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 2222d0c760e8..0558d97614e1 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -234,49 +234,38 @@
 
 #define _PLANE_CTL_1_B				0x71180
 #define _PLANE_CTL_2_B				0x71280
-#define _PLANE_CTL_3_B				0x71380
 #define _PLANE_CTL_1(pipe)	_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
 #define _PLANE_CTL_2(pipe)	_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
-#define _PLANE_CTL_3(pipe)	_PIPE(pipe, _PLANE_CTL_3_A, _PLANE_CTL_3_B)
 #define PLANE_CTL(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
 
 #define _PLANE_STRIDE_1_B			0x71188
 #define _PLANE_STRIDE_2_B			0x71288
-#define _PLANE_STRIDE_3_B			0x71388
 #define _PLANE_STRIDE_1(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_1_A, _PLANE_STRIDE_1_B)
 #define _PLANE_STRIDE_2(pipe)	\
 	_PIPE(pipe, _PLANE_STRIDE_2_A, _PLANE_STRIDE_2_B)
-#define _PLANE_STRIDE_3(pipe)	\
-	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
 #define PLANE_STRIDE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
 
 #define _PLANE_POS_1_B				0x7118c
 #define _PLANE_POS_2_B				0x7128c
-#define _PLANE_POS_3_B				0x7138c
 #define _PLANE_POS_1(pipe)	_PIPE(pipe, _PLANE_POS_1_A, _PLANE_POS_1_B)
 #define _PLANE_POS_2(pipe)	_PIPE(pipe, _PLANE_POS_2_A, _PLANE_POS_2_B)
-#define _PLANE_POS_3(pipe)	_PIPE(pipe, _PLANE_POS_3_A, _PLANE_POS_3_B)
 #define PLANE_POS(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_POS_1(pipe), _PLANE_POS_2(pipe))
 
 #define _PLANE_SIZE_1_B				0x71190
 #define _PLANE_SIZE_2_B				0x71290
-#define _PLANE_SIZE_3_B				0x71390
 #define _PLANE_SIZE_1(pipe)	_PIPE(pipe, _PLANE_SIZE_1_A, _PLANE_SIZE_1_B)
 #define _PLANE_SIZE_2(pipe)	_PIPE(pipe, _PLANE_SIZE_2_A, _PLANE_SIZE_2_B)
-#define _PLANE_SIZE_3(pipe)	_PIPE(pipe, _PLANE_SIZE_3_A, _PLANE_SIZE_3_B)
 #define PLANE_SIZE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SIZE_1(pipe), _PLANE_SIZE_2(pipe))
 
 #define _PLANE_SURF_1_B				0x7119c
 #define _PLANE_SURF_2_B				0x7129c
-#define _PLANE_SURF_3_B				0x7139c
 #define _PLANE_SURF_1(pipe)	_PIPE(pipe, _PLANE_SURF_1_A, _PLANE_SURF_1_B)
 #define _PLANE_SURF_2(pipe)	_PIPE(pipe, _PLANE_SURF_2_A, _PLANE_SURF_2_B)
-#define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
 #define PLANE_SURF(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
 
@@ -351,7 +340,6 @@
 
 #define _PLANE_COLOR_CTL_1_B			0x711CC
 #define _PLANE_COLOR_CTL_2_B			0x712CC
-#define _PLANE_COLOR_CTL_3_B			0x713CC
 #define _PLANE_COLOR_CTL_1(pipe)	\
 	_PIPE(pipe, _PLANE_COLOR_CTL_1_A, _PLANE_COLOR_CTL_1_B)
 #define _PLANE_COLOR_CTL_2(pipe)	\
-- 
2.43.2

