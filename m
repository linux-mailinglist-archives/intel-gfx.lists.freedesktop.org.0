Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4342B107CB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 12:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA5510E1E4;
	Thu, 24 Jul 2025 10:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iaXtsYls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6445610E009;
 Thu, 24 Jul 2025 10:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753353000; x=1784889000;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ApvksXXAERGgAKfjTmhyavwJDjrgJUdmHdDmYrTi/Kw=;
 b=iaXtsYlszo6Jhaxvcy6NbxbGhcLcfcgrUwvLkqBO/uMggSDM8FRnmkT0
 8Y5u1hmIEFa70bWFzwDvStaqt5IcrAVBwGhv8RBfR2kZA5INkNhI2M0KO
 gUsKzLnLyFBxoGuVAypeHZNZeoYH/0FawDO2lUGO8fuQ3C7h+t4vxuRKC
 fvRUIkFUKDHxvcI/k0BR+FMtGIFJJC+DKm931CY3ZFMwVhuCj/y1mX2MC
 Dryd8mIeUK+2K4gogwRJvmoypSqMiiXYezS5GsrlCpDTxLtfDEQeUgrrq
 38VaZi3W4mjpL14O1tRobIbuoHArPLYbnAMatiN5el1MuB6+oQfM3lGQL A==;
X-CSE-ConnectionGUID: lo1pGnyKSG6tp7hi0RXauw==
X-CSE-MsgGUID: eDuVNXviT9eWcuQBstDguA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55764953"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="55764953"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 03:29:59 -0700
X-CSE-ConnectionGUID: 9GSlv8onRm+z/QcVnF6kdg==
X-CSE-MsgGUID: pFZlPJhyS4iRvDC4D/lfVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="160871959"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jul 2025 03:29:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vblank: Change log from err to debug
Date: Thu, 24 Jul 2025 15:59:54 +0530
Message-Id: <20250724102954.2573715-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Let Potential update error just be a long instead of an big error
we already have Atomic Update error log which shouts out if
something really goes wrong.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 70ba7aa26bf4..3e51deca0c21 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -724,9 +724,9 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 			break;
 
 		if (!timeout) {
-			drm_err(display->drm,
-				"Potential atomic update failure on pipe %c\n",
-				pipe_name(crtc->pipe));
+			drm_dbg_kms(display->drm,
+				    "Potential atomic update failure on pipe %c\n",
+				    pipe_name(crtc->pipe));
 			break;
 		}
 
-- 
2.34.1

