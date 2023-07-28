Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AFE766DAB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FA610E20D;
	Fri, 28 Jul 2023 12:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11FE010E203
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690548982; x=1722084982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z5FYXb26zisytD8XHdVF42nRd7YZjoz76b8QVxRbrKs=;
 b=Lh0yJjY1gz9btxOAmM6PbCBgWXelkBV/toG/0lvbJOkAphsM/hjYjk4u
 fOp1Cl8TB1U5oIlGjGgjrjI6OnDdupL9QEfaArhZT+ivLfOzn0UZTv8ve
 Ag4a9KqFKR2hvhil2v4IOc181IbT9vEP3yZfjsuT5ctlQuW12kWYOH9jc
 wp6GqlNJpk+oUwV8sjf1NDDwDPjRb6b2iRXRbNsPiaz1chQnIQAArkP2O
 Jll0D3cAr15lx9uZlcccPCEbagnzrHjj3SOC2gnA31PqUs6VQ0EGMmZ9D
 +Jq5TQqIQS/txs1TJpNNrDRkvvJlkOHahlnhAtd9On0s9G/NKKMiSQAZa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612276"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612276"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473063"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473063"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:20 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:04 +0530
Message-Id: <20230728124609.2911830-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/panelreplay: dpcd register
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
index 02f2ac4dd2df..c48696266d23 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -543,6 +543,10 @@
 /* DFP Capability Extension */
 #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
 
+#define DP_PANEL_REPLAY_CAP                 0x0b0
+# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
+# define DP_PR_SELECTIVE_UPDATE_SUPPORT     (1 << 1)
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
@@ -716,6 +720,13 @@
 #define DP_BRANCH_DEVICE_CTRL		    0x1a1
 # define DP_BRANCH_DEVICE_IRQ_HPD	    (1 << 0)
 
+#define PANEL_REPLAY_CONFIG                 0x1b0
+# define DP_PANEL_REPLAY_ENABLE             (1 << 0)
+# define DP_PR_UNRECOVERABLE_ERROR          (1 << 3)
+# define DP_PR_RFB_STORAGE_ERROR            (1 << 4)
+# define DP_PR_ACTIVE_FRAME_CRC_ERROR       (1 << 5)
+# define DP_PR_SELECTIVE_UPDATE_ENABLE      (1 << 6)
+
 #define DP_PAYLOAD_ALLOCATE_SET		    0x1c0
 #define DP_PAYLOAD_ALLOCATE_START_TIME_SLOT 0x1c1
 #define DP_PAYLOAD_ALLOCATE_TIME_SLOT_COUNT 0x1c2
-- 
2.29.0

