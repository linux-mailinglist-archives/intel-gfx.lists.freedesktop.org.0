Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE2D7866A3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A188910E487;
	Thu, 24 Aug 2023 04:20:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB56110E0E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850839; x=1724386839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BWFrCIQjcJbTTkdka9BHhYrGhXAymZAJwZvhesycZ3k=;
 b=PJwEwBclbpBItxeG6tESAR8HEC0xkknCFWKn9rsm6UPXnfMkdoWkAppz
 44ePLKekldfHLoVYubu6jsuF5Y2U1jOhcHb+hu1a4XBKQOvZoY5nMvLwB
 TfYxePRRQ29DJ8PTQ38ns6RNQWIrOTypq+LTqDeLM6o2wi1IAQgxKfvPW
 /d3cRe01UOVz5L0nx0pFOLQ4wNRXu0S9sF0skZzM4BOyfynSzzLqvmuf5
 5j7cQfJ20rltPeVkGG7IS+F9y3PigFsxOiPrwFZE6ZzK1idgxVjbpKJTZ
 oOtSg1moi4KlZ7pviCgvjnBGBND1TVbPHq56zvFJ7m3563uvsqwDAbydM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750949"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750949"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441455"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441455"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:38 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:47 +0530
Message-Id: <20230824040952.186407-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230824040952.186407-1-animesh.manna@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/6] drm/panelreplay: dpcd register
 definition for panelreplay
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

DPCD register definition added to check and enable panel replay
capability of the sink.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 include/drm/display/drm_dp.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index e69cece404b3..a38dc5f1731e 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -543,6 +543,10 @@
 /* DFP Capability Extension */
 #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
 
+#define DP_PANEL_REPLAY_CAP                 0x0b0
+# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
+# define DP_PANEL_REPLAY_SU_SUPPORT         (1 << 1)
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
@@ -716,6 +720,13 @@
 #define DP_BRANCH_DEVICE_CTRL		    0x1a1
 # define DP_BRANCH_DEVICE_IRQ_HPD	    (1 << 0)
 
+#define PANEL_REPLAY_CONFIG                             0x1b0
+# define DP_PANEL_REPLAY_ENABLE                         (1 << 0)
+# define DP_PANEL_REPLAY_UNRECOVERABLE_ERROR            (1 << 3)
+# define DP_PANEL_REPLAY_RFB_STORAGE_ERROR              (1 << 4)
+# define DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR         (1 << 5)
+# define DP_PANEL_REPLAY_SU_ENABLE                      (1 << 6)
+
 #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
 #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
 #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
-- 
2.29.0

