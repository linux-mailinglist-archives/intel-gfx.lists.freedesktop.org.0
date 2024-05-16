Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A8D8C732B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CB810EC1B;
	Thu, 16 May 2024 08:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hp+GRayp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDEC610E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849423; x=1747385423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+szKxTSOgEIDRM/429ev80DKLMC3HChQWpJUPkuTqXg=;
 b=hp+GRaypRd5jy10bSjbOoZF7mFLFGVmnlKJvyyPHWeWjmrGa0NhpYggT
 F8TWzb7C+KUY/xe6WhqfxtL8Xt7NLwOCA3ahOEbKcN2P7gGkEnXwcgy3I
 tgWhQG/+a5JNZOyddYjScJ31FiHd8H16W83NGQ/DhUPOUC4DjJgCQU5Zw
 U8xjEBg2pwzz81dEp2UyPjY9fnZ5/RZPyOMmyq37ADbbxTx9H9YXOSq2+
 hgVhzpjl/3A8Zg6NrZVUXrWbC3mdTSuQpMi7ocwYr2bbKgvKz82Kgc8f6
 Ch5MmBiXj6XoeTjz38FA/4cD3f2nX5aUq1140heBmIWVQYJoB7w7CazeA g==;
X-CSE-ConnectionGUID: cYQBhXB/Td2DIhyIamvftA==
X-CSE-MsgGUID: g+Q0WNcJQmq0OOvsoytECQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756067"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756067"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:23 -0700
X-CSE-ConnectionGUID: VAnzcqojT66kn/Y7Nu1mhw==
X-CSE-MsgGUID: MewZhKUGT2aUIQIyWbso3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398157"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 08/17] drm/display: Add missing aux less alpm wake related bits
Date: Thu, 16 May 2024 11:49:48 +0300
Message-Id: <20240516084957.1557028-9-jouni.hogander@intel.com>
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

eDP1.5 adds some more bits into DP_RECEIVER_ALPM_CAP and
DP_RECEIVER_ALPM_CONFIG registers. Add definitions for these.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/display/drm_dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 79bde372b152..f3ce8c483659 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -232,6 +232,8 @@
 
 #define DP_RECEIVER_ALPM_CAP		    0x02e   /* eDP 1.4 */
 # define DP_ALPM_CAP			    (1 << 0)
+# define DP_ALPM_PM_STATE_2A_SUPPORT	    (1 << 1) /* eDP 1.5 */
+# define DP_ALPM_AUX_LESS_CAP		    (1 << 2) /* eDP 1.5 */
 
 #define DP_SINK_DEVICE_AUX_FRAME_SYNC_CAP   0x02f   /* eDP 1.4 */
 # define DP_AUX_FRAME_SYNC_CAP		    (1 << 0)
@@ -685,6 +687,7 @@
 #define DP_RECEIVER_ALPM_CONFIG		    0x116   /* eDP 1.4 */
 # define DP_ALPM_ENABLE			    (1 << 0)
 # define DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE  (1 << 1)
+# define DP_ALPM_MODE_AUX_LESS		    (1 << 2) /* eDP 1.5 */
 
 #define DP_SINK_DEVICE_AUX_FRAME_SYNC_CONF  0x117   /* eDP 1.4 */
 # define DP_AUX_FRAME_SYNC_ENABLE	    (1 << 0)
-- 
2.34.1

