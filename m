Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2EE8CAA4A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85E810E760;
	Tue, 21 May 2024 08:47:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GkNNOBUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1093710E776
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281242; x=1747817242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+szKxTSOgEIDRM/429ev80DKLMC3HChQWpJUPkuTqXg=;
 b=GkNNOBUr2f/xs7W/Te0wWwf1h2RF4NtIQ9rvCiLNPVcbVzxN1rC8x4G/
 dbWQAOiaz3XAHy+bO+Eou5HBEtQ3dyxzjjRvASb4wKT/XojbMkUyyYlf1
 aWSU+UgurBUwwDdLqgVXFIuSzi7fizlJ0+zsk06+V+Y6YFamnuOUkZ8zv
 FYby0+g1UIMXbLPPKnVIjsUcPZ9dpaRduWYsRSCrpovr6+Uezcc8ZkTAz
 0pHdg9+G+lKfX7Safc9eU3x5AH9JYNEq2X/4+T/jHAbpaqxIZbx82Qzx+
 2AD3FysyiUdQa2OpdsYrcMqNE6c564SOCJw3qOD7h/iIcDHk9iMl4OgUx A==;
X-CSE-ConnectionGUID: 7BVgmvXRQBu1s8EO7HvXDA==
X-CSE-MsgGUID: VgBuJp0qRg2UPvjIzwlgzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297819"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297819"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:22 -0700
X-CSE-ConnectionGUID: 0277/SW/QjyCg1FSpdNnMA==
X-CSE-MsgGUID: AscDVcYKQgmIZuPEwCIA+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272528"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 08/17] drm/display: Add missing aux less alpm wake related
 bits
Date: Tue, 21 May 2024 11:46:39 +0300
Message-Id: <20240521084648.1987837-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

