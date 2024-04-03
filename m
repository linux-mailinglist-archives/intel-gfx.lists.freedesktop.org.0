Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F88F8969C5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0190B1128E4;
	Wed,  3 Apr 2024 09:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GauQxLgV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA311128E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 09:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712134829; x=1743670829;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fev+e7bO0ZMsV+stlPn0IVrOAi54OIfGTOFLgj+5F9A=;
 b=GauQxLgVdU5wECeRABkpPRhEMZBmM3zWivBQE9+v1dc1+Xj0WTtpkxcr
 sRwHD64ykAZJ+1CWRmlTVTZXby+PvWALsUWnuB4ckVpUQZo5TUiwB1FZu
 NMGg74KJ3xT7rA2rzAwkbSxTBZhkjmCiGiYMLSxxxS/EkeSFVTb2AuMpG
 AvSvM70vl+6+/dSfJcChILd1fWgU1zxXLrdu/Xt4eubk4IFWAkS4IgiWS
 pnjUVHHsAKzNXAt8IB4yA7MxUrTNwRUS1oXDmw7j3oe/E4oXHVufAZ+Od
 J6eLICTTptDLKJFQamvtaSlUXN8oIpRHq+YUjYoyXQSFmB8O4uFtdd+YC Q==;
X-CSE-ConnectionGUID: nfNOgTdwTR+4imuYrAfehA==
X-CSE-MsgGUID: /EfH7QxYQR+gna7/s8L6eQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7472370"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7472370"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:27 -0700
X-CSE-ConnectionGUID: 0uQz//AeQUenBbKn1zeutQ==
X-CSE-MsgGUID: hBtT/kdfSfmJZjPVgIitzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18452911"
Received: from esavax-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.35.175])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 02:00:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 01/19] drm/i915/psr: Add some documentation of variables
 used in psr code
Date: Wed,  3 Apr 2024 11:59:55 +0300
Message-Id: <20240403090013.54296-2-jouni.hogander@intel.com>
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

We are adding more boolean variable into intel_psr and intel_crtc_state
structs. Add some documentation about these for sake of clarity.

v2: Modify has_psr +  has_panel_replay to mean panel replay

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index eef62983e9db..45d13e042ade 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -171,6 +171,22 @@
  *
  * The rest of the bits are more self-explanatory and/or
  * irrelevant for normal operation.
+ *
+ * Description of intel_crtc_state variables. has_psr, has_panel_replay and
+ * has_sel_update:
+ *
+ *  has_psr (alone):					PSR1
+ *  has_psr + has_sel_update:				PSR2
+ *  has_psr + has_panel_replay:				Panel Replay
+ *  has_psr + has_panel_replay + has_sel_update:	Panel Replay Selective Update
+ *
+ * Description of some intel_psr varibles. enabled, panel_replay_enabled,
+ * sel_update_enabled
+ *
+ *  enabled (alone):						PSR1
+ *  enabled + sel_update_enabled:				PSR2
+ *  enabled + panel_replay_enabled:				Panel Replay
+ *  enabled + panel_replay_enabled + sel_update_enabled:	Panel Replay SU
  */
 
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
-- 
2.34.1

