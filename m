Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A60738C64B7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F72B10E6AA;
	Wed, 15 May 2024 10:04:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLLeQ89x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0966F10E648
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767479; x=1747303479;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S1S0t6XScAiYr8FJi7Am7NsynYJ8UAj3k08QiFANuHo=;
 b=WLLeQ89xphCx/3sP3VppdCxQy0R6x7j0m79nrfaBKoEeglFgqtWSGADf
 PyAuGpcNKpmj+KfxOakvGkCsc8el9670XmDQqYvYfXxTe2oqFKQk+bydv
 8+l5mE4gOyDipgBkSVYFisE1JOwxsrbOr5U7dQ3ybLAPMILjpJC8BiQtJ
 W6lqZLbE5iwn8mwUScMmSeKCblWwXyJIjrj33bw9Kua/tyg0kFcZpjyAp
 c4Myx/sHf1Rkr6tbZsMNuq0FgL6zz61dPXfyKoDcuhN3IPbYFuLN2Xk4y
 0eXIS+sy7cPWSxnlD1I7oe16g860wp4z3Q1aXGWkCGgX//q45O2aGvFN4 w==;
X-CSE-ConnectionGUID: /kdCLapOTJ+F2jxvyG382g==
X-CSE-MsgGUID: Szxh9iF4SCm+TFoMkZ46Ww==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11937030"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11937030"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:39 -0700
X-CSE-ConnectionGUID: 4u1j93lxR8WM3wc6snd93Q==
X-CSE-MsgGUID: kBVwD1IBSAmz2OJ/YZPurQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584264"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 8/8] drm/i915/psr: Write also AUX Less Wake lines into ALPM_CTL
Date: Wed, 15 May 2024 13:04:11 +0300
Message-Id: <20240515100411.691203-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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

Currently AUX Less Wake lines are not written into ALPM_CTL. Fix this.

Fixes: 1ccbf135862b ("drm/i915/psr: Enable ALPM on source side for eDP Panel replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e8bed1d60fa7..2e1c3ba68544 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1860,7 +1860,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
 		alpm_ctl = ALPM_CTL_ALPM_ENABLE |
 			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
+			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
+			ALPM_CTL_AUX_LESS_WAKE_TIME(psr->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(dev_priv,
 			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
-- 
2.34.1

