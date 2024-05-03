Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60AE8BA6E5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 08:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C586B1126A1;
	Fri,  3 May 2024 06:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lczRPJEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555691126A1
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 06:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714716400; x=1746252400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uShJXmf07tNQUCxbOabQtr4CY6xW5QPHCecHbSODqWY=;
 b=lczRPJEjBMPe2hJVE93ipY0TM06unLZCqqrkLS0F4ZqorxeOkJMvINjK
 hLuVhToUzSeHJIKTAucm6flhaCdmhXChejVbgEGEAHHnn0jEhLu09YHaA
 lvmsmzXjl+wuRrhaH1cBaElMBGbfdDoHY3SbWElWJTWHk+fgS35+qQQ47
 12LwpOoH8HMKMxyhj+5DdfwEajwpJQ3HEdRBggOfMIBxeHHP/2RIep1nq
 zT4w76yDCOvvvb2H/lJ5XhPp9mWSD67G/VyjI7wUx1M+NqNxd5rlYinc6
 6fAlt2ndUNcbLSeJC8yFqWsGZ+uoUQ41OsDhXFJe/wMsiRp7PBvb3mDpt w==;
X-CSE-ConnectionGUID: bs4fW5LVTB+nUM2roiI/HQ==
X-CSE-MsgGUID: d+htnTMzQrWZnkJuhlH7Vg==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="10644611"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10644611"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:40 -0700
X-CSE-ConnectionGUID: RBHs00knRIKbY46C9IeFZA==
X-CSE-MsgGUID: LdukXLsTSviyBCcNUURmqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27875582"
Received: from azaki-mobl.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.32.146])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 23:06:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/3] drm/i915/psr: PSR2_CTL[Block Count Number] no needed for
 LunarLake
Date: Fri,  3 May 2024 09:06:21 +0300
Message-Id: <20240503060621.987820-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240503060621.987820-1-jouni.hogander@intel.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
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

PSR2_CTL[Block Count Number] is not used by LunarLake do not configure it.

Bspec: 69885

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4d67a384e149..5ebfe4244d51 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -869,7 +869,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 
 	val |= intel_psr2_get_tp_time(intel_dp);
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12 && DISPLAY_VER(dev_priv) < 20) {
 		if (psr2_block_count(intel_dp) > 2)
 			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
 		else
-- 
2.34.1

