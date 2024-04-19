Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F27A8AAE2A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10AB910FE7F;
	Fri, 19 Apr 2024 12:12:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LC17qCdK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9DC610FE7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528722; x=1745064722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ulzhZRtBs1WgHHROZPxeE5+9sVY6c5DrqWLLfY76br8=;
 b=LC17qCdKp8PFPRx7mHmUmpT/iJKD4MCMrRZfndiCoCg4091SOSdHR4nx
 jTFyfz2hTvppDk23cv/KZCgfYAylm9wCv//IreSIvfSXI/y/jXqcX5Xjz
 SJRn7nOebbsdYNC3APmVRiL3xGtCgP7HTlUFBGw7hUX0azsvxONPPS2gu
 K8ucdJU9Y0Moph+S870wEmT7b+wjQsQA8wee30eMecmI0oQ9jQ9muqAm1
 /i8BJETWIF1UDKaGdB+4BWMEySCd3W7TQeAnTVxJR+8vmc4sfUBmmlfzi
 AixIHSRCj8vV2vU+Az46JeNiEgS2s0+uhWOCIuig9jGb03cwCwIqf8nGD Q==;
X-CSE-ConnectionGUID: OTRBrE5TTYeu3j3okN4T5g==
X-CSE-MsgGUID: EbyaC5meTtmtNah8teHrBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735921"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735921"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:02 -0700
X-CSE-ConnectionGUID: UtojfwaaS/yegeO5Eyp7kA==
X-CSE-MsgGUID: HUpt6fdnRJSk6hVk6kZ6MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149501"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:00 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 04/11] drm/panelreplay: dpcd register definition for
 panelreplay SU
Date: Fri, 19 Apr 2024 15:11:34 +0300
Message-Id: <20240419121141.2665945-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
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

