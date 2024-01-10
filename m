Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A735E829B01
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18D2010E792;
	Wed, 10 Jan 2024 13:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987AB10E79E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892425; x=1736428425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bi00YTP/YDnin5cwFEWEK52xuDg4Q8dVyRBr2Z8awG8=;
 b=i5hzed5UjymICOAztQgvH0YvRtSAVDLE+XL8BstkmWPSIysG/iKMEr7M
 zDfq4s3u5AQrMfmz9EW0bLq+94D26R6y7uwpujABqAhX7cV8V6jdIZJiV
 67483PQszx9Hp9Q1zeNBmtsqTmmMhNOcfiepEuQUOIizfcXiNNskil133
 FyHvImYdjKvS0utcpujU9/5X0YMqPJFU9hxh6jzjsjGJ++zYELFU7hHfE
 00UOrkoPRMHODBs6xvl2Gc3Xu71XTui3WO/FYGdprlVQ8jAuemz/kIsTf
 Z/FF1W2Jor583L6KT+FtWkFF0wF6+pgMX84whHG19BfAnVA16897ghk7Z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914047"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914047"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347137"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347137"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:44 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 11/13] drm/panelreplay: dpcd register definition for
 panelreplay SU
Date: Wed, 10 Jan 2024 15:13:02 +0200
Message-Id: <20240110131304.2470006-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Add definitions for panel replay selective update

v2: Remove unnecessary Cc from commit message

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/display/drm_dp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 281afff6ee4e..4ebf79948c7f 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -548,6 +548,12 @@
 # define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
 # define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
 
+#define DP_PANEL_PANEL_REPLAY_CAPABILITY		0xb1
+# define DP_PANEL_PANEL_REPLAY_SU_GRANULARITY_REQUIRED	(1 << 5)
+
+#define DP_PANEL_PANEL_REPLAY_X_GRANULARITY		0xb2
+#define DP_PANEL_PANEL_REPLAY_Y_GRANULARITY		0xb4
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
-- 
2.34.1

