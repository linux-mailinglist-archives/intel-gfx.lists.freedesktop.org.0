Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B981995FF9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 08:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3186110E659;
	Wed,  9 Oct 2024 06:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZWfi9FG5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD84910E658;
 Wed,  9 Oct 2024 06:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728456031; x=1759992031;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IoG/u7GXFbEyPNpNfkcetMLIiFTpSK2wCLLqGx7/v8M=;
 b=ZWfi9FG53FO8pFsXfmdOpmt1EG6LHAfZhYMuZJQUw15N+vPrCV/fvcbz
 ufeMYIegCYf2zSvTcEISg+mWpi8eFvQtsBYoPBuRM36P5zs8VCS9Sq4gG
 oD+zaKBRzUFtAkY3hki2FZ5ODgo/GrASRz7a9ZOCgMP74ER5S9EoER515
 trSJpkQ/FXJ+fb/7d6WtV4Vy5p6kPrHfQd0hCyBJM1DgJe6sf1mknAKf0
 Lc4qrx3eo6VsvJJ99tKN6YK+aPEqc7Vh1YSMHdGxal70gArV5Q9BYnhP8
 DGVnTW5ULX1XRQPCwS2pkkwFNIQJBBp6e/b8x5vs7QPKsoLqC3Vu3zyfL Q==;
X-CSE-ConnectionGUID: SeySQvrmSe+53SmOjcpLuw==
X-CSE-MsgGUID: mi0T8NmPROmp39lRRUx3Lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27821292"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27821292"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 23:40:31 -0700
X-CSE-ConnectionGUID: DFhF3iMRQjm8G6ZUB89LVQ==
X-CSE-MsgGUID: Ecxnf1lwRWiF1ISVVlWeVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80130266"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 08 Oct 2024 23:40:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/color: Use correct variable to load lut
Date: Wed,  9 Oct 2024 12:07:53 +0530
Message-ID: <20241009063753.1799234-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Use the blob variable instead of post_csc_lut as it may end up
being null.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index caf1af039960..22b7090c4f6f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1503,7 +1503,7 @@ static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
 		ivb_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		ivb_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
+		ivb_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
@@ -1531,7 +1531,7 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
 		bdw_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(0));
 		ivb_load_lut_ext_max(crtc_state);
-		bdw_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
+		bdw_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
 				PAL_PREC_INDEX_VALUE(512));
 		break;
 	case GAMMA_MODE_MODE_10BIT:
-- 
2.43.2

