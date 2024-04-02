Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4222894F17
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF1110FBDC;
	Tue,  2 Apr 2024 09:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWhhcb0z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776A510FBDC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051447; x=1743587447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0nRGA03bv87gZCw42I4nKVS8uXtMjGwvJ1fZxGxNMU=;
 b=CWhhcb0zB5AlObpX09JjN23fUBKPA7daatYfk8Eg5zTbSYwyDRv2Lia2
 NYfQERp09KCnrSAW7pnPiDoPPcP4fIRcfJhpjHaRUH+/za5M+LIpB49FH
 1jGJaVb1xray5kQCIs5D1M5tMdFbbPmNSu4Ec99/Y8Dc4JpNgkJ3FjlAa
 Y+EtWuxAr5oeP/iJbWP4RNoCf+KFJf4Umm9n9+6gRPsoJo6b4HRb0Ca4f
 slzrrdlbiLZXsIPq5EspTP2U2v54L3YjOIQsSXB/ucqpV4fQq3dk4xiZ6
 6XYq4a+fFEMJGn0++pBVGrRL/ElORldE2aYE6rxYhIfdfpCoHEmjyeOkj Q==;
X-CSE-ConnectionGUID: 2q5OyhESTc68IpNISCmlwg==
X-CSE-MsgGUID: rGeK7gGTTkaoeIW859QBFw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422666"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422666"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693379"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 13/19] drm/i915/psr: Detect panel replay selective update
 support
Date: Tue,  2 Apr 2024 12:50:05 +0300
Message-Id: <20240402095011.200558-14-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
References: <20240402095011.200558-1-jouni.hogander@intel.com>
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

