Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2F28969D4
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892101128F5;
	Wed,  3 Apr 2024 09:00:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ix69utIu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6BE81128F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134847; x=1743670847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0nRGA03bv87gZCw42I4nKVS8uXtMjGwvJ1fZxGxNMU=;
 b=Ix69utIuLOvXWZQKVJO1h+a5Bn88/UDv/ou4weLbiATDynMe1b1yNI9/
 z8E10H7hcy04aj22zAKjNsjp2I8BaCBy/wJZUQKYY0I9434eb2gOhpPgc
 nhWr7tfXOEvOwJik5Hve20pnmA7wANjldTsiYIR+GPvf91g5wYLtk0LU9
 RDLqAvWUS58VGZzyzWHY7eEzEbtzu9k1zAUQn5nY6jN4aC2qgzSPitk9Z
 WXpzMkE6Ft0UjMLTn650RohaFqDlVK5E42zgB9vHE007PDArvEkzHFCVk
 mR5Rtbg228F23ixlbLN7aP9RZjKRiAhIQdnuOkb3/JPccX/fcWIF6RwhZ Q==;
X-CSE-ConnectionGUID: orbQgJopTzuoMeDdjMKV2w==
X-CSE-MsgGUID: bcFa+H9wR7GWJx6z72FhTQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472504"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472504"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:44 -0700
X-CSE-ConnectionGUID: 7bht8WaRTs+gYZOPPOA7Jw==
X-CSE-MsgGUID: kxcgq78lS2uutMA85hhjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18453200"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 13/19] drm/i915/psr: Detect panel replay selective update
 support
Date: Wed,  3 Apr 2024 12:00:07 +0300
Message-Id: <20240403090013.54296-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
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
index 63097b10bc4d..fac568c312be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1758,6 +1758,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool sink_panel_replay_su_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f1b917041192..5d896c338b61 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5730,6 +5730,7 @@ intel_dp_detect(struct drm_connector *connector,
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
+		intel_dp->psr.sink_panel_replay_su_support = false;
 
 		intel_dp_mst_disconnect(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f4c014eb28eb..fdc6d699d9c2 100644
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

