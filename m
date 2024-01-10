Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E7829AFD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E329810E602;
	Wed, 10 Jan 2024 13:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5EA210E749
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892419; x=1736428419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yEdZRZ+Nv+1DJbztiZiOdLfgyCkjd12jCGSyc3wuY0Y=;
 b=OH/uNqr0+Mx8ztC5fFeV4GMOAyPzHcxOI5vzQm6EYs4u66d1bMBuk2M5
 RLGpxML/8DKqX+Ckyx/Wj9IUvI4CpuFOxt54PfnMobsZIjwcc/ERHfoM3
 dnMjksjwRG3S2VEJHOtQDqTPpRqHZhKsAQRmmGks3m909EAKqrx1Uj/q7
 6/m9hHg8Bn8Pn+NKWydJrbgKpj4XfihVM2d5X44eE6rVYVGARvOfTGd3J
 w1w0Z5Arvupxzqt4MHDn26XU3ct3ZjIWafprJWYdCGm0p5NydnEc5oGIV
 JtJqtf+ssq+J5SapvhllXvKuKc5Awk3Jb5ENAmIFsN0RA9LPu8ir+YHKW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914029"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914029"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347095"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347095"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 07/13] drm/i915/psr: Add some documentation of variables
 used in psr code
Date: Wed, 10 Jan 2024 15:12:58 +0200
Message-Id: <20240110131304.2470006-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cde95cc9925a..be8b1b7a8025 100644
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
+ *  has_psr (alone):			PSR1
+ *  has_psr + has_sel_update:		PSR2
+ *  has_panel_replay:			Panel Replay
+ *  has_panel_replay + has_sel_update:	Panel Replay Selective Update
+ *
+ * Description of some intel_psr enabled, panel_replay_enabled,
+ * sel_update_enabled
+ *
+ *  enabled (alone):						PSR1
+ *  enabled + sel_update_enabled:				PSR2
+ *  enabled + panel_replay_enabled:				Panel Replay
+ *  enabled + panel_replay_enabled + sel_update_enabled:	Panel Replay SU
  */
 
 bool intel_encoder_can_psr(struct intel_encoder *encoder)
-- 
2.34.1

