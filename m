Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955EA900580
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60ADC10EC63;
	Fri,  7 Jun 2024 13:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KCOLtkeq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC1810EC5F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768178; x=1749304178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G2J+qj76rY+K065BrL+ephQIvvjiVyMQ0xsCXFezTjM=;
 b=KCOLtkeq6GqpwEDGbA9d1Jjkpf7BFodezG3zq1fejsvVqr5mhYX+lyjj
 AkLCngj83aO3clS5jSOhztcZlTYtn/85vZ1+abzmVk8vGmMlQlHR0bIub
 lXrQ30UrB0KjIjgigOznCOjquoJ65v7vyQgtSzBsVNolDpOex5wCDRM4U
 WU3+tTbFxlB3mXMsvuT+2WKVCIMldQWeFCkaGRkBVBjHTL8qqz2bCx/5F
 xUm1QRGAUlhGqbu8cUJeR0uyZsEmxymGqqQUTIZO8Qi5oEZLyFvAszzF7
 nNu69A6uLw5oK1MPQWLuGV2VS598kq9z231qz9Wa/NgktgKP9WHk+h4f0 w==;
X-CSE-ConnectionGUID: dUKvoh/1T0SbPDmjF5O3Nw==
X-CSE-MsgGUID: XttxDxyGR0axUlrRm0kHcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331647"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331647"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:38 -0700
X-CSE-ConnectionGUID: XIVVerhXR7OYcote0jjocw==
X-CSE-MsgGUID: epfsZEPlQlOAD0hao3XC4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458958"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 05/13] drm/display: Add missing Panel Replay Enable SU Region
 ET bit
Date: Fri,  7 Jun 2024 16:49:09 +0300
Message-Id: <20240607134917.1327574-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Add missing Panel Replay Enable SU Region ET bit defined in DP2.1
specification.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 include/drm/display/drm_dp.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index f246fa03a3cb..173548c6473a 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -743,6 +743,7 @@
 # define DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN           (1 << 4)
 # define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN      (1 << 5)
 # define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
+# define DP_PANEL_REPLAY_ENABLE_SU_REGION_ET            (1 << 7) /* DP 2.1 */
 
 #define PANEL_REPLAY_CONFIG2                                     0x1b1 /* eDP 1.5 */
 # define DP_PANEL_REPLAY_SINK_REFRESH_RATE_UNLOCK_GRANTED	 (1 << 0)
-- 
2.34.1

