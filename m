Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E083C899BF4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6BE113B46;
	Fri,  5 Apr 2024 11:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dwZlhK1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786C4113B46
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317002; x=1743853002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fev+e7bO0ZMsV+stlPn0IVrOAi54OIfGTOFLgj+5F9A=;
 b=dwZlhK1OUzeZqyzlU4QBb1JK7RT+UTRwMH3X4Sq4lRdx4aRdETqfed/E
 Jcoqn7iqsmzldNdDv7Fvg0fAkHDC1cyUaUKrOIHnZ7v7Db6eyWospWL/L
 MlNylxbPh3phFVOgNzApzJCt6AYYY5kn1monbeQhe4L/Pd4p4FMt6S1oJ
 cAy8L8M91cL+wjcsskUC8+UnpvoJL+YwXm5rUCT6oFkcovSgqA3MZv9Bq
 FRRRs8q47/fv10E2ymZQmQi/sY8qDZzgHv4CQxsRdXQGNZu0iVH2uhlFv
 KQrIb80mTmK+g8vf3+fbZjuBYbB5rkmInox19O8RfV0vsttdooe9OJeZp w==;
X-CSE-ConnectionGUID: UfBDvCR2TP6F6hjU+7Wc+w==
X-CSE-MsgGUID: /dto2L+IRl+4zmVB5mJZjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116534"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116534"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:42 -0700
X-CSE-ConnectionGUID: LSfeKPAyTAmJ/x0qSNu8pA==
X-CSE-MsgGUID: Id9x5zV9SQ209LeRbYMrZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858739"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/8] drm/i915/psr: Add some documentation of variables used in
 psr code
Date: Fri,  5 Apr 2024 14:35:55 +0300
Message-Id: <20240405113602.992714-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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

