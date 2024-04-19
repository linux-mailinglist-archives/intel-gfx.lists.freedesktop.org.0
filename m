Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7498AAE29
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF9F10FE81;
	Fri, 19 Apr 2024 12:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJAD+v1k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3BA10FE7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528723; x=1745064723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NZaTNeJcXOkhnAwaHLtOdLSVnG7Bq4AkouN775+s504=;
 b=hJAD+v1kuTM2nh8EkMaMyCsaMDQRjMMi6riOQ0aR0HaHfiMaU9repX0h
 5YzIJNGGLdtLDQnCNa8/QPzcmYWCe8E+fDzkeqaRUr2PbhjpIs/OmuLiC
 a4kQdzm8iFksajTQjSsRoM/GlU82TNj24xJ06IKDai/T3WIHBxYhoxKGx
 eJjEYdbKUrCWmdn9skB71gtDoE05fDpex69KChA94FNnJ39SdS52uP9js
 UHY1ZbSDTeJHPQa3y/ZcHbazPlpo4TOYV4wgtwBeqA2qQnIk9ACxw5uMS
 LTcKeOdKcdwewSPrej8KsWCXEsI6QNfzgIVB9Of7BrcQvhHhlool3FBDT w==;
X-CSE-ConnectionGUID: MpCuF4rqSqC/Y+E0OLgR0Q==
X-CSE-MsgGUID: Lkli5+4HT0qAjSyzXLEzfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19735927"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19735927"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:03 -0700
X-CSE-ConnectionGUID: Bfx57rSFST+Q2N8UmH49UQ==
X-CSE-MsgGUID: bZSxhq5GSnKSrnVD9F8grA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28149513"
Received: from mkuznet1-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.63.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:12:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 05/11] drm/i915/psr: Detect panel replay selective update
 support
Date: Fri, 19 Apr 2024 15:11:35 +0300
Message-Id: <20240419121141.2665945-6-jouni.hogander@intel.com>
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

Add new boolean to store panel replay selective update support of sink into
intel_psr struct.  Detect panel replay selective update support and store
it into this new boolean.

v3: Clear sink_panel_replay_su_support in intel_dp_detect
v2: Merge adding new boolean into this patch

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 10 ++++++++--
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 150e6c8e0320..a693728f8344 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1719,6 +1719,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool sink_panel_replay_su_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3dd5e6238ca2..7e97a92509d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5862,6 +5862,7 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
+		intel_dp->psr.sink_panel_replay_su_support = false;
 
 		intel_dp_mst_disconnect(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index af18728460c9..b94f8e33ed1f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -520,9 +520,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 		return;
 	}
 
-	drm_dbg_kms(&i915->drm,
-		    "Panel replay is supported by panel\n");
 	intel_dp->psr.sink_panel_replay_support = true;
+
+	if (pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+		intel_dp->psr.sink_panel_replay_su_support = true;
+
+	drm_dbg_kms(&i915->drm,
+		    "Panel replay %sis supported by panel\n",
+		    intel_dp->psr.sink_panel_replay_su_support ?
+		    "selective_update " : "");
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
-- 
2.34.1

