Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F483276D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561DC10E9A0;
	Fri, 19 Jan 2024 10:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DF410E9AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659050; x=1737195050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1zWcl+PUSD5hBf9116Bo+UtG1rgnBNoMIfpus88v+NM=;
 b=Gsl6gKJPVM5owm6Jf2E26IBkAcsjwEjj3RB0ZpZxeDqr5dHZQMk7VMcx
 Lp91Ce4STuEyeE+08bDr0iudghWjkrsKhm7Kr2HL5ylyix2Kj6E4tA1zv
 Gv0Pzunj0ypXu/lXoiWRf2iWG4zvXRr0fU4fR7Eir9eSWAVzP83unhrQi
 lMlZLb2csJDv6RjpD3QgBEaLzki+HXczUYHCmfT+mZ9n0Fnn5zljjqyOw
 tg/f+hu/QIKe1GzO4E4/CphJBvUZzRTnqEjQhfj48NeIGaDVvWIywt5Lm
 dBcSjIRJW6FxeYbiL04Hj8GVHM7VZ0XzEmVQMtREsGySt6Y9wKzWur8Yr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070720"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="14070720"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="563190"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:49 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 01/21] drm/i915/psr: Add some documentation of variables
 used in psr code
Date: Fri, 19 Jan 2024 12:10:04 +0200
Message-Id: <20240119101024.1060812-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 696d5d32ca9d..b9d2f6ceb568 100644
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

