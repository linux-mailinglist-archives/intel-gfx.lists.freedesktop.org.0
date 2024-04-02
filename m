Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D413D894F08
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A9E10FBCA;
	Tue,  2 Apr 2024 09:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NDJ4Yxe5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B0810FBCA
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712051426; x=1743587426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fev+e7bO0ZMsV+stlPn0IVrOAi54OIfGTOFLgj+5F9A=;
 b=NDJ4Yxe50E4hOw7dFnfS8M6AGEgOFhZ2OuBDg6L/eM4L9p9FB0ZgPVo0
 qsTVeeWGCFxOKWf5hi1vj7LE4MeOsza5lH3pXk+Sib7nkUQmMGUT4aCW7
 +U58/mtSVOp1arAvuwn7YjUUJEXXdXuNWi85vwTHNYCekrjZjdVhm1GUI
 uavgRep559f2uDwSBlYM8x2W3y/hs+NSIXqT57SIH9qC4iYPLKW8VDEKU
 4ZMiKMM1pCdKISf5cl4q9PzlF5Ul7SBBzi+d1tRVWgPaA30lxTgi3FDOr
 45OydIuHwzCirCKUtyeuvEjhBSLqe7U32y4IwmvdKcCJqelBMrBNEHnLc A==;
X-CSE-ConnectionGUID: 3nstwy0RQeGumBCQjSXRWA==
X-CSE-MsgGUID: XC1/rXL+TaWjlZOXyPdJRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="7422609"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; 
   d="scan'208";a="7422609"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22693248"
Received: from sudhirj1-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.34.252])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:50:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 01/19] drm/i915/psr: Add some documentation of variables
 used in psr code
Date: Tue,  2 Apr 2024 12:49:53 +0300
Message-Id: <20240402095011.200558-2-jouni.hogander@intel.com>
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

