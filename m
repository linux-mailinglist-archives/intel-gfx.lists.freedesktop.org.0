Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D688C7333
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7234A10EC37;
	Thu, 16 May 2024 08:50:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L9qV4+13";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966AE10EC32
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849432; x=1747385432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UDIe7moKrGDhKUcP/dWs+ktnFiFMDfCbQaTGWMgZjMk=;
 b=L9qV4+132WJNa49KVLWebjCN/sCzSdkWYlLjsYZ/8ZY3BsdNwNs+ZbSn
 Pwfnc970fBTguaS3k5nJGR9A+bJRUvyftsPqaaTkEwpf7UJuGiMK5Pn7u
 87JDySEwK6JXF7RQ/MFlkP+T7L1+1CuJ9PXP1M0DqWRhXaVDzecDLxVZN
 0/JwWvoV5M5bPrnHVOr3NPq04lJ/6L/eTlrxvqG3vFlnU0ZpsQaqTHG0o
 SZJs1/EnC2CsdHG/X/ctjTpYpV+CCsRt91p+ysf72nGVJEZARnaYziWfB
 WOcF0KXIXkU4hPa32pPqJErTk0+034O8+MSVe31YI+apXHOW+S+R5MsSR Q==;
X-CSE-ConnectionGUID: Nw7Zo0J9TmCt2ZzwlXVuTA==
X-CSE-MsgGUID: 5gdOgDsbRXqTtXXL6HUHVg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756094"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756094"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:31 -0700
X-CSE-ConnectionGUID: RMhZ7/KNT0Sxfy7y7zrUSw==
X-CSE-MsgGUID: Ta5MK0iqSHGCXF1sDmnWpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398217"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 14/17] drm/i915/psr: Check Early Transport for Panel Replay as
 well
Date: Thu, 16 May 2024 11:49:54 +0300
Message-Id: <20240516084957.1557028-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4bbb0c05054f..a84a7208e148 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1601,9 +1601,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, false))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1668,6 +1665,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
+		crtc_state->enable_psr2_su_region_et = true;
+
 	return true;
 
 unsupported:
-- 
2.34.1

