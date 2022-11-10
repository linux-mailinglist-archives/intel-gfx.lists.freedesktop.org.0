Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 368D0624521
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 16:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C141510E863;
	Thu, 10 Nov 2022 15:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892FE10E85A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 15:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668092885; x=1699628885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jtyz+Y4HihmyN+N+GELCC4GeRdywp51ijNVK0JMy+rg=;
 b=UJNTRbhcCge1dgRJa3CvMgDDNX8f3eGEzRp0H6WsnEyUfoc59MoJRtbl
 gaT1NKnc4JBohzszqLybKp2YxtdwFSkHmfV4pKw+kAgkt8DMJtqTGk/OQ
 Xb9Ql22m2yUcGUnHfuw4IurdoZu3o1YYuzir0829H+kXaNSzMGSpbqxLa
 mCAfvEjzEgurUQYhuTQVk/wOuDVtJuRzPG12hPmDsf4M1KlKCEv3OVpEn
 ZEh9UsE0TmAnbsDKhPMYWGUyAuEMqAuGBf8/BP3tV0mcC+0OQ8H9wG7jF
 QWwJ10M9heAD7Ux/C1AZyGbXUSFQ4XbDEGtx8NENyCvZ3LPelw8nO6z3g Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397624598"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397624598"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 07:08:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="668436509"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="668436509"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2022 07:08:03 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 20:33:04 +0530
Message-Id: <20221110150307.3366-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20221110150307.3366-1-animesh.manna@intel.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
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
index e934aab357be..40995f8c2c2f 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -537,6 +537,10 @@
 /* DFP Capability Extension */
 #define DP_DFP_CAPABILITY_EXTENSION_SUPPORT	0x0a3	/* 2.0 */
 
+#define DP_PANEL_REPLAY_CAP                 0x0b0
+# define DP_PANEL_REPLAY_SUPPORT            (1 << 0)
+# define DP_PR_SELECTIVE_UPDATE_SUPPORT     (1 << 1)
+
 /* Link Configuration */
 #define	DP_LINK_BW_SET		            0x100
 # define DP_LINK_RATE_TABLE		    0x00    /* eDP 1.4 */
@@ -706,6 +710,13 @@
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

