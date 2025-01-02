Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC019FF700
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 09:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E33F10E3D8;
	Thu,  2 Jan 2025 08:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PsolfUv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D4F10E3DC;
 Thu,  2 Jan 2025 08:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735807022; x=1767343022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VONhs4NwRRa46JdiIlc3POgci7bRLdEcrX76sWaWxsQ=;
 b=PsolfUv3cFF2EcnLOdrgd9Xr+edttK/uMKULpj2I7/c1I3n9uwUpCXP0
 PDtsWJnckSSsUsWtymlz2HOA23bj1lOmQ7sHJyPEiX21azDgPVpRZnaiL
 hX6l8Rw2LjynivwsehyKQ9fjxhBntDz35dkGepPkcxKxU7EQRrzJfB230
 Aki1X5bV0Knqq51gAvBdUoXqd7Rj4n5YruZqVCB6LrrsXCYGSh4jxHDTu
 V0M66nU18WM9G4LqAu/9gjgk/gZBJhazDdcuJ0Z9ozNa3A1E8lZIlcTK0
 OeVe45lXtDpCOgd36uoV+ryh+2za+oQ3dX51Pn7XWnk3IWRK8cor+wbzP g==;
X-CSE-ConnectionGUID: aHhyK9b/Sdi7zsomDAoAMg==
X-CSE-MsgGUID: ditnGghxQx6ZgCcf5rk9tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="23626918"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="23626918"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:37:02 -0800
X-CSE-ConnectionGUID: Bt7CWzLlQ3mrGKP5i7uNAA==
X-CSE-MsgGUID: PC301lcJSlqKj0Cgs2eWag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="106314163"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.76])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 00:37:01 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 8/9] drm/i915/psr: Remove DSB_SKIP_WAITS_EN chicken bit
Date: Thu,  2 Jan 2025 10:36:37 +0200
Message-ID: <20250102083638.2552066-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102083638.2552066-1-jouni.hogander@intel.com>
References: <20250102083638.2552066-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We have different approach on how flip is considered being complete. We are
waiting for vblank on DSB and generate interrupt when it happens and this
interrupt is considered as indication of completion -> we definitely do not
want to skip vblank wait.

Also not skipping scanline wait shouldn't cause any problems if we are in
DEEP_SLEEP PIPEDSL register is returning 0 -> evasion does nothing and if
we are not in DEEP_SLEEP evasion works same way as without PSR.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index e6f8fc743fb4..8b7438032878 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -177,13 +177,12 @@ static u32 dsb_chicken(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	if (pre_commit_is_vrr_active(state, crtc))
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
+		return DSB_CTRL_WAIT_SAFE_WINDOW |
 			DSB_CTRL_NO_WAIT_VBLANK |
 			DSB_INST_WAIT_SAFE_WINDOW |
 			DSB_INST_NO_WAIT_VBLANK;
 	else
-		return DSB_SKIP_WAITS_EN;
+		return 0;
 }
 
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
-- 
2.43.0

