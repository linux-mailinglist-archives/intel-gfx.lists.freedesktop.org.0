Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44A28FC8FD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EB910E4C5;
	Wed,  5 Jun 2024 10:26:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="noo72EJl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C8510E3D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583189; x=1749119189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFo7kpJXGfTqa8iWiqRY084+wTPdTmXYf1osizthiFQ=;
 b=noo72EJl6twiITVwneV9mUS0oQd4zIHgDgbJHHLmUmu7YNA+tq+k6sZv
 Fq2/FzkkGG0P0Yfhif/FNgn3akLO5oCxuJFftGakH9u9/lxoLohWSenlL
 xx94FbADe+d5mb5tc7nkMyYXZVTno2zsL1xyoZfsLmXehjc5h83X90oIe
 LZ+/JYkPfwY2X+EqNF/0WvFiMh6BQF6ehPgCF2+DWFvGiwuTeor1fBirk
 5CpzXLXuJAXZr4Q00IF0rR/XBRDuF2fgiM82cf6MeeI5Zj2grDl7Npvet
 wpOkX5ds2pEDMutOSxB4f7ZE3K62fh5fUlIHLp+8+IpjHsqqtLYcNVFVp A==;
X-CSE-ConnectionGUID: q2iKSj6jQfKcUKBQTN29QA==
X-CSE-MsgGUID: aGBuzTvpTh6Wt8X07i51lA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136093"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136093"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:29 -0700
X-CSE-ConnectionGUID: Yz2WqI5fQH2whOwMnWwDjg==
X-CSE-MsgGUID: OSMi07UfTImEsgCwAfF7PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686111"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 05/26] drm/display: Add missing Panel Replay Enable SU
 Region ET bit
Date: Wed,  5 Jun 2024 13:25:32 +0300
Message-Id: <20240605102553.187309-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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

