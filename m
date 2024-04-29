Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D348B576D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 14:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B6810F7F4;
	Mon, 29 Apr 2024 12:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLYpPnty";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A90A10F3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 12:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714392500; x=1745928500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ulzhZRtBs1WgHHROZPxeE5+9sVY6c5DrqWLLfY76br8=;
 b=jLYpPntyNpC6VAm9QN1nDuCyGUrMzG2KK/Y2W59tzSaMgGMC/H1Cyt0w
 a5ELTYDLqCktB/+BFqi1m5h/R7qK0SSWaPLhbY99PPjI8+TzgkubpX8uY
 7jhPram/z5BLpwUGibDoH9dDgfPlE5RHnwwrxiGP5AliKG+Z4xsrzz871
 3xOkJUUHGrscNgSfmUeJhi62rJXXQWh7cxMT6EHUxdCBiTDFwNSSpw9cM
 tMB1eaorc6jlBnh1rtHoIl9UXIGv2xRaxN02eJKNz/qlbT5zBQGIgXOgv
 V0w8hCzJp8gQwMAyWBVTj+vHDl0RZUOjog7JvA74a4ziD3iJrEpkp2vx6 Q==;
X-CSE-ConnectionGUID: W6P6VWXFTEK5sjiY8AiH5g==
X-CSE-MsgGUID: K08rAxypTY+/4gFQqKHV2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21455443"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21455443"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:20 -0700
X-CSE-ConnectionGUID: ilwHLyZOStWwVBLOLWRGYw==
X-CSE-MsgGUID: 0pc7EiIMSLWeUmCz68nSlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26074445"
Received: from domelchx-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.208.96])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 05:08:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 04/11] drm/panelreplay: dpcd register definition for
 panelreplay SU
Date: Mon, 29 Apr 2024 15:07:48 +0300
Message-Id: <20240429120755.3990652-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
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
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 include/drm/display/drm_dp.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 0b032faa8cf2..906949ca3cee 100644
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

