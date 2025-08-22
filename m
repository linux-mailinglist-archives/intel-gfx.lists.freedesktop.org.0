Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB50BB30A73
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 02:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614F810E165;
	Fri, 22 Aug 2025 00:42:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gsij1MsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB4C10E165;
 Fri, 22 Aug 2025 00:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755823369; x=1787359369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EdSf2SDY8MnMRylnBgZp3YaCc/oGB/y7hDP6+GEbtCY=;
 b=gsij1MsEQs2+4QtnYX0EBB5FOJZhujnbkUEOL9wWGQhYzHjMeZ3DDX9k
 W/vfy/dXycQm4Z4Fw+uiGKMemSLi6VFEF2uLqHLsVRru4Dx0gzSmtitYR
 ZVg+ZtmhY+E4fX97jv17BxmuDLp/kPGpMPP2Lb2Y49On+x7k4ZGgyrXDg
 +GeS8YQrh46/1j5zLW53eY+917IkRRZKXFI+BMp/fftmDpyp5nTi3Jf51
 /4uvK7zc7/HRq1lKM8Y3Sjy2ILKl9oX9sbi/QvrB74ezhkuU7WPy3IA5S
 Iwiw9Oe4rxPP1tPBOKRAgNO3bwjEC4bwe3FTUUKGJUjdE7xEjRaVney1E g==;
X-CSE-ConnectionGUID: AwqmiNx6QPC/eGDym4RxjQ==
X-CSE-MsgGUID: F0mVhCYyRAy5zx48ApPJ3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="57839138"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="57839138"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 17:42:49 -0700
X-CSE-ConnectionGUID: VrJUlEAnQfCegzKQKtuXAQ==
X-CSE-MsgGUID: FETlVhb+TyKL1Kvr07BSOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="199525133"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 21 Aug 2025 17:42:46 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: shekhar.chauhan@intel.com, matthew.s.atwood@intel.com,
 gustavo.sousa@intel.com, francois.dugast@intel.com
Subject: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
Date: Fri, 22 Aug 2025 05:55:12 +0530
Message-Id: <20250822002512.1129144-1-chaitanya.kumar.borah@intel.com>
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

The commit 9ab440a9d042 ("drm/xe/ptl: L3bank mask is not
available on the media GT") added a workaround to ignore
the fuse register that L3 bank availability as it did not
contain valid values. Same is true for WCL therefore extend
the workaround to cover it.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/xe/xe_wa_oob.rules | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 8d0aabab6777..8bef2f567faf 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -48,7 +48,7 @@
 16023588340	GRAPHICS_VERSION(2001), FUNC(xe_rtp_match_not_sriov_vf)
 14019789679	GRAPHICS_VERSION(1255)
 		GRAPHICS_VERSION_RANGE(1270, 2004)
-no_media_l3	MEDIA_VERSION(3000)
+no_media_l3	MEDIA_VERSION_RANGE(3000, 3002)
 14022866841	GRAPHICS_VERSION(3000), GRAPHICS_STEP(A0, B0)
 		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0)
 16021333562	GRAPHICS_VERSION_RANGE(1200, 1274)
-- 
2.25.1

